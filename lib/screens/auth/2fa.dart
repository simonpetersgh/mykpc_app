import 'package:flutter/material.dart';

class TwoFactorAuth extends StatefulWidget {
  const TwoFactorAuth({super.key});

  @override
  State<TwoFactorAuth> createState() => _TwoFactorAuthState();
}

class _TwoFactorAuthState extends State<TwoFactorAuth> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [Text("2FA Screen")],
        ),
      ),
    );
  }
}
