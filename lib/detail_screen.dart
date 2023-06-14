import 'package:flutter/material.dart';

class DetailSCreen extends StatefulWidget {
  const DetailSCreen({Key? key}) : super(key: key);
  @override
  _DetailSCreenState createState() => _DetailSCreenState();
}

class _DetailSCreenState extends State<DetailSCreen> {
  int counter = -1;
  List name1 = [
    'WEIGHT',
    'CALORIES',
    'VITAMINS',
  ];
  List cal = [
    'G',
    'CAL',
    'B6',
  ];
  List gr = ['250', '250', 'A,'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tune,
                      color: Colors.red,
                    )),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vegetable',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sandwich',
                              style: TextStyle(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '\$24.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.teal.shade300,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 25,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        counter = index;
                                      });
                                    },
                                    child: Container(
                                      width: 150,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: counter == index
                                            ? Colors.teal.shade200
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              name1[index],
                                              style: TextStyle(
                                                color: Colors.grey.shade200,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  gr[index],
                                                  style: TextStyle(
                                                      color: counter == index
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  cal[index],
                                                  style: TextStyle(
                                                      color: counter == index
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                )),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Text(
                                  '\$72.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Icon(
                                    Icons.double_arrow,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -130,
                    left: 0,
                    right: 0,
                    child: Image.network(
                      'https://avonleamall.com/wp-content/uploads/2018/03/bigstock-Plate-with-delicious-vegetable-217706134.png',
                      height: 300,
                      width: 300,
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
