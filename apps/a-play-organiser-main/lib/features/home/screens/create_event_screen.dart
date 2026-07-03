import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';
import '../models/event.dart';
import '../widgets/image_picker_widget.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';

class CreateEventScreen extends ConsumerStatefulWidget {
  final String? eventId;
  
  const CreateEventScreen({
    super.key,
    this.eventId,
  });

  @override
  ConsumerState<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends ConsumerState<CreateEventScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  
  DateTime? _startDate;
  DateTime? _endDate;
  String? _selectedClubId;
  String? _coverImageUrl;
  bool _isLoading = false;
  bool _isEditing = false;
  Event? _existingEvent;
  
  // Zone management
  final List<ZoneData> _zones = [];

  @override
  void initState() {
    super.initState();
    _isEditing = widget.eventId != null;
    if (_isEditing) {
      _loadEventData();
    } else {
      // Add default zone
      _zones.add(ZoneData(
        name: 'General Admission',
        price: 0.0,
        capacity: 100,
      ));
    }
  }

  void _loadEventData() async {
    final authState = ref.read(authControllerProvider);
    final userId = authState.maybeWhen(
      authenticated: (user) => user.id,
      orElse: () => null,
    );

    if (userId != null) {
      final userEventsAsync = ref.read(eventsByUserProvider(userId));
      userEventsAsync.whenData((events) {
        final event = events.where((e) => e.id == widget.eventId).firstOrNull;
        if (event != null) {
          setState(() {
            _existingEvent = event;
            _titleController.text = event.title;
            _descriptionController.text = event.description;
            _locationController.text = event.location ?? '';
            _coverImageUrl = event.coverImage;
            _selectedClubId = event.clubId;
            _startDate = event.startDate;
            _endDate = event.endDate;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final clubs = ref.watch(clubsProvider);
    
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          _isEditing ? 'Edit Event' : 'Create Event',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppTheme.textPrimary,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppTheme.textPrimary),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            onPressed: _isLoading ? null : _createEvent,
            child: _isLoading
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppTheme.primaryOrange,
                    ),
                  )
                : Text(
                    _isEditing ? 'Update' : 'Create',
                    style: const TextStyle(
                      color: AppTheme.primaryOrange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Basic Information
              _buildTextField(
                controller: _titleController,
                label: 'Event Title *',
                hint: 'Enter event title',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              _buildTextField(
                controller: _descriptionController,
                label: 'Description *',
                hint: 'Describe your event',
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              _buildTextField(
                controller: _locationController,
                label: 'Location *',
                hint: 'Event location',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter event location';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              
              // Club/Venue (Optional)
              clubs.when(
                data: (clubsList) => _buildClubDropdown(clubsList),
                loading: () => _buildLoadingDropdown(),
                error: (error, _) => _buildErrorDropdown(),
              ),
              const SizedBox(height: 16),
              
              // Cover Image Picker
              ImagePickerWidget(
                initialImageUrl: _coverImageUrl,
                onImageChanged: (imageUrl) {
                  setState(() {
                    _coverImageUrl = imageUrl;
                  });
                },
                label: 'Cover Image (Optional)',
                hint: 'Tap to add cover image',
              ),
              const SizedBox(height: 24),
              
              // Date & Time
              const Text(
                'Event Schedule *',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 12),
              
              Row(
                children: [
                  Expanded(
                    child: _buildDateTimeField(
                      'Start Date & Time',
                      _startDate,
                      () => _selectDateTime(isStartDate: true),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildDateTimeField(
                      'End Date & Time',
                      _endDate,
                      () => _selectDateTime(isStartDate: false),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              
              // Zones
              const Text(
                'Ticket Zones *',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              const SizedBox(height: 12),
              
              ..._zones.asMap().entries.map((entry) {
                final index = entry.key;
                final zone = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _buildZoneCard(zone, index),
                );
              }),
              
              TextButton.icon(
                onPressed: _addZone,
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Add Zone'),
                style: TextButton.styleFrom(
                  foregroundColor: AppTheme.primaryOrange,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Create Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _createEvent,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryOrange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    _isEditing ? 'Update Event' : 'Create Event',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: AppTheme.textSecondary),
            filled: true,
            fillColor: AppTheme.surfaceDark,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppTheme.surfaceDark),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.primaryOrange),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.errorColor),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
          style: const TextStyle(color: AppTheme.textPrimary),
          validator: validator,
        ),
      ],
    );
  }

  Widget _buildClubDropdown(List<Club> clubs) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Club/Venue (Optional)',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          initialValue: _selectedClubId,
          decoration: InputDecoration(
            hintText: 'Select club or venue',
            hintStyle: const TextStyle(color: AppTheme.textSecondary),
            filled: true,
            fillColor: AppTheme.surfaceDark,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: AppTheme.surfaceDark),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppTheme.primaryOrange),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
          dropdownColor: AppTheme.surfaceDark,
          items: clubs.map((club) {
            return DropdownMenuItem(
              value: club.id,
              child: Text(
                club.name,
                style: const TextStyle(color: AppTheme.textPrimary),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedClubId = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildLoadingDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Club/Venue (Optional)',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: AppTheme.surfaceDark,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppTheme.primaryOrange,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Club/Venue (Optional)',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 48,
          decoration: BoxDecoration(
            color: AppTheme.surfaceDark,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppTheme.errorColor.withValues(alpha: 0.5)),
          ),
          child: const Center(
            child: Text(
              'Failed to load clubs',
              style: TextStyle(color: AppTheme.errorColor, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateTimeField(String label, DateTime? dateTime, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppTheme.surfaceDark,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: dateTime != null ? AppTheme.primaryOrange.withValues(alpha: 0.5) : Colors.transparent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: dateTime != null ? AppTheme.primaryOrange : AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              dateTime != null
                  ? DateFormat('MMM dd, yyyy\nhh:mm a').format(dateTime)
                  : 'Tap to select',
              style: TextStyle(
                fontSize: 13,
                color: dateTime != null ? AppTheme.textPrimary : AppTheme.textSecondary,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildZoneCard(ZoneData zone, int index) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.primaryOrange.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Zone ${index + 1}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
              ),
              if (_zones.length > 1)
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline, color: AppTheme.errorColor, size: 18),
                  onPressed: () => _removeZone(index),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  initialValue: zone.name,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: AppTheme.cardDark,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(8),
                  ),
                  style: const TextStyle(fontSize: 12, color: AppTheme.textPrimary),
                  onChanged: (value) => zone.name = value,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextFormField(
                  initialValue: zone.price.toString(),
                  decoration: const InputDecoration(
                    labelText: 'Price',
                    labelStyle: TextStyle(fontSize: 12),
                    prefixText: '₵ ',
                    filled: true,
                    fillColor: AppTheme.cardDark,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(8),
                  ),
                  style: const TextStyle(fontSize: 12, color: AppTheme.textPrimary),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => zone.price = double.tryParse(value) ?? 0.0,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextFormField(
                  initialValue: zone.capacity.toString(),
                  decoration: const InputDecoration(
                    labelText: 'Capacity',
                    labelStyle: TextStyle(fontSize: 12),
                    filled: true,
                    fillColor: AppTheme.cardDark,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(8),
                  ),
                  style: const TextStyle(fontSize: 12, color: AppTheme.textPrimary),
                  keyboardType: TextInputType.number,
                  onChanged: (value) => zone.capacity = int.tryParse(value) ?? 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _addZone() {
    setState(() {
      _zones.add(ZoneData(
        name: 'Zone ${_zones.length + 1}',
        price: 0.0,
        capacity: 50,
      ));
    });
  }

  void _removeZone(int index) {
    if (_zones.length > 1) {
      setState(() {
        _zones.removeAt(index);
      });
    }
  }

  Future<void> _selectDateTime({required bool isStartDate}) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: AppTheme.primaryOrange,
              surface: AppTheme.surfaceDark,
            ),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      if (!mounted) return;
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.dark(
                primary: AppTheme.primaryOrange,
                surface: AppTheme.surfaceDark,
              ),
            ),
            child: child!,
          );
        },
      );

      if (time != null) {
        final dateTime = DateTime(
          date.year,
          date.month,
          date.day,
          time.hour,
          time.minute,
        );

        setState(() {
          if (isStartDate) {
            _startDate = dateTime;
            if (_endDate != null && _endDate!.isBefore(dateTime)) {
              _endDate = null;
            }
          } else {
            if (_startDate != null && dateTime.isBefore(_startDate!)) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('End date cannot be before start date'),
                  backgroundColor: AppTheme.errorColor,
                ),
              );
              return;
            }
            _endDate = dateTime;
          }
        });
      }
    }
  }

  Future<void> _createEvent() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_startDate == null || _endDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select start and end dates'),
          backgroundColor: AppTheme.errorColor,
        ),
      );
      return;
    }

    if (_zones.isEmpty || _zones.any((z) => z.name.isEmpty)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add at least one zone with a valid name'),
          backgroundColor: AppTheme.errorColor,
        ),
      );
      return;
    }

    final authState = ref.read(authControllerProvider);
    final userId = authState.maybeWhen(
      authenticated: (user) => user.id,
      orElse: () => null,
    );

    if (userId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You must be logged in to create events'),
          backgroundColor: AppTheme.errorColor,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final homeService = ref.read(homeServiceProvider);
      
      if (_isEditing && _existingEvent != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Event editing will be implemented soon'),
            backgroundColor: AppTheme.primaryOrange,
          ),
        );
        context.pop();
        return;
      } else {
        final result = await homeService.createEvent(
          title: _titleController.text.trim(),
          description: _descriptionController.text.trim(),
          location: _locationController.text.trim(),
          clubId: _selectedClubId,
          startDate: _startDate!,
          endDate: _endDate!,
          coverImage: _coverImageUrl,
          createdBy: userId,
        );

        result.fold(
          (failure) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to create event: ${failure.message}'),
                  backgroundColor: AppTheme.errorColor,
                ),
              );
            }
          },
          (event) async {
            if (mounted) {
              ref.invalidate(upcomingEventsByUserProvider(userId));
              ref.invalidate(eventsByUserProvider(userId));
              ref.invalidate(upcomingEventsProvider);
              
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Event created successfully!'),
                  backgroundColor: AppTheme.successColor,
                ),
              );
              
              context.pop();
            }
          },
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('An unexpected error occurred: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}

class ZoneData {
  String name;
  double price;
  int capacity;

  ZoneData({
    required this.name,
    required this.price,
    required this.capacity,
  });
} 
