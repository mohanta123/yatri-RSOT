import 'package:flutter/material.dart';

import 'login_screen.dart';
class Sign_UP_Screen extends StatefulWidget {
  const Sign_UP_Screen({super.key});

  @override
  State<Sign_UP_Screen> createState() => _Sign_UP_ScreenState();
}

class _Sign_UP_ScreenState extends State<Sign_UP_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.person,color: Colors.green,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: '',
                labelText: "Enter Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.phone,color: Colors.green,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: '',
                labelText: "Enter Ph No",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("New Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.lock,color: Colors.green,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: '',
                labelText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Confirm Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.lock,color: Colors.green,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: '',
                labelText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 40,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Login_Screen()),
                        );
                      }, child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold
                  ),))),
            ),
          ],
        ),
      ),

    );
  }
}
