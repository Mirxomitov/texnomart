import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:texnomart/presentation/blocs/product_details/product_details_bloc.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, alignment: Alignment.center, child: Lottie.asset("assets/lottie/loading.json", width: 34, height: 34));
  }
}

class ErrorState extends StatelessWidget {
  const ErrorState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Kutilmagan xatolik', style: TextStyle(color: Colors.red)));
  }
}
