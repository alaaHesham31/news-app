import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,),
            
          ),
         const SizedBox(
            height: 10,
          ),
          Text(articleModel.title, 
          style: TextStyle(fontSize: 22, color: Colors.black),
          overflow: TextOverflow.ellipsis ,
          maxLines: 2,
          ),
         const SizedBox(height: 8),
          Text(
          articleModel.subTitle?? ' ', 
         style: TextStyle(fontSize: 16, color: Colors.grey),
         overflow: TextOverflow.ellipsis,
         maxLines: 2,),
        ],
      ),
    );
  }
}