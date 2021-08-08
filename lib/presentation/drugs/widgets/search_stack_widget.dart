import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pharma_flutter/application/auth/auth_bloc.dart';
import 'package:pharma_flutter/application/util/search_history/search_history_cubit.dart';
import 'package:pharma_flutter/injection.dart';
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
      child: FloatingSearchBarWidget(
        body: Container(
          padding: EdgeInsets.fromLTRB(10.w, 65.h, 10.w, 5.h),
          child: ListView(
            children: [
              DrugCard(),
              SizedBox(
                height: 10.h,
              ),
              DrugCard(),
              SizedBox(
                height: 10.h,
              ),
              DrugCard(),
              SizedBox(
                height: 10.h,
              ),
              DrugCard(),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FloatingSearchBarWidget extends StatelessWidget {
  final Widget body;
  const FloatingSearchBarWidget({Key? key, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingSearchBarController controller = FloatingSearchBarController();

    return Container(
      child: BlocProvider<SearchHistoryCubit>(
        create: (context) => getIt<SearchHistoryCubit>()..getSearchHistory(),
        child: BlocBuilder<SearchHistoryCubit, SearchHistoryState>(
          //buildWhen: (p, c) => !ListEquality().equals(p.filteredSearchHistory, c.filteredSearchHistory),
          builder: (context, state) {
            return FloatingSearchBar(
              controller: controller,
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
                      //context.router.pushNamed('/sign-in-page');
                      // AutoRouter.of(context).push(SignInRoute());
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
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
                            controller.query.isEmpty) {
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
                              context
                                  .read<SearchHistoryCubit>()
                                  .addSearchTerm(controller.query);
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
                                        controller.close();
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
              body: body,
            );
          },
        ),
      ),
    );
  }
}
