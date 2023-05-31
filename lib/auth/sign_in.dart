import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
class SignIn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png')
          )
        ) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              height: 400,
              //color: Colors.red,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Sign in to continue",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      Text("Pizza App" ,
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.green.shade900,
                                offset: Offset(3,3),
                              )
                            ]
                          )
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SignInButton(Buttons.AppleDark,
                          text: "Sign in with Apple",
                          onPressed: (){}
                      ),
                      SignInButton(Buttons.GoogleDark,
                          text: "Sign in with Google",
                          onPressed: (){}
                      ),
                      SignInButton(Buttons.Email,
                          text: "Sign in with Email",
                          onPressed: (){}
                      ),
                      SignInButton(Buttons.FacebookNew,
                          text: "Sign in with Facebook",
                          onPressed: (){}
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                        Text("By signing in you are agreeing to our",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      ),),
                       Text("Terms and Privacy Policy",
                        style: TextStyle(
                          color: Colors.white70,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),
    ) ;
  }
}
