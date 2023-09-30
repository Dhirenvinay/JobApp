
import 'package:flutter/material.dart';
import 'package:jobassignment/model/database.dart';
class DetailedScreen extends StatelessWidget {
   DetailedScreen({super.key,required this.job});
  Job job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: SingleChildScrollView(
       // scrollDirection: Axis.vertical,
        child: Padding(padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Text(job.title!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(job.cname!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,
                  ),
              ),
              Text(job.location!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,),

              ),
              const SizedBox(height: 10,),
              const Text("Job Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
              const Text("Here's how the job details align with your job preferences. Manage job preferences at anytime in your profile"),
              const SizedBox(
                height: 10.0,
              ),
              const Row(children: [
                Icon(Icons.payment),SizedBox(width: 10,),
                Text("Pay",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15 ),),
              ],),

              Row(
                children: [
                  const SizedBox(width: 30,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:  Text( "From Rs${job.salary} a month",
                      style: const TextStyle( color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,),
                    ),),
                ],
              ),
              const SizedBox(height: 5,),
              const Row(children: [
                Icon(Icons.work_outline_outlined),
                SizedBox(width: 10,),
                Text("Job Type",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
              ],),
              Row(
                children: [
                  const SizedBox(width: 30,),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:  Text(job.type!,
                      style: const TextStyle( color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,),
                    ),),
                ],
              ),
              const SizedBox(height: 10,),
              const Row(children: [Icon(Icons.watch_later_outlined),
                SizedBox(width: 10,),
                Text("Shift and Schedule",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),],),
              Row(
                children: [
                  const  SizedBox(width: 30,),
                  Container(

                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:  Text(job.daytime!,
                      style: const TextStyle( color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,),
                    ),),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Benefits",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
              const Text("Pulled from the full job description"),
              const SizedBox(height: 10,),

              Row(children: [
                const Icon(Icons.circle,size: 8,),
                const  SizedBox(width: 5,),
                Text(job.benfits!,
                  style: const TextStyle( color: Colors.black,
                    fontSize: 15.0, ),
                ),],),
              const SizedBox(height: 15,),

              const Text("Full Job Description" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
              Text(job.description!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(job.requirement!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,),
              ),
              const   SizedBox(
                height: 10.0,
              ),
              Text(job.experience!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,), textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(job.education!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,), textAlign: TextAlign.justify,
              ),
              const  SizedBox(
                height: 10.0,
              ),

              Text(job.address!,
                style: const TextStyle( color: Colors.black,
                  fontSize: 15.0,), textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /9,
              ),

            ],
          ),
        ),
      ),floatingActionButton:
          job.applied ?  null  : SizedBox(
              width: MediaQuery.of(context).size.width /2,
              child: FloatingActionButton(onPressed: () {},backgroundColor: Colors.redAccent,child: const  Text("Apply",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              )) ,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }
}
