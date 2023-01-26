import 'package:challenge02_fteam/src/mockup/pets_data.dart';
import 'package:challenge02_fteam/src/widgets/app_bar_widget.dart';
import 'package:challenge02_fteam/src/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import '../mockup/buttons_data.dart';
import '../widgets/profile_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final listPets = petsDataList;
    final buttons = buttonsDataList;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.width * 0.272,
        flexibleSpace: const AppBarWidget(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 210, 210),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width * 0.064),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: screenSize.width * 0.058,
                    bottom: screenSize.width * 0.069),
                child: SizedBox(
                  height: screenSize.width * 0.128,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: buttons.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ButtonWidget(buttonsList: buttons[index]);
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listPets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/two',
                            arguments: listPets[index]);
                      },
                      child: ProfileCardWidget(petsData: listPets[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
