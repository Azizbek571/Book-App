import 'package:flutter/material.dart';
void showAnimatedTopSnackbar(BuildContext context, String message) {
  final overlay = Overlay.of(context);
  late OverlayEntry entry;

  final animationController = AnimationController(
    vsync: Navigator.of(context),
    duration: Duration(milliseconds: 500),
  );

  final animation = Tween<Offset>(
    begin: Offset(0, -1),
    end: Offset(0, 0),
  ).animate(CurvedAnimation(
    parent: animationController,
    curve: Curves.easeOut,
  ));

  entry = OverlayEntry(
    builder: (_) => Positioned(
      top: 0,
      left: 20,
      right: 20,
      child: SlideTransition(
        position: animation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
            child: Material(
              color: Colors.redAccent,
              elevation: 6,
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

  overlay.insert(entry);
  animationController.forward();

  Future.delayed(Duration(seconds: 2), () async {
    await animationController.reverse();
    entry.remove();
    animationController.dispose();
  });
}
