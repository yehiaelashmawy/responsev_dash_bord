import 'package:flutter/material.dart';
import 'package:responsev_dash_bord/utils/app_style.dart';
import 'package:responsev_dash_bord/widgets/dots_indcarors.dart';
import 'package:responsev_dash_bord/widgets/my_cards_page_view.dart';

class MyCardSecation extends StatefulWidget {
  const MyCardSecation({super.key});

  @override
  State<MyCardSecation> createState() => _MyCardSecationState();
}

class _MyCardSecationState extends State<MyCardSecation> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card', style: AppStyle.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        SizedBox(height: 20),
        DotsIndcarors(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
