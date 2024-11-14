import 'package:flutter/material.dart';
import 'package:news_app/views/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 10,),
              ),
             NewsListViewBuilder(),
            ],
          ),
          // child:  Column(
          //     children: [
          //        CategoryListView(),
          //       Expanded(child: NewsListView()),
          //     ],
          //   ),
        ),
      ),
    );
  }
  
}
