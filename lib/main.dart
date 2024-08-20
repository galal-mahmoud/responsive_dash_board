

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const ResponsiveDashBord());
}

class ResponsiveDashBord extends StatelessWidget {
  const ResponsiveDashBord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

    );
  }
}
