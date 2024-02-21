import 'package:flutter/cupertino.dart';
import 'customGrid.dart';
import 'package:flutter/material.dart';
import 'customListView.dart';
CstomSliverGrid cstomSliverGrid = CstomSliverGrid();

class NormalView extends StatelessWidget {
  const NormalView({super.key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          )
        ),
        cstomSliverGrid,
        CustomSliverListView(),

      ],),
    );
  }
}
