import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/article_model.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 30.0),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: const BottomNavBar(
          selectedIndex: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            _NewsHeader(article: article),
            _BreakingNews(
              articles: Article.articles,
            ),
          ],
        ));
  }
}

class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);
  final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Breaking News',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {
                  print('More');
                },
                style: TextButton.styleFrom(
                  disabledBackgroundColor: Colors.transparent,
                  splashFactory:
                      NoSplash.splashFactory, // disable splash effect
                  padding: EdgeInsets.zero,
                ),
                child: Row(
                  children: [
                    Text(
                      'More',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 10.0),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: ((context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.only(right: 10.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/article', arguments: articles[index]);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: articles[index].imageUrl,
                          ),
                          const SizedBox(height: 10.0),
                          Text(articles[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5)),
                          const SizedBox(height: 5.0),
                          Text(
                            '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            'by ${articles[index].author}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}

class _NewsHeader extends StatelessWidget {
  const _NewsHeader({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: article.imageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text('News of the Day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white)),
          ]),
          const SizedBox(height: 10.0),
          Text(article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                  color: Colors.white)),
          TextButton(
            onPressed: () {
              print('Read More');
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Row(
              children: [
                Text(
                  'Read More',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(width: 10.0),
                const Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 15.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
