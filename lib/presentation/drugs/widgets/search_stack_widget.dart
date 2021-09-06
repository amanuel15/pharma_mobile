import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pharma_flutter/application/drugs/search/search_result/search_result_bloc.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/domain/pharma/drug.dart';
import 'package:pharma_flutter/presentation/drugs/widgets/drug_card_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchStackWidget extends StatelessWidget {
  const SearchStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchBar = FloatingSearchBar.of(context);
    double a = searchBar?.value.height ?? 0;
    double b = searchBar?.value.margins.vertical ?? 0;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10.w, 65.h, 10.w, 5.h),
            constraints: BoxConstraints(
              maxWidth: 90.sw,
            ),
            child: BlocBuilder<SearchResultBloc, SearchResultState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Center(
                    child: Text(
                      'Start Search',
                    ),
                  ),
                  loadInProgress: (state) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loadSuccess: (state) {
                    return Column(
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Can\'t find What You are looking for?',
                          ),
                        ),
                        ListView.builder(
                          itemBuilder: (context, index) {
                            final drug = state.drugs[index];
                            return DrugCard(drug: drug);
                          },
                          itemCount: state.drugs.length,
                        ),
                      ],
                    );
                  },
                  loadFailure: (state) {
                    return Container();
                  },
                );
                // return ListView(
                //   children: [
                //     DrugCard(
                //       drug: Drug(
                //         id: 'asdsad',
                //         pharmacyId: 'pharmacyId',
                //         drugName:
                //             'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
                //         drugDetail: 'drugDetail',
                //         drugOrigin: 'Made In Germany',
                //         drugPrice: 200,
                //         stock: 7,
                //         rating: 4,
                //         createdDate: 'Aug 8, 2021',
                //         imageUrls: ['assets/d.jpg'],
                //         location: [],
                //         brandName: '',
                //         pharmacyRating: 0,
                //         requiresPrescription: true,
                //         reviews: [],
                //         score: 0,
                //       ),
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //     DrugCard(
                //       drug: Drug(
                //         id: 'asdsad',
                //         pharmacyId: 'pharmacyId',
                //         drugName:
                //             'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
                //         drugDetail: 'drugDetail',
                //         drugOrigin: 'Made In Germany',
                //         drugPrice: 200,
                //         stock: 7,
                //         rating: 4,
                //         createdDate: 'Aug 8, 2021',
                //         imageUrls: ['assets/d.jpg'],
                //         location: [],
                //         brandName: '',
                //         pharmacyRating: 0,
                //         requiresPrescription: true,
                //         reviews: [],
                //         score: 0,
                //       ),
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //     DrugCard(
                //       drug: Drug(
                //         id: 'asdsad',
                //         pharmacyId: 'pharmacyId',
                //         drugName:
                //             'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
                //         drugDetail: 'drugDetail',
                //         drugOrigin: 'Made In Germany',
                //         drugPrice: 200,
                //         stock: 7,
                //         rating: 4,
                //         createdDate: 'Aug 8, 2021',
                //         imageUrls: ['assets/d.jpg'],
                //         location: [],
                //         brandName: '',
                //         pharmacyRating: 0,
                //         requiresPrescription: true,
                //         reviews: [],
                //         score: 0,
                //       ),
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //     DrugCard(
                //       drug: Drug(
                //         id: 'asdsad',
                //         pharmacyId: 'pharmacyId',
                //         drugName:
                //             'Paracetamol. Made in china blah blah blah more stuff to talk. Gsm 4G svg lmg lmao',
                //         drugDetail: 'drugDetail',
                //         drugOrigin: 'Made In Germany',
                //         drugPrice: 200,
                //         stock: 7,
                //         rating: 4,
                //         createdDate: 'Aug 8, 2021',
                //         imageUrls: ['assets/d.jpg'],
                //         location: [],
                //         brandName: '',
                //         pharmacyRating: 0,
                //         requiresPrescription: true,
                //         reviews: [],
                //         score: 0,
                //       ),
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //   ],
                // );
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
      child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
        //buildWhen: (p, c) => !ListEquality().equals(p.filteredSearchHistory, c.filteredSearchHistory),
        builder: (context, state) {
          return FloatingSearchBar(
            controller: state.floatingSearchBarController,
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
            ), //! This is the debounce delay set it higher
            onQueryChanged: (query) {
              if (state.searches.isEmpty)
                context.read<SearchHistoryCubit>().setTypedTerm(query);
              else
                BlocProvider.of<SearchHistoryCubit>(context)
                    .filterSearchTerms(filter: query);
            },
            onSubmitted: (query) {
              if (query.isNotEmpty)
                BlocProvider.of<SearchHistoryCubit>(context)
                    .addSearchTerm(query);
            },
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
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Material(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Builder(
                    builder: (context) {
                      if (state.filteredSearchHistory.isEmpty &&
                          state.floatingSearchBarController.query.isEmpty) {
                        return Container(
                          height: 56.h,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            'Start searching...',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.caption,
                          ),
                        );
                      } else if (state.filteredSearchHistory.isEmpty) {
                        return ListTile(
                          title: Text(
                            state.typedTerm,
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: const Icon(Icons.search),
                          onTap: () {
                            context.read<SearchHistoryCubit>().addSearchTerm(
                                state.floatingSearchBarController.query);
                          },
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: state.filteredSearchHistory.reversed
                              .map((search) => ListTile(
                                    title: Text(
                                      search.searchTerm,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    leading: const Icon(Icons.history),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.clear),
                                      onPressed: () {
                                        context
                                            .read<SearchHistoryCubit>()
                                            .deleteSearchTerm(
                                                search.searchTerm);
                                      },
                                    ),
                                    onTap: () {
                                      context
                                          .read<SearchHistoryCubit>()
                                          .addSearchTerm(search.searchTerm);
                                      state.floatingSearchBarController.close();
                                    },
                                  ))
                              .toList(),
                        );
                      }
                    },
                  ),
                ),
              );
            },
            //body: body,
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
