import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool ontap = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(25),
        ),
        height: screenSize.height * 0.15,
        width: screenSize.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: screenSize.height * 0.15,
                      width: screenSize.width * 0.25,
                      child: Image.asset(
                        'imagens/catzinho.png',
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.03,
                    ),
                    Column(
                      children: const [
                        Text('Spark'),
                        Text('Golden'),
                        Text('Female'),
                        Text('Female'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
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
                    SizedBox(
                      width: screenSize.width * 0.005,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
