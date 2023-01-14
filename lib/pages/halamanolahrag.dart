import 'package:flutter/material.dart';
import 'package:uas_syifa/components/costumListTile.dart';
import 'package:uas_syifa/model/articlemodel.dart';
import 'package:uas_syifa/services/serviceApi.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HalamanOlahraga extends StatefulWidget {
  @override
  _HalamanOlahraga createState() => _HalamanOlahraga();
}

class _HalamanOlahraga extends State<HalamanOlahraga> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF8EC5FC),
            Color(0xFFE0C3FC),
          ],
        ),
        appBar: AppBar(
          title: Text("OLAHRAGA", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: FutureBuilder(
            future: client.getArticle(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article> articles = snapshot.data;
                return ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) =>
                        customListTile(articles[index], context));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
