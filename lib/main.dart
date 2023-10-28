import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_app_set26/cubits/post_cubit/post_cubit.dart';
import 'package:threads_app_set26/firebase_options.dart';
import 'package:threads_app_set26/presentation/screens/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
final GlobalKey<ScaffoldMessengerState> globalMessenger = GlobalKey<ScaffoldMessengerState>();
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PostCubit(context)),
      ],
      child: MaterialApp(
        navigatorKey : navigatorKey,
        scaffoldMessengerKey: globalMessenger,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
