import 'package:flutter/material.dart';
import 'package:shimmerflutter/page/shimmer_loading_card.dart';

import '../const/const.dart';
import '../widget/reusable_container.dart';


class ShimmerLoading extends StatefulWidget {
  const ShimmerLoading({Key? key}) : super(key: key);

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "News App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: _isLoading
            ? ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) => const NewsCardSkelton(),
          separatorBuilder: (context, index) =>
          const SizedBox(height: defaultPadding),
        )
            : ListView.separated(
          itemCount: 6,
          itemBuilder: (context, index) => ShimmerLoadingCard(
            image: "assets/images/Image_$index.png",
          ),
          separatorBuilder: (context, index) =>
          const SizedBox(height: defaultPadding),
        ),
      ),
    );
  }
}

class NewsCardSkelton extends StatelessWidget {
  const NewsCardSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ResuableContainer(height: 120, width: 120),
        SizedBox(width: defaultPadding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResuableContainer(width: 80),
              SizedBox(height: defaultPadding / 2),
              ResuableContainer(),
              SizedBox(height: defaultPadding / 2),
              ResuableContainer(),
              SizedBox(height: defaultPadding / 2),
              Row(
                children: [
                  Expanded(
                    child: ResuableContainer(),
                  ),
                  SizedBox(width: defaultPadding),
                  Expanded(
                    child: ResuableContainer(),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}