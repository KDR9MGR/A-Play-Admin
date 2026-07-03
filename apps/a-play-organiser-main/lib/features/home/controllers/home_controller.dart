import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/event.dart';
import '../models/transaction.dart';
import '../services/home_service.dart';
import '../services/revenue_service.dart';

final homeServiceProvider = Provider<HomeService>((ref) => HomeService());

final homeControllerProvider =
    StateNotifierProvider<HomeController, HomeState>((ref) {
  final homeService = ref.watch(homeServiceProvider);
  return HomeController(homeService);
});

final upcomingEventsProvider = FutureProvider<List<Event>>((ref) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getUpcomingEvents();
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (events) => events,
  );
});

final upcomingEventsByUserProvider = FutureProvider.family<List<Event>, String>((ref, userId) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getUpcomingEventsByUser(userId);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (events) => events,
  );
});

final eventsByUserProvider = FutureProvider.family<List<Event>, String>((ref, userId) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getEventsByUser(userId);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (events) => events,
  );
});

final eventByIdProvider = FutureProvider.family<Event?, String>((ref, eventId) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getEventById(eventId);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (event) => event,
  );
});

final clubsProvider = FutureProvider<List<Club>>((ref) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getClubs();
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (clubs) => clubs,
  );
});

final clubByIdProvider = FutureProvider.family<Club?, String>((ref, clubId) async {
  final homeService = ref.watch(homeServiceProvider);
  final result = await homeService.getClubById(clubId);
  return result.fold(
    (failure) => throw Exception(failure.toString()),
    (club) => club,
  );
});

// Provider for organizer revenue stats
final organizerRevenueProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, organizerId) async {
  return await RevenueService.getOrganizerRevenue(organizerId);
});

// Provider for user stats
final userStatsProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, userId) async {
  return await RevenueService.getUserStats(userId);
});

// Provider for organizer transactions
final organizerTransactionsProvider = FutureProvider.family<List<Transaction>, String>((ref, organizerId) async {
  return await RevenueService.getOrganizerTransactions(organizerId);
});

class HomeController extends StateNotifier<HomeState> {
  final HomeService _homeService;

  HomeController(this._homeService) : super(const HomeState.initial()) {
    loadHomeData();
  }

  Future<void> loadHomeData() async {
    state = const HomeState.loading();

    try {
      final eventsResult = await _homeService.getEvents();
      final clubsResult = await _homeService.getClubs();

      final events = eventsResult.fold(
        (failure) => throw Exception(failure.toString()),
        (events) => events,
      );

      final clubs = clubsResult.fold(
        (failure) => throw Exception(failure.toString()),
        (clubs) => clubs,
      );

      state = HomeState.loaded(events: events, clubs: clubs);
    } catch (e) {
      state = HomeState.error(e.toString());
    }
  }

  Future<void> refreshData() async {
    await loadHomeData();
  }

  Future<List<Event>> getEventsByClub(String clubId) async {
    final result = await _homeService.getEventsByClub(clubId);
    return result.fold(
      (failure) => throw Exception(failure.toString()),
      (events) => events,
    );
  }
} 
