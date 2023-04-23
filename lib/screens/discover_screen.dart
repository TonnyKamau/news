import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/models.dart';
import '../widgets/widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Health', 'Politics', 'Art', 'Food', 'Science'];
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 30.0),
              onPressed: () {},
            ),
          ),
          bottomNavigationBar: const BottomNavBar(
            selectedIndex: 1,
          ),
          body: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              const _DiscoverNews(),
              _CategoryNews(
                tabs: tabs,
              )
            ],
          )),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final article = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs
              .map((e) => Tab(
                    child: Text(e,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ))
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map((e) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: article.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed('/article', arguments: article[index]);
                          },
                          child: Row(
                            children: [
                              ImageContainer(
                                  width: 80,
                                  imageUrl: article[index].imageUrl,
                                  height: 80,
                                  margin: const EdgeInsets.all(10.0),
                                  borderRadius: 5.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      article[index].title,
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.schedule,
                                          size: 18.0,
                                        ),
                                        const SizedBox(width: 5.0),
                                        Text(
                                          '${DateTime.now().difference(article[index].createdAt).inHours} hours ago',
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        const SizedBox(width: 20.0),
                                        const Icon(
                                          Icons.visibility,
                                          size: 18.0,
                                        ),
                                        const SizedBox(width: 5.0),
                                        Text(
                                          '${article[index].views}',
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Discover',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
          const SizedBox(height: 5.0),
          Text('Find the latest news',
              style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 20.0),
          TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none,
              ),
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
          )
        ],
      ),
    );
  }
}
