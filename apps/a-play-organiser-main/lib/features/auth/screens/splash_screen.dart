import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';

import '../controllers/auth_controller.dart';
import '../models/user_profile.dart';
import '../../../core/theme/app_theme.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  late VideoPlayerController _controller;
  bool _isVideoInitialized = false;
  bool _isVideoFinished = false;
  String? _pendingRoute;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.asset('assets/splash.mp4');
    
    try {
      await _controller.initialize();
      _controller.setVolume(0.0); // Mute by default, optional
      _controller.addListener(_checkVideoStatus);
      setState(() {
        _isVideoInitialized = true;
      });
      await _controller.play();
    } catch (e) {
      debugPrint('Error initializing video: $e');
      // Fallback: treat as finished immediately if error
      setState(() {
        _isVideoFinished = true;
      });
      _checkNavigation();
    }
  }

  void _checkVideoStatus() {
    if (_controller.value.isInitialized && 
        _controller.value.position >= _controller.value.duration) {
      if (!_isVideoFinished) {
        setState(() {
          _isVideoFinished = true;
        });
        _checkNavigation();
      }
    }
  }

  void _checkNavigation() {
    if (_isVideoFinished && _pendingRoute != null && mounted) {
      context.go(_pendingRoute!);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_checkVideoStatus);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authControllerProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        authenticated: (user) {
          _pendingRoute = '/home';
          _checkNavigation();
        },
        unauthenticated: () {
          _pendingRoute = '/login';
          _checkNavigation();
        },
        error: (message) {
          _pendingRoute = '/login';
          _checkNavigation();
        },
      );
    });

    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: SizedBox.expand(
        child: _isVideoInitialized
            ? FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              )
            : Container(color: AppTheme.backgroundDark), // Placeholder while initializing
      ),
    );
  }
}
