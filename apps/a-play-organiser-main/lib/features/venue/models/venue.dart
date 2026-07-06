class Venue {
  final String id;
  final String name;
  final String? type; // club, pub, restaurant
  final String description;
  final String? address;
  final int? capacity;
  final List<String> images;
  final String? logoUrl;
  final bool isActive; // false = pending admin approval, true = live/bookable
  final String? createdBy;
  final DateTime createdAt;

  const Venue({
    required this.id,
    required this.name,
    this.type,
    required this.description,
    this.address,
    this.capacity,
    this.images = const [],
    this.logoUrl,
    required this.isActive,
    this.createdBy,
    required this.createdAt,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        id: json['id'] as String,
        name: json['name'] as String,
        type: json['type'] as String?,
        description: json['description'] as String? ?? '',
        address: json['address'] as String?,
        capacity: json['capacity'] as int?,
        images: (json['images'] as List?)?.map((e) => e.toString()).toList() ??
            const [],
        logoUrl: json['logo_url'] as String?,
        isActive: json['is_active'] as bool? ?? false,
        createdBy: json['created_by'] as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
      );
}

const List<String> venueTypes = ['club', 'pub', 'restaurant'];
