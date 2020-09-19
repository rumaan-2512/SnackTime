import 'package:flutter/material.dart';
import 'package:snacktime/Services/authentication.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authenticate = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(backgroundColor: Colors.lightBlue[500],
      elevation: 0.0,
      title: Text('SignIn to SnackTime'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          elevation: 4,
          color: Color(0xffffffff),
          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.lightBlue,
                      width: 1.0
                      
                    ),
                  ),
          child: Text('Sign In Anonymously',
          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.lightBlue,
                            fontFamily: "Source Sans Pro"),
                      ),
          onPressed: () async{
            

           dynamic res = await _authenticate.anonSignIn();
           if(res == null){
             print("Error in anonymous SignIn");
           }else{
             print("signed in");
             print(res);
           }


          },
         ),
      ),


      
    );
  }
}