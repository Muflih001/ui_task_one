import 'package:flutter/material.dart';

class CircleAvatarTemp extends StatelessWidget {
  final String avatarImage;
  const CircleAvatarTemp({
    super.key,
    required this.avatarImage,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 212, 0, 124), width: 3),
            borderRadius: BorderRadius.circular(50)),
        width: 85,
        height: 85,
        child: CircleAvatar(
          backgroundImage: AssetImage(avatarImage),
        ),
      ),
    );
  }
}
