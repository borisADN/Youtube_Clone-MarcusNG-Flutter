import 'package:application/data.dart';
import 'package:application/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);

final miniPlayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
      (ref) => MiniplayerController(),
    );

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static const double _playerMinHeight = 60.0;
  int _selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    const Scaffold(body: Center(child: Text('Explore'))),
    const Scaffold(body: Center(child: Text('Add'))),
    const Scaffold(body: Center(child: Text('Subscriptions'))),
    const Scaffold(body: Center(child: Text('Library'))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          final selectedVideo = ref.watch(selectedVideoProvider);
          final miniPlayerController = ref.watch(miniPlayerControllerProvider);

          return Stack(
            children: [
              ..._screens.asMap().entries.map((entry) {
                int index = entry.key;
                Widget screen = entry.value;

                return Offstage(
                  offstage: _selectedIndex != index,
                  child: screen,
                );
              }),
              Offstage(
                offstage: selectedVideo == null,
                child: Miniplayer(
                  controller: miniPlayerController,
                  minHeight: _playerMinHeight,
                  maxHeight: MediaQuery.of(context).size.height,
                  builder: (height, percentage) {
                    return Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Center(child: Text('$percentage')),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined),
            activeIcon: Icon(Icons.play_arrow),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle),
            label: 'Ajouter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Abonnements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person_2),
            label: 'Moi',
          ),
        ],
      ),
    );
  }
}
