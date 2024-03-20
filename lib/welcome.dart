import 'package:flutter/material.dart';
import 'package:signup_page/login.dart';
import 'package:signup_page/sign_up.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Welcome',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            ),
            Text('Slash Flutter provides extraordinary flutter tutorials. Do Subscribe!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),),
            SizedBox(height: 30,),
            Image.network('https://play-lh.googleusercontent.com/VkIsOP40ukvVf4sdKtN2LjjOJs3w24g93KzgrmBbf1zm05ORr-ka_oKCkC3_5Pu3JnSz=w240-h480-rw'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                    minimumSize:Size(20, 50)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: const BorderSide(
                      color: Colors.black,
                    ),
                      minimumSize:Size(20, 50)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
