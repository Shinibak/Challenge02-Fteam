import 'package:challenge02_fteam/src/mocap/pets_data.dart';
import 'package:challenge02_fteam/src/widgets/Custom_button_widget.dart';
import 'package:challenge02_fteam/src/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var listPets = petsDataList;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: SizedBox(
                    height: screenSize.height * 0.08,
                    width: screenSize.width * 0.12,
                    child: Image.asset(
                      'images/Icons/menus.png',
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Location'),
                    Text('Cameron St., Boston'),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.08,
                  width: screenSize.width * 0.12,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/avatar/felipe.png'),
                    radius: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 252, 143, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                  bottom: Radius.circular(0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CustomButton(icon: 'options', textButton: ''),
                        CustomButton(icon: 'Dogs', textButton: 'Dogs'),
                        CustomButton(icon: 'Cats', textButton: 'Cats'),
                        CustomButton(icon: 'Birds', textButton: 'Birds'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    height: screenSize.height * 0.782,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: listPets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: CustomCard(petsData: listPets[index]),
                        );
                      },
                    ),
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
