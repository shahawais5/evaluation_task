import 'dart:math';
import 'package:elevation_task/custom_txtfield.dart';
import 'package:elevation_task/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'config_color.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildCircleAvatar(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome to Mr Tailor',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFields(
                keyboardType: TextInputType.text,
                hintText: 'Enter User Name',
                labtext: 'User Name',
                ObsecureText: false,
                suffixIcon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                controller: nameController),
            CustomTextFields(
                ObsecureText: true,
                suffixIcon: const Icon(Icons.visibility_off_rounded),
                keyboardType: TextInputType.text,
                hintText: 'Enter Password',
                labtext: 'password',
                controller: passwordController),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text('Sign-In with'),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                SignInButton(
                  Buttons.Google,
                  mini: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.Facebook,
                  mini: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.Twitter,
                  mini: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.LinkedIn,
                  mini: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: textColor),
                ),
                const Text(
                  'Create One',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatar() {
    return Padding(
      padding: const EdgeInsets.only(top: 140),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final radius =
              min(constraints.maxHeight / 4, constraints.maxWidth / 6);
          return Center(
            child: CircleAvatar(
              radius: 63,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: radius,
                  child: const Image(
                    height: 80,
                    image: NetworkImage(
                        'https://th.bing.com/th/id/R.d635c6d1ffeea4a56f31a9ddfa71ff7f?rik=62XWVq%2fRM1ROog&pid=ImgRaw&r=0'),
                  )),
            ),
          );
        },
      ),
    );
  }
}
