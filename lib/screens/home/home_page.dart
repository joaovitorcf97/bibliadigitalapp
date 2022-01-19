import 'package:bibliadigital/core/widgets/menu_widget.dart';
import 'package:bibliadigital/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MenuWidget(
              openProfile: () {
                final provider = Provider.of<AuthService>(context, listen: false);
                provider.logout();
              },
              name: user.displayName!,
              photoAvatar: user.photoURL!,
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Home Page',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
