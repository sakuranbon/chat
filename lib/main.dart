import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/log_in.dart';
import 'package:flutter/material.dart';
import 'options.dart';


void main() async{

  //問１: Firebaseの機能を利用する場合は、このコード忘れずに追加しましょう。
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await Firebase.initializeApp();  FlutterFire CLiを使用しなかった場合
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirebaseExercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //この部分を問題に合わせて適時変更してください。
      home: const AuthExercise(userId: '',),
    );
  }
}
