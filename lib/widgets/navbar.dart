import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Theme.of(context).colorScheme.primaryContainer,
      //surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
      //backgroundColor: Theme.of(context).colorScheme.background,
      selectedIndex: currentPageIndex,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.history), label: "History"),
        NavigationDestination(selectedIcon: Icon(Icons.home),icon: Icon(Icons.home_outlined), label: "Home"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
