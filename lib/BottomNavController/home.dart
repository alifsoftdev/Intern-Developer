import 'package:flutter/material.dart';
import 'package:intern_developer/const/appColor.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Column(children: [
        Expanded(
          flex: 7,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 56),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1.5, 2),
                      colors: [
                        Color.fromARGB(255, 1, 80, 44),
                        Color(0xff042E2B),
                        Color(0xFF038867),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, Kawser 👋',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Let’s explore your notes',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Color(0xff24966D),width: 2,style: BorderStyle.solid),
                                image: DecorationImage(image: AssetImage('assets/profileimg/profile.jpg'))
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Stack(
                          children: [
                            Container(
                              height: 139,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Color(0xFF1B503E),
                                border: Border.all(
                                    color: AppColor.white,
                                    width: 0.2,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Welcome to TickTick Task',
                                      style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Your one-stop app for task management. Simplify,\ntrack, and accomplish tasks with ease.',
                                      style: TextStyle(
                                        color: AppColor.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      height: 31,
                                      width: 109,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              color: AppColor.white,
                                              width: 0.5,
                                              style: BorderStyle.solid),
                                          color: Color(0xff24966D)),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.play_arrow,
                                              color: AppColor.white,
                                            ),
                                            Text(
                                              'Watch Video',
                                              style: TextStyle(
                                                  color: AppColor.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                right: -14,
                                bottom: -18,
                                child: Image.asset(
                                  'assets/sticker/sticker.png',
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Reminder Task",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 360),
                child: SizedBox(
                  height: 91,
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      reminderTask(),
                      SizedBox(
                        width: 10,
                      ),
                      reminderTask2(),
                      SizedBox(
                        width: 10,
                      ),
                      reminderTask3(),
                      SizedBox(
                        width: 10,
                      ),
                      reminderTask(),
                      SizedBox(
                        width: 10,
                      ),
                      reminderTask2(),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All Task",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                      SizedBox(
                        width: 10,
                      ),
                      allTask(() {}),
                    ],
                  ))
                ],
              ),
            ))
      ]),
    );
  }

  Widget reminderTask() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 91,
        width: 139,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColor.white),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/sticker/to_do_list.png',
              ),
              Text(
                'Online Class Routine',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Save Date: 10/12/2022',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget reminderTask2() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 91,
        width: 139,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColor.white),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/sticker/to_do_list_2.png',
              ),
              Text(
                'Office Work List',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Save Date: 15/12/2022',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget reminderTask3() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 91,
        width: 139,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColor.white),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/sticker/to_do_list_3.png',
              ),
              Text(
                'Day Task',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Save Date: 10/12/2022',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget allTask(onclick) {
    return InkWell(
      onTap: onclick,
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(
              'assets/sticker/to_do_list.png',
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online Class Routine',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xff042E2B)),
                ),
                Text(
                  'Save Date: 10/12/2022',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
