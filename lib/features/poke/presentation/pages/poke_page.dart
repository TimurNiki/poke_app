import 'package:flutter/material.dart';

import '../widgets/poke_widget.dart';

class PokePage extends StatelessWidget {
  const PokePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PokeWidget(),
        ],
      ),
    );
  }
}
