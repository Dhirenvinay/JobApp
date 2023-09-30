import 'package:flutter/material.dart';
import 'package:jobassignment/widgets/appliedcard.dart';
import 'package:jobassignment/model/database.dart';
import 'package:jobassignment/screen/detailedscreen.dart';

// ignore: must_be_immutable
class AppliedBuild extends StatelessWidget {
  AppliedBuild({
    super.key,
    required this.job,
  });
  List<Job> job;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: job.length,
        itemBuilder: (context, index) => Card(
          color: Colors.blueGrey.shade100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: AppliedCard(
            job[index],
            () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: DetailedScreen(job: job[index]),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
