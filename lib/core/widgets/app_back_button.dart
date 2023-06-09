// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mashrou3two/core/resources/assets_manager.dart';
// import 'package:mashrou3two/core/resources/color_manager.dart';
// import 'package:mashrou3two/core/resources/padding_manager.dart';
// import 'package:mashrou3two/core/widgets/svg_asset.dart';
// import 'package:mashrou3two/features/games/presentation/manager/theme_bloc.dart';
//
// class AppBackButton extends StatelessWidget {
//   const AppBackButton({
//     super.key,
//     this.customBehaviour,
//     this.color,
//     this.withPadding = false,
//   });
//   final VoidCallback? customBehaviour;
//   final Color? color;
//   final bool withPadding;
//   @override
//   Widget build(BuildContext context) => Builder(
//     builder: (context) {
//       final ismashrou3twoMode =
//           context.watch<ThemeBloc>().state.ismashrou3twoMode;
//       return GestureDetector(
//         onTap: customBehaviour ?? () async => context.pop(),
//         child: SvgAsset(
//           path: AssetsManager.back,
//           color: color ??
//               (ismashrou3twoMode
//                   ? ColorManager.primary
//                   : ColorManager.white),
//         ),
//       );
//     },
//   );
// }
