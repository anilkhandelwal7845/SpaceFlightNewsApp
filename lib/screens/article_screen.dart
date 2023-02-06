import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:spaceflight_app/Models/ArticleModel.dart';
import 'package:spaceflight_app/api/api.dart';
import 'package:spaceflight_app/screens/blog_screen.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {

  var users = List<ArticleModel>.empty();
  _getArticles() {
    API.getArticles().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => ArticleModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getArticles();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return _listItem(index);
          },
        ),
      ),
    );
  }

  Widget _listItem(int index) {
    return Container(

      margin: EdgeInsets.only(top: 10 , left: 5 , right: 5),
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image.network(
                users[index].imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.indigo,
                        ),
                        Text(users[index].publishedAt.toString())
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        users[index].title.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BlogScreen()));
                          },
                          child: const Text("Read More")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
