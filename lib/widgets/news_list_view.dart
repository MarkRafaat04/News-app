

import 'package:flutter/cupertino.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
      (context, index) {
        return const Padding(
          padding:EdgeInsets.only(bottom:12),
          child: NewsTile(),
        );
      }
      )
    );
  }

}