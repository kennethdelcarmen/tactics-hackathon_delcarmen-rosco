import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:discourse_app/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map> tabs = [
      {
        'icon': FontAwesomeIcons.house,
        'label': 'Home',
      },
      {
        'icon': FontAwesomeIcons.locationDot,
        'label': 'Addresses',
      },
      {
        'icon': FontAwesomeIcons.list,
        'label': 'Transactions',
      },
      {
        'icon': FontAwesomeIcons.solidUser,
        'label': 'Account',
      }
    ];

    return AutoTabsScaffold(
        routes: const [
          QueryListRoute(),
          PickSourceRoute(),
          QueryListRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(color: Color.fromARGB(92, 140, 163, 192)))),
            child: CustomNavigationBar(
              iconSize: 20.0,
              selectedColor: const Color(0xFF004AAD),
              strokeColor: const Color(0x300c18fb),
              unSelectedColor: const Color(0x300c18fb),
              backgroundColor: Colors.white,
              scaleFactor: 0.4,
              scaleCurve: Curves.easeIn,
              items: [
                CustomNavigationBarItem(icon: Icon(tabs[0]['icon'])),
                CustomNavigationBarItem(icon: Icon(tabs[1]['icon'])),
                CustomNavigationBarItem(icon: Icon(tabs[2]['icon'])),
                CustomNavigationBarItem(icon: Icon(tabs[3]['icon'])),
              ],
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              elevation: 0,
              opacity: 0.2,
            ),
          );
        });
  }
}
