import 'package:flutter/material.dart';
import 'package:nutrition_checker/app/models/article.dart';

import 'package:nutrition_checker/app/widgets/extentions.dart';
import 'package:nutrition_checker/app/widgets/title_text.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final ValueChanged<Article> onSelected;
  ArticleCard({Key? key, required this.article, required this.onSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[],
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    article.image,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 1,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article.category,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black54, fontSize: 13),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TitleText(
                              text: article.name,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00345b),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              article.date,
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black54, fontSize: 13),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(Icons.favorite_border),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ).ripple(() {
        // Navigator.of(context).pushNamed('/detail');
        onSelected(article);
      }, borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
