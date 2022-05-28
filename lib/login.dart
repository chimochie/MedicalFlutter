import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/Home.dart';
import 'package:helloworld/signup.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40.4,
          ),
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            // onFieldSubmitted: (String value)
            // {
            //print(value);
            // },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              labelText: 'Email Address',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TextFormField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            // onFieldSubmitted: (String value)
            // {
            //print(value);
            // },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              color: Colors.blue,
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('don\'t have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
                child: Text('Resiter Now'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
