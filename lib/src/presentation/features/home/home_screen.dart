import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const title = 'SideQuests';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 20,
        title: Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                // TODO: Open Profile/Settings
              },
              icon: CircleAvatar(
                radius: 18,
                child: Icon(
                  Icons.person_rounded,
                  size: 20,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const SizedBox.expand(
        child: Center(child: Text('Your Quests will appear here')),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Open Create Quest Screen
        },
        child: const Icon(Icons.add_rounded, size: 34),
      ),
    );
  }
}
