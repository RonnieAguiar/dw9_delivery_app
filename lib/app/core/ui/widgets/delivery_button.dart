import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? whidth;
  final double? height;

  const DeliveryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.whidth,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: whidth,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
