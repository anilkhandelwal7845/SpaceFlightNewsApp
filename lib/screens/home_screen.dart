import 'package:flutter/material.dart';
import 'package:spaceflight_app/screens/article_screen.dart';
import 'package:spaceflight_app/screens/blog_screen.dart';
import 'package:spaceflight_app/screens/darktheme.dart';
import 'package:spaceflight_app/screens/read_more.dart';
import 'package:spaceflight_app/screens/report_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  final List _page = [
    const ArticleScreen(),
    const BlogScreen(),
    const ReportScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              "Spaceflight News App",
              style: TextStyle(color: Colors.white),
            )),
        // automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              accountName: Text('Anil7845'),
              accountEmail: Text('anilkhandelwal7845@gmail.com'),

              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/space.webp'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReadMoreScreennn()));
              },
              child: const ListTile(
                leading: Icon(Icons.headset_mic_outlined),
                title: Text('Help & Support'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DarkThemeScreen()));
              },
              child: const ListTile(
                leading: Icon(Icons.color_lens_outlined),
                title: Text('Theme'),
              ),
            ),
          ],
        ),
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: "Article"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Blog"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
