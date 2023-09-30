import 'package:flutter/material.dart';
import 'package:jobassignment/widgets/applied.dart';

import 'package:jobassignment/model/database.dart';

class AppliedScreen extends StatelessWidget {
  const AppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TechlyJob",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage("assets/images/techlyverse.png"),
                    height: 60,
                  ),
                  Text(
                    "Techly Job",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          ListTile(
            title: const Text("Jobs"),
            leading: const Icon(Icons.shopping_bag_outlined),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Logout"),
            leading: const Icon(Icons.logout),
            onTap: () {},
          ),
        ],
      )),
      body: Column(
        children: [AppliedBuild(job: Job.available)],
      ),
//      bottomNavigationBar: MyBottomNav(),
    );
  }
}
