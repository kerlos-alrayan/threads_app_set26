import 'package:flutter/material.dart';
import 'package:threads_app_set26/presentation/widgets/post_widget.dart';

/// Flutter code sample for [TabBar].

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreen();
}

class _AccountScreen extends State<AccountScreen>
    with SingleTickerProviderStateMixin {
  final threadsController = TextEditingController();
  final repliesController = TextEditingController();
  bool isLoading = true;
  late TabController tabController;

  @override
  void dispose() {
    threadsController.dispose();
    repliesController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.035,
                  right: MediaQuery.of(context).size.width * 0.035,
                  top: 5,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/account_screen/world.png',
                      width: 24,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/account_screen/Instagram.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/account_screen/Frame.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  title: Text(
                    'Kerlos Sherif',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'kerlos-alrayan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32,
                        width: 87,
                        decoration: BoxDecoration(
                          color: Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          'threads.net',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff999999),
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/home_screen/1685999314142.jpg'),
                            fit: BoxFit.cover)),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.035,
                  right: MediaQuery.of(context).size.width * 0.035,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/home_screen/Ellipse 204.png'),
                              radius: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/home_screen/Ellipse.png'),
                                radius: 10,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '22k followers . ',
                          style: TextStyle(
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff9A9A9A),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'kerlos-alrayan.github.io',
                            style: TextStyle(
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff9A9A9A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(150, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(150, 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Share profile',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    text: 'Threads',
                  ),
                  Tab(
                    text: 'Replies',
                  ),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.black,
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ListView(children: [
                      Post(),
                      Post(),
                      Post(),
                      Post(),
                      Post(),
                    ]),
                    Center(
                      child: Text('You haven\'t posted any replies yet.'),
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

  Future signUp() async {}
}
