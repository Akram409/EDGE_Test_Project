import 'package:flutter/material.dart';

class TextFieldPractice extends StatefulWidget {
  const TextFieldPractice({super.key});

  @override
  State<TextFieldPractice> createState() => _TextFieldPracticeState();
}

class _TextFieldPracticeState extends State<TextFieldPractice> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void validateInfo(String email,String password)
  {
    print("Email: "+email+"Passowrd: "+password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Your Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;

                  if(!email.contains("@") || !email.contains(".")){
                    print("Email Is not Valid!!");
                  }
                  else if(password.length < 4)
                    {
                      print("Password minimum 4 digit");
                    }
                  else{
                    validateInfo(email, password);
                  }

                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
