import 'package:file_structure/src/screens/Log1/recList.dart';
import 'package:file_structure/src/screens/Log2/recList2.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text("Menu",
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
          itemCount: menuObjects.length,
          itemBuilder: (BuildContext context, int index){
            final rec2 = menuObjects[index];
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
                        child: Image.asset(rec2.image2,
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
                            Text(rec2.productTitle2,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.stop_circle_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        Text(rec2.productDescription2,
                          style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.6)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(width: 3,),
                              Text(rec2.productRating2,
                                style: TextStyle(color: Colors.black.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(rec2.productCost2,
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
