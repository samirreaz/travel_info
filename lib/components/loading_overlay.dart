import 'package:flutter/cupertino.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({
    Key? key,
    required this.isLoading,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (isLoading) {
      return Center(
        child: CupertinoActivityIndicator(),
      );
    }
    return child;
  }
}
