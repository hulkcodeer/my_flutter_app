import 'dart:ffi';

import 'package:flutter/material.dart';

class Currencycard extends StatelessWidget {
  final String name, code, amount;
  final IconData iconImage;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const Currencycard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.iconImage,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: isInverted ? Colors.black : Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: isInverted ? Colors.black : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: isInverted
                                ? Colors.black.withOpacity(0.3)
                                : Colors.white.withOpacity(0.3),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  iconImage,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
