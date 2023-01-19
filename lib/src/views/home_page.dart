import 'package:challenge02_fteam/src/mocap/pets_data.dart';
import 'package:challenge02_fteam/src/widgets/custom_appbar_widget.dart';
import 'package:challenge02_fteam/src/widgets/custom_button_widget.dart';
import 'package:challenge02_fteam/src/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import '../mocap/buttons_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final listPets = petsDataList;
    final buttons = buttonsDataList;

    return Scaffold(
      body: Column(
        children: [
          const CustomAppBarWidget(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 210, 210),
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
                  SizedBox(
                    height: screenSize.height * 0.08,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: buttons.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CustomButtonWidget(buttonsList: buttons[index]);
                      },
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    height: screenSize.height * 0.782,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listPets.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/two',
                                arguments: listPets[index]);
                          },
                          child: CustomCardWidget(petsData: listPets[index]),
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
