import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shops/features/splash/bloc/splash_bloc.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInCubic)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          BlocProvider.of<SplashBloc>(context).add(AnimationCompletedEvent());
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          children: const <Widget>[
            SizedBox(
              width: 200,
              height: 100,
              child: Image(
                image: AssetImage('logo.png'),
              ),
            ),
            Text('Welcome!'),
          ],
        ),
      ),
    );
  }
}
