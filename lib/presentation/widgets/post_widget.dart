import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  Post({
    super.key,
  });
  final dp = FirebaseFirestore.instance.collection('user');
  final uid = FirebaseAuth.instance.currentUser?.uid;
  int index = 0;
  final List listOfPhotos = <Map<String, String>>[
    {'image': 'assets/images/home_screen/1686060851856.jpg'},
    {'image': 'assets/images/home_screen/1689079088943.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dp.doc(uid).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            final data = snapshot.data?.data() as Map<String, dynamic>;
            final name = data['username'];
            final photo = data['photo'];
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(photo),
                      ),
                      title: Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '5m',
                            style: TextStyle(
                              fontFamily: 'DMSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xffB5B5B5),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            'assets/images/home_screen/Frame 3.png',
                            width: 24,
                            color: Colors.black,
                          )
                        ],
                      ),
                      subtitle: Text(
                        'It\'s Amazing',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70, right: 20),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(listOfPhotos[index]['image']),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 70,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/home_screen/like button.png',
                            width: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/home_screen/Button ⏵ Img - Comment.png',
                            width: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/home_screen/Button ⏵ Img - Repost.png',
                            width: 24,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/home_screen/Button ⏵ Img - Share.png',
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Stack(
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
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/home_screen/Ellipse 205.png'),
                                  radius: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: Container(
                            height: 50,
                            child: Text(
                              '226 replies . 1312 likes',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 35,
                  top: 63,
                  child: Container(
                    width: 3,
                    height: 350,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(1)),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xffD9D9D9),
                ),
              ],
            );
          }
        }
        return SizedBox();
      },
    );
  }
}
