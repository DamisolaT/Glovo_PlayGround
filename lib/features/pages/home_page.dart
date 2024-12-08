import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Glovo"),
        leading: const Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/images/wild_image.png",
          ),
          const Divider(
            color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Name:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Damisola Morawo",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "Interest:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Building user friendly apps",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "I want to build an app like OPay.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          )
        ],
      )),
    );
  }
}
