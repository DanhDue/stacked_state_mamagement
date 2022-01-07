import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/ui/views/splash/splash_view_model.dart';
import 'package:stacked_state_mamagement/utils/ui_helpers.dart';

class SplashView extends HookWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _animationController = useAnimationController();
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Lottie.asset(
            'assets/lotties/splash_animation.json',
            controller: _animationController,
            onLoaded: (composition) {
              _animationController
                ..duration = composition.duration
                ..forward();
              _animationController.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  model.indicateAnimationComplete();
                }
              });
            },
            height: screenHeightFraction(context, dividedBy: 4),
          ),
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
