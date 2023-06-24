import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String text;

  const CardWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              style:
                  regular13.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
