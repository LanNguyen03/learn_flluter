import 'dart:html';

import 'package:flutter/material.dart';

class TulamUI extends StatefulWidget {
  const TulamUI({super.key});

  @override
  State<TulamUI> createState() => _TulamUIState();
}

class _TulamUIState extends State<TulamUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Welcome Back ✌",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
        
                  SizedBox(height: 15),
        
                  Text("Today is a new day. It is your day. You shape it.",),
                  Text('Sign in to start managing your projects.')
                ],
                ),
              
              const SizedBox(height: 30),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  
                  const SizedBox(
                    height: 7,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ]
                    ),

                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '    Exampple@email.com',
                      ),
                    ),
                  )

                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  
                  const SizedBox(
                    height: 7,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                        )
                      ]
                    ),

                    child: const TextField(
                      obscureText: true, // ẩn pass
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '    At least 8 characters',
                      ),
                    ),
                  )

                ],
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () => print("lan da bam Forgot Password?"),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              InkWell(
                onTap: ()=>print('sigin'),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                        color: const Color.fromRGBO(22, 45, 58, 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                          )
                        ]
                      ),
              
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              Container(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Or sign in with',
                ),
              ),

              const SizedBox(
                height: 40,
              ),


          InkWell(
                onTap: ()=>print('sigin'),
                child: Column(
                  children: [
                    Text('data'),
                    SvgPicture.asset("asset/Google.svg")
                  ],
                ),
                child: Container(
                  
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                        color: const Color.fromRGBO(243, 249, 250, 1),
                        // borderRadius: BorderRadius.circular(10),
                        // boxShadow: const [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 1,
                        //   )
                        // ]
                      ),
              
                  child: const Text(
                    'Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),



                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Don not you have an account?',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),

              const SizedBox(
                height: 70,
              ),

              Container(
                alignment: Alignment.center,
                child: const Text(
                  '© 2023 ALL RIGHTS RESERVED',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              )

            ],
          ),
        ),
    ),
    );
  }
}