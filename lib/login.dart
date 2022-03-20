import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux/customButton.dart';
import 'package:ux/mytheme.dart';
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ]
                  ),

                  padding:EdgeInsets.only(left: 10.0,right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       const SizedBox(
                        height: 40.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                'sign in to continue',
                                style: TextStyle(
                                  color:Colors.grey,

                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            child:  Text(
                              'SignIn',
                              style: TextStyle(color: MyTheme.primaryColor,),
                            ),
                            onTap: () {
                              //TODO: go to
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:  InputDecoration(
                                hintText: 'Email',
                                labelText: 'Email'
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration:  InputDecoration(
                                  hintText: 'password',
                                  labelText: 'password'
                              ),
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  'Forget Password?',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 5.0,left: 5.0,bottom: 7.0),
                              child: CustomButton(title: 'SIGN IN',onTap: (){},),
                            ),
                          ],
                        )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('-OR-' , style: TextStyle(fontSize: 18),),
                const SizedBox(
                  height: 30,
                ),
                            InkWell(
                              onTap: (){
                                //TODO: facebook auth
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey[300]! , width: .5),
                                  borderRadius:BorderRadius.circular(6.0),
                                ),


                                margin: const EdgeInsets.only(left: 15, right: 15 , bottom: 10),
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.facebook , color: Colors.blue,),
                                    Text('Sign In With Facebook')
                                  ],
                                ),
                              ),
                            ),
          InkWell(
            onTap: (){
              //TODO: google auth
            },
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[300]! , width: .5),
                borderRadius:BorderRadius.circular(6.0),
              ),

              margin: const EdgeInsets.only(left: 15, right: 15 , bottom: 10),
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.social_distance , color: Colors.red,),
                  Text('Sign In With Google    ')
                ],
              ),
            ),
          ),




                          ],
                        ),
                      ),





                      ),

    );
  }
}
