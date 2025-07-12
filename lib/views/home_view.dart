import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/constants/app_colors.dart';
import 'package:news/models/news_model.dart';
import 'package:news/view_model/cubit/news_cubit.dart';
import 'package:news/widgets/custom_app_bar.dart';
import 'package:news/widgets/news_by_category_widget.dart';
import 'package:news/widgets/trend_news_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'All',
      'Sports',
      'Tech',
      'Health',
      'Science',
      'World',
      'Travel',
      'Art',
    ];

    return BlocProvider(
      create: (context) => NewsCubit()..fetchNews('all'),
      child: Scaffold(
        backgroundColor: AppColors.kBackground,
        appBar: CustomAppBar(title: "NEWS"),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
          if (state is NewsLoaded) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomScrollView(
                  slivers: [
                    //!
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Trending News',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),

                    //!
                    SliverToBoxAdapter(
                      child: TrendNewsWidget(trendNews: state.trendNews),
                    ),

                    //!
                    SliverToBoxAdapter(child: SizedBox(height: 24)),
                    //!
                    SliverToBoxAdapter(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 50,
                          child: OverflowBar(
                            children:
                                categories.map((child) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.white,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        child,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ),
                    ),
                    //!
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: TextStyle(color: AppColors.kText),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //!
                    GridWidget(news: state.news),
                  ],
                ),
              );
            } else if (state is NewsFailure) {
              return Center(child: Text(state.errMessage.toString()));
            }

            return    const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  final List<NewsModel> news;

  const GridWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => NewsByCategoryWidget(newsModel: news[index]),
        childCount: news.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 22,
        mainAxisSpacing: 22,
        childAspectRatio: 0.7,
      ),
    );
  }
}
