import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/pages/lIst_view_page.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("GridViewPage"),
        leading: const Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListViewPage()));
                },
                child: Icon(Icons.menu)),
          )
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return Image.asset("assets/images/flutter_logo.png");
          },
        ),
      ),
    );
  }
}
