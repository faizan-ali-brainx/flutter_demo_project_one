
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/main.dart';
import 'package:flutter_demo_project_one/viewModels/UserViewModel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LoginScreenWidgetState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenWidget();
  }
}

class LoginScreenWidget extends State<LoginScreenWidgetState> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var _isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    setState(() {
      _isLoading = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/login_logo.svg",
                        height: 70,
                        width: 110,
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Text('Welcome to ClientDex',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: const [
                      Text('Enter your email address and password to continue'),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                        ),
                        hintText: 'Email',
                        filled: true,
                        fillColor: AppUtils.backgroundGrey,
                        border: InputBorder.none),
                  ),
                  const SizedBox(height: 14.0),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                        ),
                        hintText: 'Password',
                        filled: true,
                        fillColor: AppUtils.backgroundGrey,
                        border: InputBorder.none),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                      onPressed: () {
                        debugPrint("Login Button Clicked");
                        Provider.of<UserViewModel>(context, listen: false)
                            .loginUser(emailController.value.text,
                                passwordController.value.text)
                            .then(
                                (result) => {showLoginResult(result, context)});
                      },
                      child: const Text('LOG IN'),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Future<dynamic> showLoginResult(bool result, BuildContext context) {
    debugPrint("Showing login result: $result");
    setState(() {
      _isLoading = false;
    });
    if (result) {
      debugPrint("Success");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenWidget()),
      );
      return Future.value(0);
    } else {
      debugPrint("Show popup");
      return showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login Failed'),
              content: const Text('Incorrect email or password!'),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Okay'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreenWidget()),
                    );
                  },
                ),
              ],
            );
          });
    }
  }
}
