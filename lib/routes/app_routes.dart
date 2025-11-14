import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/ciencias_screen.dart';
import 'package:fl_components/screens/mates_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.home_max_outlined, 
      name: 'Home Screen', 
      screen: const HomeScreen()
    ),
    MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt_outlined, 
      name: 'Listview tipo 1', 
      screen: const Listview1Screen()
    ),
    MenuOption(
      route: 'listview2', 
      icon: Icons.list_sharp, 
      name: 'Listview tipo 2', 
      screen: const Listview2Screen()
    ),
    MenuOption(
      route: 'alert', 
      icon: Icons.add_alert_outlined, 
      name: 'Alertas', 
      screen: const AlertScreen()
    ),
    MenuOption(
      route: 'card', 
      icon: Icons.card_travel_outlined, 
      name: 'Cards', 
      screen: const CardScreen()
    ),
    
  ];

  static final LibrosCole = <MenuOption>[
    MenuOption(
          route: 'Home', 
          icon: Icons.card_travel_outlined, 
          name: 'Home', 
          screen: const LibrosColeScreen()
        ),
    MenuOption(
          route: 'Mates', 
          icon: Icons.card_travel_outlined, 
          name: 'Mates', 
          screen: const MatesScreen()
        ),
        MenuOption(
          route: 'Ciencias', 
          icon: Icons.card_travel_outlined, 
          name: 'Ciencias', 
          screen: const CienciasScreen()
        ),
        MenuOption(
          route: 'Lengua', 
          icon: Icons.card_travel_outlined, 
          name: 'Lengua', 
          screen: const CienciasScreen()
        ),
        MenuOption(
          route: 'Ingles', 
          icon: Icons.card_travel_outlined, 
          name: 'Ingles', 
          screen: const CienciasScreen()
        ),
  ];


  static Map<String, Widget Function(BuildContext) > getAppRoutes(){
    Map<String, Widget Function(BuildContext) > appRoutes = {};
    
    for ( final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext context ) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute( RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => AlertScreen()
        );
      }
}