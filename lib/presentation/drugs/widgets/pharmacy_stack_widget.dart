import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/drugs/search/pharmacy_search/pharmacy_search_bloc.dart';
import 'package:pharma_flutter/application/pharmacy/pharmacy_locations/pharmacy_locations_cubit.dart';
import 'package:pharma_flutter/application/util/location/location_cubit.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/domain/pharma/pharmacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_flutter/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class PharmacyStackWidget extends StatelessWidget {
  const PharmacyStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.w, 65.h, 10.w, 5.h),
            constraints: BoxConstraints(
              maxWidth: 90.sw,
            ),
            child: BlocBuilder<PharmacySearchBloc, PharmacySearchState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) {
                    return BlocBuilder<PharmacyLocationsCubit,
                        PharmacyLocationsState>(
                      builder: (context, state) {
                        if (state.nearestPharmacies.length > 0)
                          return Column(
                            children: [
                              Text(
                                'Here Are Some Nearby Pharmacies',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[400]),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Not seeing what you want? Use the search',
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final pharmacy =
                                      state.nearestPharmacies[index];
                                  return PharmacyCard(pharmacy: pharmacy);
                                },
                                itemCount: state.nearestPharmacies.length,
                              ),
                            ],
                          );
                        else
                          return Center(
                            child: Text(
                              'Start searching for a Pharmacy...',
                            ),
                          );
                      },
                    );
                  },
                  loadInProgress: (state) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loadSuccess: (state) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final pharmacy = state.pharmacies[index];
                        return PharmacyCard(pharmacy: pharmacy);
                      },
                      itemCount: state.pharmacies.length,
                    );
                  },
                  loadFailure: (state) {
                    return Container();
                  },
                );
              },
            ),
          ),
          FloatingSearchBarWidge(),
        ],
      ),
    );
  }
}

class FloatingSearchBarWidge extends StatelessWidget {
  //final Widget body;
  const FloatingSearchBarWidge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //FloatingSearchBarController controller = FloatingSearchBarController();

    return Container(
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, locationState) {
          return locationState.when(
            initial: () {
              return SizedBox.shrink();
            },
            locationLoaded: (location) {
              return FloatingSearchBar(
                hint: 'Search...',
                scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
                transitionDuration: const Duration(milliseconds: 800),
                transitionCurve: Curves.easeInOut,
                physics: const BouncingScrollPhysics(),
                axisAlignment: 0.0,
                openAxisAlignment: 0.0,
                width: 600,
                height: 50.h,
                debounceDelay: const Duration(
                  seconds: 1,
                ),
                onQueryChanged: (query) {
                  if (query.length > 2)
                    context.read<PharmacySearchBloc>().add(
                        PharmacySearchEvent.searchPharmacies(query, location));
                },
                onSubmitted: (query) {},
                transition: CircularFloatingSearchBarTransition(),
                actions: [
                  FloatingSearchBarAction(
                    showIfOpened: false,
                    child: CircularButton(
                      icon: const Icon(Icons.place),
                      onPressed: () {
                        // context.read<AuthBloc>().add(const AuthEvent.signedOut());
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    category: "Books",
                                    iconData: Icons.book,
                                    color: Colors.blue,
                                  ),
                                  _buildCategory(
                                    category: "Video Games",
                                    iconData: Icons.sports_esports,
                                    color: Colors.deepOrange,
                                  ),
                                  _buildCategory(
                                    category: "Music & Movies",
                                    iconData: Icons.movie,
                                    color: Colors.blue,
                                  ),
                                  _buildCategory(
                                    category: "Grocery",
                                    iconData: Icons.local_grocery_store,
                                    color: Colors.cyan,
                                  ),
                                  _buildCategory(
                                    category: "Health & Beauty",
                                    iconData: Icons.healing,
                                    color: Colors.yellow.shade700,
                                  ),
                                  _buildCategory(
                                    category: "Sports",
                                    iconData: Icons.sports_basketball_rounded,
                                    color: Colors.red,
                                  ),
                                  // 6 Categories
                                  SizedBox(height: 40.0),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  FloatingSearchBarAction.searchToClear(),
                ],
                builder: (context, transition) {
                  return SizedBox.shrink();
                },
                //body: body,
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildCategory({
    required String category,
    required IconData iconData,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
      ),
      child: InkWell(
        onTap: () {},
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

class PharmacyCard extends StatelessWidget {
  final Pharmacy pharmacy;
  const PharmacyCard({
    Key? key,
    required this.pharmacy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              return GestureDetector(
                onTap: () {
                  context.router.push(PharmacyRoute(
                    pharmacy: pharmacy,
                    user: authState.maybeWhen(
                      authenticated: (state) => state,
                      orElse: () => null,
                    ),
                  ));
                },
                child: Container(
                  height: 193.h,
                  child: Card(
                    color: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    margin: EdgeInsets.zero,
                    elevation: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 30.sw,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(8.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/d.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 2.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 3.h),
                                  child: Text(
                                    pharmacy.pharmacyName,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  pharmacy.locationDescription,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 3.h),
                                  child: Text(
                                    pharmacy.pharmacyEmail,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      rating: pharmacy.rating,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 24.r,
                                      unratedColor: Colors.amber.withAlpha(50),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    if (pharmacy.reviews != null)
                                      Text(
                                        '(${pharmacy.reviews!.length})',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 3.h),
                                  child: Text(
                                    'Accepts Requests? ${pharmacy.acceptsRequests}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 5.h,
          ),
        ],
      ),
    );
  }
}
