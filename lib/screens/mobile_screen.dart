import 'package:flutter/material.dart';
import 'package:whatps_app_clone/colors.dart';
import 'package:whatps_app_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
            'whatsapp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Chats',
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                ),
              ),
            ],
            indicatorWeight: 4.0,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: IconButton(
          onPressed: () {},
          color: tabColor,
          icon:const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
