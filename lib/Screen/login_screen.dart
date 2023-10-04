import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yatri_rsot/Screen/sign_up_screen.dart';
import 'home_screen.dart';
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}
class _Login_ScreenState extends State<Login_Screen> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo;
    }
    return Colors.indigo;
  }
  bool passwordVisible = true;
  void initSate() {
    super.initState();
    passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.person,color: Colors.green,
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: '',
                labelText: "User Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            TextField(
              obscureText: passwordVisible,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: Icon(
                  Icons.lock,color: Colors.green,
                ),
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                //helperText: "Password must contain special character",
                helperStyle: TextStyle(color: Colors.indigo[900]),
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(
                          () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                alignLabelWithHint: false,
                filled: true,
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
            ),
            SizedBox(height: 20,),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 45,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Home_screen()),
                            );
                          }, child: const Text("Log In",style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Dont have an account ?"),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => Sign_UP_Screen()),
                          );

                        },
                          child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
