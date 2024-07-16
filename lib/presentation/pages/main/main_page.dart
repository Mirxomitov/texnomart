import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
import 'package:texnomart/presentation/pages/catalog/catalog.dart';
import 'package:texnomart/presentation/pages/home/home.dart';
import 'package:texnomart/presentation/pages/orders/orders.dart';
import 'package:texnomart/presentation/pages/profile/profile.dart';

import '../../blocs/catalog/catalog_bloc.dart';
import '../../blocs/home/home_bloc.dart';
import '../basket/basket_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        print('builder: index changed state.controller.index: ${state.controller.index}');
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            onTap: (int index) {
              context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: index));
            },
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            inactiveColor: Colors.black45,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/home_icon.svg', height: 24, width: 24, color: state.controller.index == 0 ? Colors.black :Colors.grey),
                label: 'Bosh sahifa',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_search_rounded,
                  size: 24,
                ),
                label: 'Katalog',
              ),
              BottomNavigationBarItem(
                icon: badges.Badge(
                  showBadge: state.notificationCount != 0,
                  badgeContent: Text("${state.notificationCount}"),
                  badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xfffdc202)),
                  child: SvgPicture.asset('assets/svgs/icon_basket.svg', height: 24, width: 24, color: state.controller.index == 2 ? Colors.black :Colors.grey),
                ),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/order_icon.svg', height: 24, width: 24, color: state.controller.index == 3 ? Colors.black :Colors.grey),
                label: 'Buyurmalar',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/profile_icon.svg', height: 24, width: 24, color: state.controller.index == 4 ? Colors.black :Colors.grey),
                label: 'Profil',
              ),
            ],
          ),
          controller: state.controller,
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => HomeBloc()..add(LoadAllFromApi()),
                    child: HomePage(),
                  ));
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                    child: BlocProvider(
                      create: (context) => CatalogBloc()..add(GetCatalogMenuEvent()),
                      child: const CatalogPage(),
                    ),
                  );
                });

              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(child: BasketPage());
                });

              case 3:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: OrdersPage());
                });

              case 4:
                return CupertinoTabView(builder: (context) {
                  return const CupertinoPageScaffold(child: ProfilePage());
                });
              default:
                return const CupertinoTabView();
            }
          },
        );
      },
    );
  }
}

/* return Scaffold(
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
                    const ProfilePage(),
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
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.manage_search_outlined),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: badges.Badge(
                  showBadge: state.notificationCount != 0,
                    badgeStyle: badges.BadgeStyle(
                      badgeColor: Theme.of(context).primaryColor,
                    ),
                    badgeContent: Text("${state.notificationCount}", style: const TextStyle(fontSize: 10)),
                    child: const Icon(Icons.shopping_cart_rounded),
                  ),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.add_business),
                label: "Buyurtmalar",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person_outline),
                label: "Profil",
              ),
            ],
          ),
        );*/
