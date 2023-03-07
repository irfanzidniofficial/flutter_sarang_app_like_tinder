import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sarang_app_like_tinder/src/app.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/bloc/auth_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(),)
      ],
    
      child: AppScreen(),
    );
  }
}
