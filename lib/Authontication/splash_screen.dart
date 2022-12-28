import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:uiu/Authontication/sign_in.dart';
import 'package:uiu/Authontication/sign_in_or_up.dart';

import '../Page All/home_page.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


  Future<void> goToScreen() async {
    final prefes = await SharedPreferences.getInstance();
    await prefes.setString('token', '');
    String token= prefes.getString('token')!;

    if(token.isEmptyOrNull){
      await Future.delayed(const Duration(seconds: 3)).then((value) => const SignInOrUp().launch(context));
    }else{
      await Future.delayed(const Duration(seconds: 3)).then((value) => const HomePage().launch(context));
    }
}

@override
  void initState() {
   goToScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/screen.png'),
          )
        ),
      ),
    );
  }
}
