import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/widgets/elevated_button.dart';
import '../../../../components/widgets/custom_text_field.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const Text('Sign Up', style: TextStyle(fontSize: 30),),
            const SizedBox(height: 10,),
            const Text(
              'Integer ultricies dolor enim id sed pulvinar sagittis in. Morbi venenatis nunc turpis morbi. Vitae ullamcorper vehicula praesent lorem. ',
              style: TextStyle(fontSize: 15, color: Colors.grey),),
            const SizedBox(height: 50,),
            const CoustomTextField(label: "User Name", icon: Icons.person, obscureText: false),
            const SizedBox(height: 30,),
            const CoustomTextField(label: "Mail Address", icon: Icons.mail, obscureText: false),
            const SizedBox(height: 30,),
            const CoustomTextField(label: "Password", icon: Icons.remove_red_eye, obscureText: true),
            const SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(
                  width: 30,height: 30,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                        value: isChecked,
                        activeColor: Colors.red,
                        checkColor: Colors.white,
                        onChanged: (value){
                      setState(() {
                        if (kDebugMode) {
                          print(value);
                        }
                       isChecked = value;
                      });
                    }),
                  ),
                ),
                SizedBox(width: 10,),
                const Text('I agree to the terms & conditions', style: TextStyle(fontSize: 15),),
              ],
            ),
            const SizedBox(height: 30,),
            GlobalElevatedButton(text: 'Sign Up', onPressed: (){},),
            const SizedBox(height: 20,),
            const Center(child: Text("Or Sign Up with",style: TextStyle(fontSize: 15),)),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/button_image/google.png', width: 10, height: 10,),

              ],
            ),

          ],
        ),
      ),
    );
  }
}



