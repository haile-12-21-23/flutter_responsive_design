import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/mobile_body.dart';
import 'package:responsive_design/responsive/responsive.dart';
import 'package:responsive_design/responsive/desktop_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
