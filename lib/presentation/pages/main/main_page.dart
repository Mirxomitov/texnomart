import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/blocs/home/home_bloc.dart';
import 'package:texnomart/presentation/blocs/main/main_bloc.dart';
import 'package:texnomart/presentation/pages/basket/basket.dart';
import 'package:texnomart/presentation/pages/catalog/catalog.dart';
import 'package:texnomart/presentation/pages/home/home.dart';
import 'package:texnomart/presentation/pages/orders/orders.dart';
import 'package:texnomart/presentation/pages/profile/profile.dart';

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
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomNavigationIndex,
            children: [
              BlocProvider(
                create: (context) => HomeBloc()..add(LoadAllFromApi()),
                child: const HomePage(),
              ),
              CatalogPage(catalogMenuUIModel: state.catalogMenuUIData),
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
        );
      },
    );
  }
}
