import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mashrou3two/core/resources/assets_manager.dart';
import 'package:mashrou3two/core/widgets/svg_asset.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.customBehaviour,
    this.color,

  });
  final VoidCallback? customBehaviour;
  final Color? color;

  @override
  Widget build(BuildContext context) => Builder(
    builder: (context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: customBehaviour ?? () async => context.pop(),
          child: const SvgAsset(
            path: AssetsManager.back,

          ),
        ),
    ),
  );
}
