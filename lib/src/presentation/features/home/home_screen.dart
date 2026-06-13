// ignore_for_file: non_const_argument_for_const_parameter
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../common/widgets/empty_state.dart';
import 'providers/home_providers.dart';
import 'widgets/create_side_quest_bottom_sheet.dart';
import 'widgets/expandable_fab.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _showCreateQuest(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => const CreateSideQuestBottomSheet(),
    );
  }

  void _showJoinQuest(BuildContext context) {
    // TODO: Implement Join Quest Dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Join Quest coming soon!')),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final questsAsync = ref.watch(sideQuestsProvider);

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
      body: questsAsync.when(
        data: (quests) {
          if (quests.isEmpty) {
            return const EmptyState(
              icon: Icons.explore_outlined,
              title: 'No SideQuests Yet',
              description:
                  'Every great journey has SideQuests. Create one to begin!',
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: quests.length,
            itemBuilder: (context, index) {
              final quest = quests[index];
              final deadline = DateFormat(
                'MMM dd, hh:mm a',
              ).format(quest.deadline);

              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: theme.colorScheme.secondaryContainer,
                    foregroundColor: theme.colorScheme.onSecondaryContainer,
                    child: Icon(
                      quest.iconCodePoint != null
                          ? IconData(
                              quest.iconCodePoint!,
                              fontFamily: 'MaterialIcons',
                            )
                          : Icons.explore_rounded,
                    ),
                  ),
                  title: Text(
                    quest.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Ends: $deadline'),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    // TODO: Navigate to Quest Details
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExpandableFab(
        distance: 80,
        children: [
          ActionButton(
            onPressed: () => _showJoinQuest(context),
            icon: const Icon(Icons.link_rounded),
            label: 'Join',
          ),
          ActionButton(
            onPressed: () => _showCreateQuest(context),
            icon: const Icon(Icons.add_task_rounded),
            label: 'Create',
          ),
        ],
      ),
    );
  }
}
