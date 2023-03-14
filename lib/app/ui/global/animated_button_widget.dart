import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:noe_multi_service/app/constants/app_constants.dart';

class AnimatedButtonWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;

  const AnimatedButtonWidget({super.key, required this.child, required this.onPressed});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedButtonWidgetState createState() => _AnimatedButtonWidgetState();
}

class _AnimatedButtonWidgetState extends State<AnimatedButtonWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final AudioCache _audioCache = AudioCache(prefix: AppConstants.ASSET_SOUNDS);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 1.0, end: 0.9).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }

  void _handleTap() {
    _controller.forward().then((value) => _controller.reverse());
    widget.onPressed();
    _audioCache.play('click.mp3');
  }
}
