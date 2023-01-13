import 'package:challenge02_fteam/src/widgets/custom_container_image_widget.dart';
import 'package:flutter/material.dart';
import '../models/pets_adopt_model.dart';
import '../widgets/custom_favorite_widget.dart';

class AdoptPage extends StatefulWidget {
  const AdoptPage({super.key});

  @override
  State<AdoptPage> createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
  @override
  Widget build(BuildContext context) {
    final petsData =
        ModalRoute.of(context)!.settings.arguments as PetsAdoptModel;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
              height: screenSize.height * 0.081,
              width: screenSize.width,
            ),
            const Positioned(
              right: 30,
              top: 20,
              child: CustomFavorite(),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    petsData.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                  SizedBox(height: screenSize.height * 0.006),
                  Text(petsData.race),
                  SizedBox(height: screenSize.height * 0.006),
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
                          color: Color.fromARGB(255, 167, 167, 167),
                        ),
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
                  //idade do animal
                  Text(
                    petsData.age,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Stack(children: [
            Container(
              height: screenSize.height * 0.40,
            ),
            Positioned(
              left: screenSize.width * 0.02,
              child: SizedBox(
                height: screenSize.height * 0.4,
                width: screenSize.width * 0.22,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: petsData.photos.length - 1,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomContainerImage(
                        photos: petsData.photos[index + 1]);
                  },
                ),
              ),
            ),
            Positioned(
              right: -25,
              child: Container(
                decoration: BoxDecoration(
                  color: petsData.cor,
                  borderRadius: BorderRadius.circular(300),
                ),
                height: screenSize.height * 0.40,
                width: screenSize.width * 0.8,
              ),
            ),
            Positioned(
              left: screenSize.width * 0.20,
              child: SizedBox(
                  height: screenSize.height * 0.40,
                  width: screenSize.width * 0.9,
                  child: Image.asset(petsData.photos[0])),
            ),
          ]),
          SizedBox(
            height: screenSize.height * 0.272,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      petsData.description,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 138, 138, 138),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(children: [
            SizedBox(
              height: screenSize.height * 0.1355,
              width: screenSize.width,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(237, 255, 145, 0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                height: screenSize.height * 0.09,
                width: screenSize.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.pets,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.05,
                        ),
                        const Text('ADOPT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
