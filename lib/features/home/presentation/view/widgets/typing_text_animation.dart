import 'package:flutter/material.dart';

class TypingTextAnimation extends StatefulWidget {
  final List<String> texts;
  final TextStyle? textStyle;
  final Duration duration;
  final Duration pauseBetween;

  const TypingTextAnimation({
    Key? key,
    required this.texts,
    this.textStyle,
    this.duration = const Duration(seconds: 3),
    this.pauseBetween = const Duration(seconds: 1),
  }) : super(key: key);

  @override
  TypingTextAnimationState createState() => TypingTextAnimationState();
}

class TypingTextAnimationState extends State<TypingTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _animation =
        IntTween(begin: 0, end: widget.texts[_currentIndex].length).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(widget.pauseBetween, () {
          if (mounted) {
            setState(() {
              _currentIndex = (_currentIndex + 1) % widget.texts.length;
              _animation =
                  IntTween(begin: 0, end: widget.texts[_currentIndex].length)
                      .animate(
                CurvedAnimation(parent: _controller, curve: Curves.linear),
              );
            });
            _controller.reset();
            _controller.forward();
          }
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, Widget? child) {
        String textToShow =
            widget.texts[_currentIndex].substring(0, _animation.value);
        if (textToShow.isEmpty) {
          textToShow = " ";
        }

        return FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            textToShow,
            style: widget.textStyle,
          ),
        );
      },
    );
  }
}
