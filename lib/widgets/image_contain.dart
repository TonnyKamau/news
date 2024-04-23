import 'package:flutter/material.dart';

class ImageContain extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final Widget? child;
  const ImageContain({
    Key? key,
    this.height = 125.0,
    this.borderRadius = 20.0,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
