import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/blocs/basket/basket_bloc.dart';
import 'package:texnomart/presentation/blocs/home/home_bloc.dart';
import 'package:texnomart/presentation/blocs/profile/profile_bloc.dart';
import 'package:texnomart/presentation/pages/home/home.dart';

import '../presentation/blocs/main/main_bloc.dart';
import '../presentation/pages/main/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Color(0xfffdc202)));

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainBloc()),
        BlocProvider(create: (_) => BasketBloc()..add(LoadBasketData())),
        BlocProvider(create: (_) => ProfileBloc()..add(LoadProfileData())),
      ],
      child: MaterialApp(
        title: 'Texnomart',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xfffdc202),
            primary: const Color(0xfffdc202),
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFF3F1F1),
          splashColor: Colors.transparent,

        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MainPage(),
          '/home': (context) => BlocProvider(
                create: (context) => HomeBloc(),
                child: const HomePage(),
              ),
        },
      ),
    );
  }
}
