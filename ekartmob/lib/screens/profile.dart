import 'package:ekartmob/components/textComponent.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final TextEditingController _name = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Let's keep the profile updated",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 25),
            //email
            text_Field(
              hintText: "Name",
              obscureText: false,
              controller: _name,
            ),
            const SizedBox(height: 25),
            //email
            text_Field(
              hintText: "Age",
              obscureText: false,
              controller: _age,
            ),
            const SizedBox(height: 25),
            //email
            text_Field(
              hintText: "Address",
              obscureText: false,
              controller: _address,
            ),
            SizedBox(height: 10,),
            Center(
              child: TextButton(
                onPressed: (){},
             child: Container(
              height: 50,
              width:200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade500),
              borderRadius: const BorderRadius.all(Radius.elliptical(12, 19)),
             color: Colors.yellow.shade800,
              ),
              child: const Center(
                child: Text('Update Profile',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),),
              ),
              
             )))
          ],
        ),
      ),
    );
  }
}
