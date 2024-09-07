import 'package:dota2_heroes/features/home/presentation/bloc/heroes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HeroesBloc, HeroesState>(
          bloc: context.read(),
          builder: (context, state) {
            if (state is HeroesLoadingState) {
              return Center(
                child: RotationTransition(
                  turns: _animation,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('assets/dota2_logo.png')),
                    ),
                  ),
                ),
              );
            } else if (state is HeroesSuccessState) {
              return Center(
                child: Text("data1"),
              );
            }
            return Center(
              child: Text(state is HeroesErrorState
                  ? state.error.toString()
                  : S.of(context).internet_error.toString()),
            );
          }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
