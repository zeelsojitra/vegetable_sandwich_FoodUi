import 'package:flutter/material.dart';
import 'package:vegetable_sandwich/detail_screen.dart';

class friist extends StatelessWidget {
  List name = [
    'Vegetable Sandwich',
    'Salmon Bowl',
    'Green Sandwich',
  ];

  List name1 = [
    'Beef Bowl',
    'Beef and Egg Bowl',
    'Fruit Bowl',
  ];
  List rate = [
    '4.3',
    '4.5',
    '5.0',
  ];
  List rank = [
    '(403)',
    '(400)',
    '(500)',
  ];

  List price = [
    '\$24.00',
    '\$25.00',
    '\$30.00',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.tune,
                      size: 30,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  height: 50,
                  width: 480,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          offset: Offset(1, 1),
                          blurRadius: 2,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: Colors.red,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Your Favourites',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(
                          3,
                          (index) => Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailSCreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 160,
                                  height: 185,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xff87e0dc),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          name[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              rate[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              rank[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                price[index],
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              MaterialButton(
                                                onPressed: () {},
                                                height: 30,
                                                minWidth: 60,
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                child: Text(
                                                  'Add',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: -35,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/food_dish.png'),
                                  radius: 55,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("DINNER"),
                          SizedBox(
                            width: 80,
                          ),
                          Text("LUNCH"),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "BREAKFAST",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (index) => Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 100,
                              width: 310,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  color: Color(0xff87e0dc),
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(60),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              name1[index],
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '\$25.00',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {},
                                            height: 30,
                                            minWidth: 60,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Text(
                                              'Add',
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: -30,
                              // right: 250,
                              top: -5,
                              //bottom: 0,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/food_dish.png'),
                                radius: 60,
                              ),
                            )
                          ],
                        ),
                      ),
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
