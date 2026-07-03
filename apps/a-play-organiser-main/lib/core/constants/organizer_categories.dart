/// Categories for organizers/businesses
enum OrganizerCategory {
  lounge,
  club,
  liveShows,
  restaurant,
  bar,
  beach,
  arcadeCenter,
  eventPlanner,
  other,
}

/// Extension for OrganizerCategory enum
extension OrganizerCategoryExtension on OrganizerCategory {
  /// Get display name for the category
  String get displayName {
    switch (this) {
      case OrganizerCategory.lounge:
        return 'Lounge';
      case OrganizerCategory.club:
        return 'Club / Nightclub';
      case OrganizerCategory.liveShows:
        return 'Live Shows / Concerts';
      case OrganizerCategory.restaurant:
        return 'Restaurant';
      case OrganizerCategory.bar:
        return 'Bar / Pub';
      case OrganizerCategory.beach:
        return 'Beach / Outdoor Venue';
      case OrganizerCategory.arcadeCenter:
        return 'Arcade / Gaming Center';
      case OrganizerCategory.eventPlanner:
        return 'Event Planner';
      case OrganizerCategory.other:
        return 'Other';
    }
  }

  /// Get icon for the category
  String get icon {
    switch (this) {
      case OrganizerCategory.lounge:
        return '🛋️';
      case OrganizerCategory.club:
        return '🎵';
      case OrganizerCategory.liveShows:
        return '🎤';
      case OrganizerCategory.restaurant:
        return '🍽️';
      case OrganizerCategory.bar:
        return '🍺';
      case OrganizerCategory.beach:
        return '🏖️';
      case OrganizerCategory.arcadeCenter:
        return '🎮';
      case OrganizerCategory.eventPlanner:
        return '📅';
      case OrganizerCategory.other:
        return '🏢';
    }
  }

  /// Get description for the category
  String get description {
    switch (this) {
      case OrganizerCategory.lounge:
        return 'Lounge and relaxation venues';
      case OrganizerCategory.club:
        return 'Nightclubs and dance venues';
      case OrganizerCategory.liveShows:
        return 'Live performances and concerts';
      case OrganizerCategory.restaurant:
        return 'Dining and food establishments';
      case OrganizerCategory.bar:
        return 'Bars, pubs, and drinking establishments';
      case OrganizerCategory.beach:
        return 'Beach clubs and outdoor venues';
      case OrganizerCategory.arcadeCenter:
        return 'Gaming and entertainment centers';
      case OrganizerCategory.eventPlanner:
        return 'Event planning and management';
      case OrganizerCategory.other:
        return 'Other business types';
    }
  }

  /// Convert to database string value
  String toJson() {
    return toString().split('.').last.toLowerCase();
  }

  /// Parse from database string value
  static OrganizerCategory fromJson(String json) {
    switch (json.toLowerCase()) {
      case 'lounge':
        return OrganizerCategory.lounge;
      case 'club':
        return OrganizerCategory.club;
      case 'liveshows':
        return OrganizerCategory.liveShows;
      case 'restaurant':
        return OrganizerCategory.restaurant;
      case 'bar':
        return OrganizerCategory.bar;
      case 'beach':
        return OrganizerCategory.beach;
      case 'arcadecenter':
        return OrganizerCategory.arcadeCenter;
      case 'eventplanner':
        return OrganizerCategory.eventPlanner;
      case 'other':
      default:
        return OrganizerCategory.other;
    }
  }
}

/// Helper class for organizer categories
class OrganizerCategories {
  /// Get all available categories
  static List<OrganizerCategory> get all => OrganizerCategory.values;

  /// Get all categories as a list of maps for UI
  static List<Map<String, dynamic>> get allAsMap {
    return OrganizerCategory.values.map((category) {
      return {
        'value': category,
        'name': category.displayName,
        'icon': category.icon,
        'description': category.description,
      };
    }).toList();
  }
}
