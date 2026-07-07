import 'dart:async';
import 'package:flutter/material.dart';

import '../services/places_service.dart';
import '../theme/app_theme.dart';

/// Address text field backed by Google Places Autocomplete. Falls back to a
/// plain text field (no suggestions) if GOOGLE_MAPS_API_KEY isn't configured.
class LocationAutocompleteField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;

  const LocationAutocompleteField({
    super.key,
    required this.controller,
    required this.label,
    this.hint = 'Start typing an address...',
    this.validator,
  });

  @override
  State<LocationAutocompleteField> createState() => _LocationAutocompleteFieldState();
}

class _LocationAutocompleteFieldState extends State<LocationAutocompleteField> {
  final _placesService = PlacesService();
  Timer? _debounce;
  List<PlaceSuggestion> _suggestions = [];
  bool _isLoading = false;
  bool _suppressNextSearch = false;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();

    if (_suppressNextSearch) {
      // The text was just set programmatically by selecting a suggestion -
      // don't immediately re-search against the final selected address.
      _suppressNextSearch = false;
      return;
    }

    if (!_placesService.isConfigured) return;

    _debounce = Timer(const Duration(milliseconds: 400), () async {
      setState(() => _isLoading = true);
      final results = await _placesService.autocomplete(value);
      if (mounted) {
        setState(() {
          _suggestions = results;
          _isLoading = false;
        });
      }
    });
  }

  void _selectSuggestion(PlaceSuggestion suggestion) {
    _suppressNextSearch = true;
    widget.controller.text = suggestion.description;
    widget.controller.selection = TextSelection.collapsed(offset: suggestion.description.length);
    setState(() => _suggestions = []);
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: widget.controller,
          onChanged: _onChanged,
          validator: widget.validator,
          decoration: InputDecoration(
            hintText: widget.hint,
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
            suffixIcon: _isLoading
                ? const Padding(
                    padding: EdgeInsets.all(12),
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppTheme.primaryOrange,
                      ),
                    ),
                  )
                : const Icon(Icons.location_on_outlined, color: AppTheme.textSecondary),
          ),
          style: const TextStyle(color: AppTheme.textPrimary),
        ),
        if (_suggestions.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _suggestions.length,
              separatorBuilder: (_, __) => const Divider(height: 1, color: AppTheme.backgroundDark),
              itemBuilder: (context, index) {
                final suggestion = _suggestions[index];
                return ListTile(
                  dense: true,
                  leading: const Icon(Icons.location_on_outlined, color: AppTheme.textSecondary, size: 20),
                  title: Text(
                    suggestion.description,
                    style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14),
                  ),
                  onTap: () => _selectSuggestion(suggestion),
                );
              },
            ),
          ),
      ],
    );
  }
}
