import 'package:flutter/material.dart';

import '../models/pets_adopt_model.dart';

class MyWidget extends StatefulWidget {
  final PetsAdoptModel petsData;
  const MyWidget({super.key, required this.petsData});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ontap
                      ? const Color.fromARGB(255, 255, 187, 182)
                      : const Color.fromARGB(255, 160, 160, 160),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        ontap = !ontap;
                      },
                    );
                  },
                  child: Icon(
                    Icons.favorite,
                    color: ontap ? Colors.red : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(widget.petsData.name),
                  Text(widget.petsData.race),
                  Row(
                    children: [
                      Icon(
                        size: 18,
                        Icons.location_on,
                        color: Colors.amber[900],
                      ),
                      Text(widget.petsData.location),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (widget.petsData.sex == 'Male')
                    const Icon(Icons.female)
                  else
                    const Icon(Icons.male),
                  Text(widget.petsData.age),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: widget.petsData.photos.length-1,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: CustomContainer(petsData: widget.petsData.photos[index+1]),
                        );
                      },
                    ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.petsData.cor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(widget.petsData.photos[0]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
