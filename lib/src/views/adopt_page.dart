import 'package:challenge02_fteam/src/widgets/list_view_widget.dart';
import 'package:flutter/material.dart';
import '../models/pet_adopt_model.dart';
import '../widgets/favorite_widget.dart';

class AdoptPage extends StatefulWidget {
  const AdoptPage({super.key});

  @override
  State<AdoptPage> createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
  @override
  Widget build(BuildContext context) {
    final petData = ModalRoute.of(context)!.settings.arguments as PetAdoptModel;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.width * 0.21,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            top: screenSize.width * 0.074,
            right: screenSize.width * 0.069,
            bottom: screenSize.width * 0.021,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              FavoriteWidget(),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.width * 0.344,
            child: Padding(
              padding: EdgeInsets.only(
                  right: screenSize.width * 0.069,
                  left: screenSize.width * 0.069),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenSize.width * 0.069,
                              bottom: screenSize.width * 0.048),
                          child: Text(
                            petData.name,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: screenSize.width * 0.032),
                          child: Text(
                            petData.race,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              size: 18,
                              Icons.location_on,
                              color: Colors.amber[900],
                            ),
                            Text(
                              petData.location,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenSize.width * 0.08,
                            bottom: screenSize.width * 0.037),
                        child: Icon(
                          petData.sex == 'Female' ? Icons.female : Icons.male,
                          color: const Color.fromARGB(255, 167, 167, 167),
                          size: screenSize.width * 0.074,
                        ),
                      ),
                      Text(
                        petData.age,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenSize.width * 0.94,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenSize.width * 0.064,
                      right: screenSize.width * 0.048,
                      top: screenSize.width * 0.053),
                  child: ListViewWidget(photosList: petData.photos),
                ),
                Expanded(
                  child: Stack(children: [
                    Positioned(
                      left: 0,
                      child: Container(
                        height: screenSize.width * 0.93,
                        width: screenSize.width * 0.95,
                        decoration: BoxDecoration(
                          color: petData.cor,
                          borderRadius: BorderRadius.circular(173.5),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                          height: screenSize.width * 0.93,
                          width: screenSize.width * 0.95,
                          child: Image.asset(petData.photos[0])),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: screenSize.height * 0.272,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.width * 0.069,
                    left: screenSize.width * 0.069,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.width * 0.026,
                          bottom: screenSize.width * 0.042,
                        ),
                        child: Text('About',
                            style: Theme.of(context).textTheme.headline6),
                      ),
                      Text(
                        petData.description,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: screenSize.width * 0.202,
              width: screenSize.width * 0.58,
              decoration: const BoxDecoration(
                color: Color.fromARGB(237, 255, 145, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(56),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets,
                    color: Colors.white,
                    size: screenSize.width * 0.064,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.042,
                  ),
                  Text(
                    'ADOPT',
                    style: Theme.of(context).textTheme.button,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
