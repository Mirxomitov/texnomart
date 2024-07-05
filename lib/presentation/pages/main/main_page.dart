import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/blocs/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/blocs/home/home_bloc.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
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
        if (state.bottomNavigationIndex == 2) {
          // change state of basket screen
          print('basket reload');
          context.read<BasketBloc>().add(LoadBasketData());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Builder(builder: (context) {
            if (state.status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return IndexedStack(
              index: state.bottomNavigationIndex,
              children: [
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
              ],
            );
          }),
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
/*return Scaffold(
          body: IndexedStack(
            index: state.bottomNavigationIndex,
            children: [
              BlocProvider(
                create: (context) => HomeBloc()..add(LoadAllFromApi()),
                child: const HomePage(),
              ),
              CatalogPage(catalogMenuUIModel: state.catalogMenuData),
              const BasketPage(),
              const OrdersPage(),
              const ProfilePage(),
            ],
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
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_business),
                label: "Buyurtmalar",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profil",
              ),
            ],
          ),
        );*/
/*return CupertinoTabScaffold(
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => HomeBloc()..add(LoadAllFromApi()),
                    child: const HomePage(),
                  ));
                });
              case 1:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => CatalogBloc()..add(GetCatalogMenuEvent()),
                    child: const CatalogPage(),
                  ));
                });
              case 2:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => BasketBloc(),
                    child: const BasketPage(),
                  ));
                });
              case 3:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => OrdersBloc(),
                    child: const OrdersPage(),
                  ));
                });
              case 4:
                return CupertinoTabView(builder: (context) {
                  return CupertinoPageScaffold(
                      child: BlocProvider(
                    create: (context) => ProfileBloc(),
                    child: const ProfilePage(),
                  ));
                });
              default:
                return Container();
            }
          },
          tabBar: CupertinoTabBar(
            onTap: (index) {
              context.read<MainBloc>().add(ChangeBottomNavigation(chosenIndex: index));
            },
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            backgroundColor: Colors.white,
            currentIndex: state.bottomNavigationIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Bosh sahifa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: "Katalog",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Savatcha",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_business),
                label: "Buyurtmalar",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Profil",
              ),
            ],
          ),
        );*/