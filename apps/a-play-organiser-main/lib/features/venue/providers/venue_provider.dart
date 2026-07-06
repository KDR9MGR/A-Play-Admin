import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/venue.dart';
import '../services/venue_service.dart';

final venueServiceProvider = Provider<VenueService>((ref) => VenueService());

final myVenuesProvider = FutureProvider.autoDispose<List<Venue>>((ref) async {
  final service = ref.watch(venueServiceProvider);
  final result = await service.getMyVenues();
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (venues) => venues,
  );
});
