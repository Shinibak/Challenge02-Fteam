import 'package:challenge02_fteam/src/widgets/custom_container_image_widget.dart';
import 'package:flutter/material.dart';
import '../models/pets_adopt_model.dart';

class AdoptPage extends StatefulWidget {
  const AdoptPage({super.key});

  @override
  State<AdoptPage> createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    final petsData =
        ModalRoute.of(context)!.settings.arguments as PetsAdoptModel;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height * 0.030,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ontap
                      ? const Color.fromARGB(255, 255, 187, 182)
                      : const Color.fromARGB(255, 160, 160, 160),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: screenSize.height * 0.05,
                width: screenSize.width * 0.10,
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
                    size: screenSize.height * 0.03,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    petsData.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.006,
                  ),
                  Text(petsData.race),
                  SizedBox(
                    height: screenSize.height * 0.006,
                  ),
                  Row(
                    children: [
                      Icon(
                        size: 18,
                        Icons.location_on,
                        color: Colors.amber[900],
                      ),
                      Text(
                        petsData.location,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 167, 167, 167)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (petsData.sex == 'Male')
                    const Icon(
                      Icons.female,
                      color: Color.fromARGB(255, 167, 167, 167),
                    )
                  else
                    const Icon(
                      Icons.male,
                      color: Color.fromARGB(255, 167, 167, 167),
                    ),
                  Text(
                    petsData.age,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: screenSize.width * 0.01,
              ),
              Expanded(
                flex: 2,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: petsData.photos.length - 1,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: CustomContainerImage(
                          photos: petsData.photos[index + 1]),
                    );
                  },
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.01,
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: petsData.cor,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  height: screenSize.height * 0.40,
                  child: Image.asset(petsData.photos[0]),
                ),
              ),
            ],
          ),
          const Text(
            'About',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            petsData.description,
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.24),
          )
        ],
      ),
    );
  }
}
