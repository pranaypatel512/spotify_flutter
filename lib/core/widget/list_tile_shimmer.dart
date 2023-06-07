import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_flutter/core/extension/extension.dart';

class TrackListTileShimmer extends StatelessWidget {
  const TrackListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    Color baseColor = context.isDark ? const ColorScheme.dark().onSecondaryContainer.withAlpha(9) : 
            const ColorScheme.light().onSecondaryContainer.withAlpha(9);
    
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: baseColor,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.black,
              )
               ],
          ),
        ),
      ),
    );
  }
}
