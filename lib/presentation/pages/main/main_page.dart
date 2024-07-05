import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:texnomart/presentation/blocs/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/blocs/home/home_bloc.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
import 'package:texnomart/presentation/blocs/profile/profile_bloc.dart';
import 'package:texnomart/presentation/pages/catalog/catalog.dart';
import 'package:texnomart/presentation/pages/home/home.dart';
import 'package:texnomart/presentation/pages/orders/orders.dart';
import 'package:texnomart/presentation/pages/profile/profile.dart';

import '../../../utils/status.dart';
import '../../blocs/basket/basket_bloc.dart';
import '../basket/basket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
        context.read<BasketBloc>().add(LoadBasketData());
        setState(() {});
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Builder(
            builder: (context) {
              return switch (state.status) {
                Status.loading => Container(alignment: Alignment.center, child: Lottie.asset("assets/lottie/loading.json", width: 34, height: 34)),
                Status.success => IndexedStack(index: state.bottomNavigationIndex, children: [
                    BlocProvider(
                      create: (context) => HomeBloc()..add(LoadAllFromApi()),
                      child: const HomePage(),
                ),
                BlocProvider(
                  create: (context) => CatalogBloc()..add(GetCatalogMenuEvent()),
                  child: const CatalogPage(),
                ),
                const BasketPage(),
                    const OrdersPage(),
                    BlocProvider(
                      create: (context) => ProfileBloc(),
                      child: const ProfilePage(),
                    ),
                  ]),
                Status.fail => const Center(child: Text('Kutilmagan xatolik', style: TextStyle(color: Colors.red))),
                Status.initial => const Center(),
              };
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.bottomNavigationIndex,
            onTap: (int index) {
              context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: index));
            },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Bosh sahifa",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: badges.Badge(
                  showBadge: state.notificationCount != 0,
                  badgeContent: Text("${state.notificationCount}"),
                  child: const Icon(Icons.shopping_cart_rounded),
                ),
                label: "Savatcha",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.add_business),
                label: "Buyurtmalar",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profil",
              ),
            ],
          ),
        );
      },
    );
  }
}