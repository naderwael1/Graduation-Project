import 'package:flutter/material.dart';

class CstomSliverGrid extends StatelessWidget {
  const CstomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid.builder(gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16

    ),
        itemBuilder:(context, index){
      return const CustomItem();
        },
        itemCount: 4,
        );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffb4b4b4),
      borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
