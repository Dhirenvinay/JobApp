import 'package:flutter/material.dart';
import 'package:jobassignment/model/database.dart';


class ItemCard extends StatefulWidget {
   ItemCard(this.job, this.onTap,{Key? key}) : super(key: key);
Job job;
Function()? onTap;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  @override
  Widget build(BuildContext context) {

  return Column(
    children: [
  //    if(widget.job.applied)
      InkWell(
        onTap: widget.onTap,
        child: Padding(padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(widget.job.title!,
                style:const TextStyle( color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon( Icons.save))
            ],),
            Row(
              children: [Text(widget.job.cname!,
              style: const TextStyle( color: Colors.black,
                fontSize: 20.0,
                ),
            ),
                const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.not_interested_rounded))
            ],),

            Row(
              children: [
                const Icon(Icons.location_on,color: Colors.grey,),
              Text(widget.job.location!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,
                  ),
              ),
            ],),
            const SizedBox(height: 8,),
            Row(children: [
              Container(

                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8)
                ),
                child:  Text( "From Rs${widget.job.salary} a month",
                style: const TextStyle( color: Colors.black,
                  fontSize: 12.0, fontWeight: FontWeight.bold),
                ),),
              const SizedBox(width: 5,),
              Container(

                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:  Text(widget.job.type!,
                  style: const TextStyle( color: Colors.black,
                      fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),),
            ],),

            const SizedBox(
              height: 10.0,
            ),
            Container(

              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text(widget.job.daytime!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,),
              ),
            ),
            const SizedBox(height: 10,),
            const Row(children: [
              Icon(Icons.share,color: Colors.blue,), Text("Easly Apply"), SizedBox(width: 15,),
              Icon(Icons.person_add_alt_1_sharp,color: Colors.orangeAccent,),Text("Hiring for Multiples Roles")
            ],),
            SizedBox(height: 5,),
            widget.job.applied ? Text("Already Applied",style: TextStyle(fontWeight: FontWeight.bold),) : Text("")
          ],
        ),
        )
      ),
    ],
  );
  }
}
