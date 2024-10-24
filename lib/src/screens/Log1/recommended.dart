import 'package:file_structure/src/screens/Log1/recList.dart';
import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text("Recommended",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.2),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: recommendations.length,
            itemBuilder: (BuildContext context, int index){
              final rec = recommendations[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(rec.image,
                            height: 300,
                            width: 175,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(rec.productTitle,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(width: 10,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 30,
                                  width: 55,

                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.yellow, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.05),
                                  ),
                                  child: Row(
                                    children: [

                                      Icon(Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2.0),
                                        child: Text("4.5",
                                          style: TextStyle(color: Colors.black, fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(rec.productDescription,
                            style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.6)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(width: 3,),
                                Text(rec.productLocation,
                                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(rec.productCost,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 50,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 30,
                                    width: 75,
                                    color: Colors.black,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5,),
                                        Icon(Icons.add,
                                          color: Colors.white,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2.0),
                                          child: Text("Add",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );



            },
        ),
      ),
    );
  }
}
