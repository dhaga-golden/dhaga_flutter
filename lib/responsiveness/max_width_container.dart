import 'package:flutter/material.dart';

import 'breakpoints.dart';


/*
In website they generally force the content to be of max width and also to be centered.
 */
class MaxWidthContainer extends StatelessWidget {
  const MaxWidthContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints:  const BoxConstraints(maxWidth: kMaxWidth),
        child: child,
      ),
    );
  }
}