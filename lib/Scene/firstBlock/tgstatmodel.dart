import 'package:flutter/cupertino.dart';
import 'package:flutterfordev/domain/entity/telegraminf.dart';

class TgStatsModel extends ChangeNotifier {
  var _info = <Post>[];
  List<Post> get info => _info;
}

class TgstatProvider extends InheritedNotifier {
  final TgStatsModel model;
  TgstatProvider({
    Key? key,
    required this.child,
    required this.model,
  }) : super(key: key, child: child);
  final Widget child;

  static TgstatProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TgstatProvider>();
  }

  @override
  bool updateShouldNotify(TgstatProvider oldWidget) {
    return true;
  }
}
