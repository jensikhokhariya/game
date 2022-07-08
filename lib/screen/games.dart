import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  List gname = [
    "assets/images/bubble2.webp",
    "assets/images/gbloom.jpeg",
    "assets/images/omnom2.jpeg",
    "assets/images/onetcon.webp",
    "assets/images/ZooBoom.jpg"
  ];
  List glist = [
    "https://html5games.com/Game/Bubble-Tower-3D/1385d98a-b5f2-4339-bce7-b99a8dd2e8b0",
    "https://html5games.com/Game/Garden-Bloom/3f504f07-d674-4a4d-a02e-89e7414d8f26",
    "https://html5games.com/Game/Om-Nom-Run/abe80572-560a-444d-baf7-2fa4a7b2c02f",
    "https://html5games.com/Game/Onet-Connect-Classic/d6173a60-1b41-4b34-b4c3-aa4c5fc9ce35",
    "https://html5games.com/Game/Zoo-Boom/5e772ebe-9e0a-4cd3-adcf-bba662f35535",
  ];
  List name = [
    "bubble",
    "Gardenbloom",
    "Omnom",
    "Onet connect classic",
    "ZooBoom"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Games"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
              itemCount: gname.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'page2',
                          arguments: glist[index]);
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 90,
                        width: 90,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Image.asset(
                                  gname[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
