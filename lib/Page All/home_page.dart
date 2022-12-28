import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:uiu/Authontication/sign_in_or_up.dart';
import 'package:uiu/Model/User_profile_model.dart';
import 'package:uiu/Repository/auth_repo.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<UserProfileModel>(
            future: AuthRepo().getProfile() ,
            builder: (_, snapshot){
          if(snapshot.hasData){
            return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(snapshot.data?.data?.user?.image ?? ''),
                ),
                Text(snapshot.data?.data?.user?.name?? '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
                Text(snapshot.data?.data?.user?.email?? '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
                Text(snapshot.data?.data?.user?.phone?? '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
                Text(snapshot.data?.data?.user?.wallet?.balance.toString()?? '',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20,),
                const Text('Log Out').onTap(() async {
                  final prefes= await SharedPreferences.getInstance();
                  await prefes.setString('token', '');
                  const SignInOrUp().launch(context);
                })
              ],
            );
          }else{
            return const CircularProgressIndicator();
          }
        })
      ),
    );
  }
}
