// ignore_for_file: non_const_argument_for_const_parameter
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_icons.dart';
import '../../../common/widgets/app_bottom_sheet.dart';
import '../providers/create_side_quest_controller.dart';
import 'icon_selection_sheet.dart';

class CreateSideQuestBottomSheet extends ConsumerStatefulWidget {
  const CreateSideQuestBottomSheet({super.key});

  @override
  ConsumerState<CreateSideQuestBottomSheet> createState() =>
      _CreateSideQuestBottomSheetState();
}

class _CreateSideQuestBottomSheetState
    extends ConsumerState<CreateSideQuestBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _selectedDeadline;
  int? _selectedIconCodePoint;
  String? _titleError;
  bool _showDeadlineError = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _pickDeadline() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDeadline ?? now.add(const Duration(days: 1)),
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );

    if (date == null || !mounted) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(
        _selectedDeadline ?? now.add(const Duration(days: 1)),
      ),
    );

    if (time == null || !mounted) return;

    setState(() {
      _selectedDeadline = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
      _showDeadlineError = false;
    });
  }

  Future<void> _pickIcon() async {
    final iconCodePoint = await showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => const IconSelectionSheet(),
    );

    if (iconCodePoint != null) {
      setState(() {
        _selectedIconCodePoint = iconCodePoint;
      });
    }
  }

  Future<void> _submit() async {
    setState(() {
      _titleError = _titleController.text.trim().isEmpty
          ? 'Title is required'
          : null;
      _showDeadlineError = _selectedDeadline == null;
    });

    if (!_formKey.currentState!.validate() || _selectedDeadline == null) return;

    final success = await ref
        .read(createSideQuestControllerProvider.notifier)
        .createQuest(
          title: _titleController.text.trim(),
          description: _descriptionController.text.trim().isEmpty
              ? null
              : _descriptionController.text.trim(),
          deadline: _selectedDeadline!,
          iconCodePoint: _selectedIconCodePoint,
        );

    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(createSideQuestControllerProvider);
    final theme = Theme.of(context);
    final isLoading = state is AsyncLoading;

    return AppBottomSheet(
      title: 'Create Side Quest',
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: _pickIcon,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      AppIcons.getQuestIcon(_selectedIconCodePoint),
                      color: theme.colorScheme.primary,
                      size: 28,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Quest Title',
                      hintText: 'What is the goal?',
                      errorStyle: const TextStyle(height: 0, fontSize: 0),
                      suffixIcon: _titleError != null
                          ? Tooltip(
                              message: _titleError!,
                              triggerMode: TooltipTriggerMode.tap,
                              child: Icon(
                                Icons.error_outline_rounded,
                                color: theme.colorScheme.error,
                              ),
                            )
                          : null,
                    ),
                    onChanged: (value) {
                      if (_titleError != null) {
                        setState(() {
                          _titleError = value.trim().isEmpty
                              ? 'Title is required'
                              : null;
                        });
                      }
                    },
                    validator: (value) =>
                        value == null || value.trim().isEmpty ? '' : null,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            TextFormField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Description (Optional)',
                hintText: 'Add some details...',
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Icon(
                  Icons.alarm_rounded,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  'Deadline',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                if (_showDeadlineError)
                  Tooltip(
                    message: 'Deadline is required',
                    triggerMode: TooltipTriggerMode.tap,
                    child: Icon(
                      Icons.error_outline_rounded,
                      size: 18,
                      color: theme.colorScheme.error,
                    ),
                  ),
                const Spacer(),
                TextButton.icon(
                  onPressed: isLoading ? null : _pickDeadline,
                  icon: const Icon(Icons.calendar_month_rounded, size: 18),
                  label: Text(
                    _selectedDeadline == null
                        ? 'Set Date & Time'
                        : DateFormat(
                            'MMM dd, hh:mm a',
                          ).format(_selectedDeadline!),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: _selectedDeadline == null
                        ? theme.colorScheme.primaryContainer.withValues(
                            alpha: 0.5,
                          )
                        : theme.colorScheme.secondaryContainer,
                    foregroundColor: _selectedDeadline == null
                        ? theme.colorScheme.onPrimaryContainer
                        : theme.colorScheme.onSecondaryContainer,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            FilledButton.tonal(
              onPressed: isLoading ? null : _submit,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: theme.colorScheme.onSecondaryContainer,
                      ),
                    )
                  : const Text(
                      'Create Quest',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
