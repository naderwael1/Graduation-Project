import 'package:flutter/material.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder
      (
        itemCount: 10,
        itemBuilder: (context,index)
        {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: CustemListView(),
          );
        });
  }
}
class CustemListView extends StatelessWidget {
  const CustemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xffececec),
        borderRadius: BorderRadius.circular(8),
      )
    );
  }
}
