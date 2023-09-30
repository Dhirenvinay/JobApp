import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobassignment/model/database.dart';
import 'package:jobassignment/screen/detailedscreen.dart';
import 'package:jobassignment/widgets/item_card.dart';

class SuggestionList extends StatefulWidget {
   SuggestionList( this.job, {Key? key}) : super(key: key);
  List<Job> job;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
   return Expanded(
    child: ListView.builder(
    itemCount: widget.job.length,
    itemBuilder: (context, index) => Card(
    color: widget.job[index].applied ?  Colors.blueGrey.shade100 : Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: ItemCard(widget.job[index], () {
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
            offset: Offset(0,3 ),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.9,
      child: DetailedScreen(job: widget.job[index]),
    );
      },
    );},
    ),
    ),
    ),
   );
  }
}
