import 'package:flutter/material.dart';
import 'loginWidget.dart';
import 'signUpWidget.dart';
SignUpWidget signUpWidget = SignUpWidget();
LoginPageWidgets loginPageWidgets = LoginPageWidgets();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loginPressed = false;
  bool signPressed = true;
  void onSubmit(String email, String password) {
    // Your login logic here
    print('Email: $email, Password: $password');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8.0, 18.0, 1.0, 4.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          signPressed = true;
                          loginPressed = false;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'signin',
                        style: TextStyle(
                          color: signPressed ? Colors.black : Colors.grey,
                          fontSize: loginPressed ? 18 : 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 18.0, 25.0, 8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            signPressed = false;
                            loginPressed = true;
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Change background color based on state
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'login ',
                          style: TextStyle(
                            color: loginPressed ? Colors.black : Colors.grey,
                            fontSize: signPressed
                                ? 18
                                : 40, // Change font size based on state
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),
          Container(
            child: loginPressed
                ? Center(
              child: LoginPageWidgets.buildLoginForm(context, onSubmit),
            )
                : Center(
              child: SignUpWidget(),
              ),
            ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
