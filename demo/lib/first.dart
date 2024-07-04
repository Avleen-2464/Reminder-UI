import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.mic),
                    labelText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ))),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      card(
                        icon: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: const Icon(Icons.calendar_month,
                                color: Colors.white)),
                        text: "Today",
                        number: "1",
                      ),
                      card(
                          icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade800),
                              child:
                                  const Icon(Icons.inbox, color: Colors.white)),
                          text: "All",
                          number: "1"),
                      card(
                          icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade700),
                              child:
                                  const Icon(Icons.check, color: Colors.white)),
                          text: "Completed",
                          number: null)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      card(
                          icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: const Icon(Icons.calendar_today,
                                  color: Colors.white)),
                          text: "Scheduled",
                          number: "1"),
                      card(
                          icon: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.orange),
                              child:
                                  const Icon(Icons.flag, color: Colors.white)),
                          text: "Flagged",
                          number: "0")
                    ],
                  ),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "My Lists",
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                )),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular(10)),
              child: Column(
                
                
                children: [
                  Row(

                    children:[
                      Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.orange),
                              child: const Icon(Icons.list,
                                  color: Colors.white)),
                      Text("Reminders" , style: TextStyle(fontSize: 17),),
                      Spacer(),
                      Text("1" , style: TextStyle(fontSize: 17 , color: Colors.grey.shade600)),
                      Icon(Icons.arrow_right , color: Colors.grey.shade700,)
              
                    ]
                     
                  ),
                  SizedBox(height: 4,),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 0.5,
                  ),
                  SizedBox(height: 4,),
                  Row(children:[
                      Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.amber),
                              child: const Icon(Icons.list,
                                  color: Colors.white)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Family" , style: TextStyle(fontSize: 17),),
                          Text("Shared with someone" , style: TextStyle(fontSize: 14 , color: Colors.grey.shade500),),
                          
                        ],
                      ),
                      Spacer(),
                      Text("0" , style: TextStyle(fontSize: 17 , color: Colors.grey.shade600)),
                      Icon(Icons.arrow_right , color: Colors.grey.shade700,)
              
                    ])
                ],
              ),
            ),
          const Spacer(),
          Row(
            children: [
              Container(  
                           margin: EdgeInsets.only(right: 10),
                            // padding: const EdgeInsets.all(),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blue),
                            child: const Icon(Icons.add,
                            color: Colors.black,
                                )),
              Text("New Reminder" , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.w600),),
              Spacer(),
              Text("Add List" , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.w400),),


            

            ],
            
          )
          
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  card(
      {super.key,
      required this.icon,
      required this.text,
      required this.number});
  var icon;
  var text;
  String? number;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade900),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              (icon),
              const SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
          const Spacer(),
          Text(
            number ?? " ",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
