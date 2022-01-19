import 'package:bibliadigital/core/theme/theme.dart';
import 'package:bibliadigital/core/widgets/button_login_google.dart';
import 'package:bibliadigital/core/widgets/title_widget.dart';
import 'package:bibliadigital/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const TitleWidget(),
              Expanded(
                child: SvgPicture.asset(
                  'assets/hero.svg',
                  width: MediaQuery.of(context).size.width * .7,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: const Text(
                  'Melhor app para o seu alimento diario',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: AppTheme.black,
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Faça login para começar a ler',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppTheme.grey,
                ),
              ),
              const SizedBox(height: 48),
              ButtonLoginGoogle(
                openLoginGoogle: () async {
                  final provider = Provider.of<AuthService>(context, listen: false);
                  provider.googleLogin();
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
