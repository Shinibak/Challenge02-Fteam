import 'package:challenge02_fteam/src/models/pet_adopt_model.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatefulWidget {
  final PetAdoptModel petsData;
  const CustomCardWidget({super.key, required this.petsData});

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  bool ontap = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Container(
                    height: screenSize.height * 0.15,
                    width: screenSize.width * 0.25,
                    decoration: BoxDecoration(
                      color: widget.petsData.cor,
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: ExactAssetImage(widget.petsData.photos[0]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.petsData.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        widget.petsData.race,
                        style: const TextStyle(fontSize: 13),
                      ),
                      Text(
                        '${widget.petsData.sex}, ${widget.petsData.age}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 167, 167, 167),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.010,
                      ),
                      Row(
                        children: [
                          Icon(
                            size: 18,
                            Icons.location_on,
                            color: Colors.amber[900],
                          ),
                          Text(
                            widget.petsData.location,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 167, 167, 167),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 7, 10, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            ontap = !ontap;
                          },
                        );
                      },
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: ontap ? Colors.red : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
