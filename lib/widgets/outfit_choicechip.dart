import 'package:flutter/material.dart';

class OutfitChip extends StatelessWidget {
  final String name;
  final String image;
  final bool isSelected;
  final double imageHeight;
  final double imageWidth;
  final Function(bool) onSelected;

  const OutfitChip({
    super.key,
    required this.name,
    required this.image,
    required this.isSelected,
    required this.onSelected,
    required this.imageHeight,
    required this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(!isSelected);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              width: imageWidth,
              height: imageHeight,
            ),
            const SizedBox(height: 4.0),
            Text(name),
          ],
        ),
      ),
    );
  }
}
