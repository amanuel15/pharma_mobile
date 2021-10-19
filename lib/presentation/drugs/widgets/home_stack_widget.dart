import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/main_navigation/main_navigation_cubit.dart';
import 'package:pharma_flutter/application/drugs/search/search_bloc.dart';
import 'package:pharma_flutter/application/drugs/search/search_result/search_result_bloc.dart';
import 'package:pharma_flutter/application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/application/util/location/location_cubit.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/injection.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';

class HomeStackWidget extends StatelessWidget {
  const HomeStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: 0.8.sh,
          ),
          child: BlocBuilder<LocationCubit, LocationState>(
            builder: (context, state) {
              return state.map(
                initial: (_) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Loading the map...',
                        )
                      ],
                    ),
                  );
                },
                locationLoaded: (state) {
                  return BlocBuilder<PharmacyLocationsCubit,
                      PharmacyLocationsState>(
                    builder: (context, stateB) {
                      return GoogleMap(
                        onMapCreated: (controller) => context
                            .read<PharmacyLocationsCubit>()
                            .getPlaces(state.coords),
                        markers: stateB.markers,
                        initialCameraPosition: CameraPosition(
                          target: state.coords,
                          zoom: 15.0,
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
        FloatingSearchBarWidget(),
      ],
    );
  }
}

class FloatingSearchBarWidget extends StatelessWidget {
  const FloatingSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //FloatingSearchBarController controller = FloatingSearchBarController();

    return Container(
      constraints: BoxConstraints(maxHeight: 0.8.sh),
      child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
        //buildWhen: (p, c) => !ListEquality().equals(p.filteredSearchHistory, c.filteredSearchHistory),
        builder: (context, state) {
          return BlocBuilder<LocationCubit, LocationState>(
            builder: (context, locationState) {
              return locationState.maybeWhen(
                locationLoaded: (location) {
                  return FloatingSearchBar(
                    height: 50.h,
                    controller: state.floatingSearchBarController,
                    hint: 'Search...',
                    scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
                    transitionDuration: const Duration(milliseconds: 800),
                    transitionCurve: Curves.easeInOut,
                    physics: const BouncingScrollPhysics(),
                    axisAlignment: 0.0,
                    openAxisAlignment: 0.0,
                    width: 600,
                    debounceDelay: const Duration(
                      seconds: 2,
                    ), //! This is the debounce delay set it higher
                    onQueryChanged: (query) {
                      if (state.searches.isEmpty)
                        context.read<SearchHistoryCubit>().setTypedTerm(query);
                      else
                        BlocProvider.of<SearchHistoryCubit>(context)
                            .filterSearchTerms(filter: query);
                      if (query.length > 2)
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.search(query, location));
                    },
                    onSubmitted: (query) {
                      state.floatingSearchBarController.hide();
                      FocusScope.of(context).unfocus();
                      context.read<MainNavigationCubit>().setIndex(1);
                      context
                          .read<SearchResultBloc>()
                          .add(SearchResultEvent.searchDrugs(
                            query,
                            location,
                            state.filterBy,
                          ));
                      if (query.isNotEmpty)
                        BlocProvider.of<SearchHistoryCubit>(context)
                            .addSearchTerm(query);
                      // context.read<SearchBloc>().add(SearchEvent.search(query));
                    },
                    transition: CircularFloatingSearchBarTransition(),
                    actions: [
                      FloatingSearchBarAction(
                        showIfOpened: false,
                        child: CircularButton(
                          icon: const Icon(Icons.filter_alt),
                          onPressed: () async {
                            String? filter = await showModalBottomSheet(
                              context: context,
                              builder: (context) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 40.0),
                                      Text(
                                        "Search by",
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Filter",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.search,
                                            color: Colors.deepOrange,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8.h),
                                      //Now we will create a widget because we will use it many time
                                      _buildCategory(
                                        context: context,
                                        category: 'Location',
                                        iconData: Icons.location_pin,
                                        color: Colors.blue,
                                      ),
                                      _buildCategory(
                                        context: context,
                                        category: 'Price',
                                        iconData: Icons.price_change,
                                        color: Colors.deepOrange,
                                      ),
                                      // 6 Categories
                                      SizedBox(height: 40.0),
                                    ],
                                  ),
                                ),
                              ),
                            );
                            if (filter != null && filter.isNotEmpty) {
                              context
                                  .read<SearchHistoryCubit>()
                                  .setFilter('price');
                            }
                          },
                        ),
                      ),
                      FloatingSearchBarAction.searchToClear(),
                    ],
                    onFocusChanged: (isFocused) {
                      if (!isFocused)
                        context
                            .read<SearchBloc>()
                            .add(const SearchEvent.clearSearch());
                    },
                    builder: (context, transition) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Material(
                          color: Colors.white,
                          elevation: 4.0,
                          child: Column(
                            children: [
                              Builder(
                                builder: (context) {
                                  if (state.filteredSearchHistory.isEmpty &&
                                      state.floatingSearchBarController.query
                                          .isEmpty) {
                                    return Container(
                                      height: 56.h,
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Start searching...',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    );
                                  } else if (state
                                      .filteredSearchHistory.isEmpty) {
                                    return ListTile(
                                      title: Text(
                                        state.typedTerm,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      leading: const Icon(Icons.search),
                                      onTap: () {
                                        state.floatingSearchBarController
                                            .close();
                                        FocusScope.of(context).unfocus();
                                        context
                                            .read<MainNavigationCubit>()
                                            .setIndex(1);
                                        context.read<SearchResultBloc>().add(
                                            SearchResultEvent.searchDrugs(
                                                state.typedTerm,
                                                location,
                                                state.filterBy));
                                        context
                                            .read<SearchHistoryCubit>()
                                            .addSearchTerm(state
                                                .floatingSearchBarController
                                                .query);
                                        // context
                                        //     .read<SearchBloc>()
                                        //     .add(SearchEvent.search(state.typedTerm));
                                      },
                                    );
                                  } else {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: state
                                          .filteredSearchHistory.reversed
                                          .map(
                                            (search) => ListTile(
                                              title: Text(
                                                search.searchTerm,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              leading:
                                                  const Icon(Icons.history),
                                              trailing: IconButton(
                                                icon: const Icon(Icons.clear),
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          SearchHistoryCubit>()
                                                      .deleteSearchTerm(
                                                          search.searchTerm);
                                                },
                                              ),
                                              onTap: () {
                                                state
                                                    .floatingSearchBarController
                                                    .close();
                                                FocusScope.of(context)
                                                    .unfocus();
                                                context
                                                    .read<MainNavigationCubit>()
                                                    .setIndex(1);
                                                context
                                                    .read<SearchResultBloc>()
                                                    .add(SearchResultEvent
                                                        .searchDrugs(
                                                            search.searchTerm,
                                                            location,
                                                            state.filterBy));
                                                context
                                                    .read<SearchHistoryCubit>()
                                                    .addSearchTerm(
                                                        search.searchTerm);
                                                state
                                                    .floatingSearchBarController
                                                    .close();
                                              },
                                            ),
                                          )
                                          .toList(),
                                    );
                                  }
                                },
                              ),
                              BlocBuilder<SearchBloc, SearchState>(
                                builder: (context, stateS) {
                                  return stateS.map(
                                    initial: (_) => SizedBox.shrink(),
                                    loadInProgress: (stateS) {
                                      return CircularProgressIndicator();
                                    },
                                    loadSuccess: (stateS) {
                                      return Column(
                                        children: stateS.recommendations
                                            .map(
                                              (recommendation) => ListTile(
                                                title: Text(
                                                  recommendation.name,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                subtitle: Text(
                                                  recommendation.brandName,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.grey[600]),
                                                ),
                                                leading:
                                                    const Icon(Icons.search),
                                                onTap: () {
                                                  state
                                                      .floatingSearchBarController
                                                      .close();
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  context
                                                      .read<
                                                          MainNavigationCubit>()
                                                      .setIndex(1);
                                                  context
                                                      .read<SearchResultBloc>()
                                                      .add(SearchResultEvent
                                                          .searchDrugs(
                                                        recommendation.name,
                                                        location,
                                                        state.filterBy,
                                                      ));
                                                  context
                                                      .read<
                                                          SearchHistoryCubit>()
                                                      .addSearchTerm(
                                                          recommendation.name);
                                                  state
                                                      .floatingSearchBarController
                                                      .close();
                                                },
                                              ),
                                            )
                                            .toList(),
                                      );
                                    },
                                    loadFailure: (stateS) {
                                      return Text('Error');
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                orElse: () => SizedBox.shrink(),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildCategory({
    required BuildContext context,
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context, category);
        },
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 16.h,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              Text(
                category,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
