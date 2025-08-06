import 'dart:async';
import 'package:flutter/material.dart';

enum AppSnackBarType { success, error, info }

class AppSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    AppSnackBarType type = AppSnackBarType.info,
    Duration? duration,
  }) {
    final cfg = _SnackBarConfig.fromType(type);
    final displayDuration = duration ?? cfg.defaultDuration;
    final overlay = Overlay.of(context);

    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (ctx) => _AnimatedAppSnackBarWidget(
        message: message,
        icon: cfg.icon,
        backgroundColor: cfg.backgroundColor,
        duration: displayDuration,
        onDismissed: () => entry.remove(),
      ),
    );

    overlay.insert(entry);
  }
}

class _AnimatedAppSnackBarWidget extends StatefulWidget {
  final String message;
  final IconData icon;
  final Color backgroundColor;
  final Duration duration;
  final VoidCallback onDismissed;

  const _AnimatedAppSnackBarWidget({
    Key? key,
    required this.message,
    required this.icon,
    required this.backgroundColor,
    required this.duration,
    required this.onDismissed,
  }) : super(key: key);

  @override
  _AnimatedAppSnackBarWidgetState createState() =>
      _AnimatedAppSnackBarWidgetState();
}

class _AnimatedAppSnackBarWidgetState extends State<_AnimatedAppSnackBarWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _offsetAnim = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    Future.delayed(widget.duration, () {
      _controller.reverse().then((_) => widget.onDismissed());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _offsetAnim,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16), 
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.only(top: topPad),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Icon(widget.icon, color: Colors.white),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SnackBarConfig {
  final IconData icon;
  final Color backgroundColor;
  final Duration defaultDuration;

  _SnackBarConfig({
    required this.icon,
    required this.backgroundColor,
    required this.defaultDuration,
  });

  factory _SnackBarConfig.fromType(AppSnackBarType type) {
    switch (type) {
      case AppSnackBarType.success:
        return _SnackBarConfig(
          icon: Icons.check_circle,
          backgroundColor: Colors.green.shade600,
          defaultDuration: const Duration(seconds: 2),
        );
      case AppSnackBarType.error:
        return _SnackBarConfig(
          icon: Icons.error,
          backgroundColor: Colors.red.shade600,
          defaultDuration: const Duration(seconds: 3),
        );
      case AppSnackBarType.info:
      default:
        return _SnackBarConfig(
          icon: Icons.info,
          backgroundColor: Colors.blue.shade600,
          defaultDuration: const Duration(seconds: 2),
        );
    }
  }
}
