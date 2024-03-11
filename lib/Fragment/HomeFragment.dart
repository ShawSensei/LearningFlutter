import 'package:flutter/cupertino.dart';

class HomeFragment extends StatelessWidget {
  final Widget? child;

  const HomeFragment({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child ??
        SizedBox(); // Return child if provided, otherwise return SizedBox
  }
}
