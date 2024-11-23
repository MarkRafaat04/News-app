

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card.dart';
import '../widgets/category_list_view.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_tile.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(color: Colors.black,fontSize: 25,fontWeight:FontWeight.bold)
                ),
                TextSpan(
                    text: 'Cloud',
                    style: TextStyle(color: Colors.amber,fontSize: 25,fontWeight:FontWeight.bold)
                ),
              ]
            )
          )
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:12.0),
          child: CustomScrollView(
              physics: BouncingScrollPhysics(),
            slivers:[
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 12,
                )
              ),
              NewsListView()
            ]
          ),
        )
        )
    );
  }

}