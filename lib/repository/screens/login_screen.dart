import 'package:flutter/material.dart';
import 'package:threads_app_set26/repository/screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image
          Container(
            child: Image.asset(
              'assets/images/login_screen/Pattern (2).png',
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          // Login With
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen() ));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.11,
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: Color(0xff191919),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 4,
                  //   blurRadius: 10,
                  //   offset: Offset(0, 3), // changes position of shadow
                  // ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02,
                    right: MediaQuery.of(context).size.width * 0.02,
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Log in with Google',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'DMSans',
                          color: Color(0xffB2B3B2)),
                    ),
                    subtitle: Padding(
                      padding:  EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.005,
                      ),
                      child: Text(
                        'Kelros AlRayan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'DMSans',
                            color: Colors.white),
                      ),
                    ),
                    trailing:
                        Image.asset('assets/images/login_screen/logo_google.png',
                        width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          Text(
            'Switch accounts',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'DMSans',
                color: Color(0xff999999)),
          ),
        ],
      ),
    );
  }
}
