import 'package:flutter/material.dart';
// import 'package:pokemon_app/features/poke/presentation/widgets/poke_image_widget.dart';
// import 'package:provider/provider.dart';

// import '../../../../core/errors/failure.dart';
// import '../../business/entities/poke_entitity.dart';

class PokeWidget extends StatelessWidget {
  const PokeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// class PokeWidget extends StatelessWidget {
//   const PokeWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     PokeEntity? poke = Provider.of<PokeProvider>(context).poke;
//     Failure? failure = Provider.of<PokeProvider>(context).failure;
//     late Widget widget;
//     if (poke != null) {
//       widget = PokeImageWidget(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
//                 child: SingleChildScrollView(
//                   child: FittedBox(
//                     child: Text(
//                       '#${poke.id} ${poke.name.toUpperCase()}',
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w900,
//                         shadows: <Shadow>[
//                           Shadow(
//                             blurRadius: 20.0,
//                             color: Colors.black45,
//                           ),
//                         ],
//                         fontSize: 50,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(10),
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               child: Wrap(
//                 alignment: WrapAlignment.center,
//                 spacing: 5,
//                 runSpacing: 5,
//                 children: List.generate(
//                   poke.types.length,
//                   (index) => Chip(
//                     backgroundColor: Colors.white,
//                     label: Text(
//                       poke.types.elementAt(index).type.name.toUpperCase(),
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     } else if (failure != null) {
//       widget = Expanded(
//         child: Center(
//           child: Text(
//             failure.errorMessage,
//             style: const TextStyle(fontSize: 20),
//           ),
//         ),
//       );
//     } else {
//       widget = const Expanded(
//         child: Center(
//           child: CircularProgressIndicator(
//             backgroundColor: Colors.white,
//             color: Colors.orangeAccent,
//           ),
//         ),
//       );
//     }
//     return widget;
//   }
// }
