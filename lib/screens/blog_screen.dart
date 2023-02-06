import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:spaceflight_app/Models/BlogModel.dart';
import 'package:spaceflight_app/api/api.dart';



class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  var blogs = List<BlogModel>.empty();

  _getBlogs() {
    API.getBlogs().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        blogs = list.map((model) => BlogModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getBlogs();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: blogs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      blogs[index].title.toString(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 225,
                    width: 480,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        blogs[index].imageUrl.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    blogs[index].summary.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: .2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
