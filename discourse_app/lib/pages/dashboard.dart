import 'package:auto_route/auto_route.dart';
import 'package:discourse_app/route/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class Locations {
  static List<double> source = [];
  static List<double> dest = [];

  void addSource(LatLong coordinates) {
    source = [coordinates.latitude, coordinates.longitude];
  }

  void addDestination(LatLong coordinates) {
    dest = [coordinates.latitude, coordinates.longitude];
  }
}

@RoutePage(name: 'DashboardRouter')
class DashboardRouter extends StatelessWidget {
  const DashboardRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class PickSourceScreen extends StatelessWidget {
  const PickSourceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Source Location'),
      ),
      body: OpenStreetMapSearchAndPick(
        center: LatLong(13.583143, 123.2605911),
        onPicked: (pickedData) {
          Locations().addSource(pickedData.latLong);

          context.router.push(const PickDestRoute());
        },
      ),
    );
  }
}

@RoutePage()
class PickDestScreen extends StatelessWidget {
  const PickDestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Destination Location'),
      ),
      body: OpenStreetMapSearchAndPick(
        center: LatLong(13.583143, 123.2605911),
        onPicked: (pickedData) {
          Locations().addDestination(pickedData.latLong);

          context.router.replaceAll([
            const HomeRoute(children: [QueryListRoute()]),
            const QueryListRoute(),
          ]);
        },
      ),
    );
  }
}
