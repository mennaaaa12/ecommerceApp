import 'package:ecommerceapp/core/constant/colors.dart';
import 'package:ecommerceapp/features/home/main_home/ui/home_view.dart';
import 'package:ecommerceapp/features/home/main_order_history/ui/order_history.dart';
import 'package:ecommerceapp/features/home/main_profile/ui/main_profile.dart';
import 'package:flutter/material.dart';

class HomeViewNavigatorButton extends StatefulWidget {
  const HomeViewNavigatorButton({super.key});

  @override
  State<HomeViewNavigatorButton> createState() => _HomeViewNavigatorButtonState();
}

class _HomeViewNavigatorButtonState extends State<HomeViewNavigatorButton> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const HistoryScreen(),
    const OrderHistory(),
    const MainProfile(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: primaryColor, 
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}





class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('History Screen'));
  }
}


