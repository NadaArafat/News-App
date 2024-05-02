import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.article});
  
  final ArticleModel article;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(
              image: NetworkImage(article.image??
                  'https://as1.ftcdn.net/v2/jpg/01/73/00/56/1000_F_173005657_3b7eYcRNpjYlHV0f7UoX8mYhdRFHGEC9.jpg'),
            ),
          ),
          const SizedBox(height: 8),
          Text(article.title,
            style: const TextStyle(fontSize: 20),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8,width:double.infinity),
          Text(
            article.subtitle??'',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
