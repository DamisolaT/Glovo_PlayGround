import 'package:flutter/material.dart';
import 'package:glovo_assign1/features/shared/app_colors.dart';
import 'package:glovo_assign1/features/shared/constant.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar View Screen"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: SizedBox(
              //color: Colors.grey.shade300,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TabBar(
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.black,
                  dividerColor: Colors.transparent,
                  labelStyle: textStyle.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelStyle:
                      textStyle.copyWith(fontWeight: FontWeight.w200),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.black),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Text("Pending"),
                    Text("Ongoing"),
                    Text("Completed")
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ),
          Expanded(
              child: TabBarView(controller: _tabController, children: [
            Center(
              child: Container(
                child: const Text("Child one"),
              ),
            ),
            Center(
              child: Container(
                child: const Text("Child two"),
              ),
            ),
            Center(
              child: Container(
                child: Text("Child three"),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
