import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:new_dribble/widgets/image_container.dart';

import '../models/models.dart';
import '../widgets/widget.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Article article = Get.arguments ?? Article.articles[0];
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _HeadLine(
              article: article,
            ),
            _Body(article: article),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomTag(backgroundColor: Colors.black, children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: NetworkImage(article.authorImageUrl),
                ),
                const SizedBox(width: 10.0),
                Text(article.author,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white)),
              ]),
              const SizedBox(width: 10.0),
              CustomTag(
                  backgroundColor: Colors.grey.shade200,
                  children: [
                    const Icon(
                      Icons.timer,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                        '${DateTime.now().difference(article.createdAt).inHours} hours ago',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ]),
              const SizedBox(width: 10.0),
              CustomTag(
                  backgroundColor: Colors.grey.shade200,
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 10.0),
                    Text(article.views.toString(),
                        style: Theme.of(context).textTheme.bodyMedium),
                  ]),
            ],
          ),
          const SizedBox(height: 20.0),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold, height: 1.25),
          ),
          const SizedBox(height: 20.0),
          Text(article.body,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(height: 1.5)),
          const SizedBox(height: 20.0),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return ImageContainer(
                    width: MediaQuery.of(context).size.width * 0.42,
                    imageUrl: article.imageUrl);
              }),
        ],
      ),
    );
  }
}

class _HeadLine extends StatelessWidget {
  const _HeadLine({
    Key? key,
    required this.article,
  }) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white)),
          ]),
          const SizedBox(height: 10.0),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white, height: 1.25),
          ),
          Text(
            article.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
