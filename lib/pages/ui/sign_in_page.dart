import 'package:flutter/material.dart';
import 'package:varana_v2/pages/widgets/custom_button.dart';
import 'package:varana_v2/pages/widgets/custom_text_form_field.dart';
import 'package:varana_v2/shares/theme.dart';
import 'package:varana_v2/shares/variables.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        width: 156,
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(logoHorizontal),
          ),
        ),
      );
    }

    Widget illustration() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 227,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ilLogin),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Text(
              "Login",
              style: headingTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Please enter your username & password ',
              style: greyTextStyle.copyWith(
                fontSize: 13,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return CustomTextFormField(
        hint: 'Username',
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
      );
    }

    Widget passwordInput() {
      return CustomTextFormField(
        hint: 'Password',
        obscureText: true,
        margin: EdgeInsets.only(
          top: 15,
          left: defaultMargin,
          right: defaultMargin,
        ),
      );
    }

    Widget button() {
      return Padding(
        padding: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 50,
        ),
        child: GreenButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main-sales');
          },
          text: 'Login',
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            illustration(),
            title(),
            usernameInput(),
            passwordInput(),
            button(),
          ],
        ),
      ),
    );
  }
}
