import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/widgets/elevated_button.dart';
import 'package:movie_app/presentations/auth/pages/signup/widgets/sign_form.dart';
import '../../../../components/widgets/custom_text_field.dart';


class SignupPage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Color(0xff1E1E1E),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10,top: 10),
        child: SignupForm()
      ),
    );
  }
}



