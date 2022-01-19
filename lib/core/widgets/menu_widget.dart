import 'package:bibliadigital/core/theme/theme.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String name;
  final String photoAvatar;
  final Function()? openProfile;

  const MenuWidget({
    Key? key,
    required this.name,
    required this.photoAvatar,
    required this.openProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Olá, ',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppTheme.black,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: AppTheme.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const Text(
                'O que vamos ler hoje?',
                style: TextStyle(
                  fontSize: 16,
                  color: AppTheme.grey,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: openProfile,
            child: CircleAvatar(
              backgroundColor: AppTheme.orange,
              backgroundImage: NetworkImage(photoAvatar),
              radius: 28,
            ),
          )
        ],
      ),
    );
  }
}
