import '../pages/alumniDetails.dart';
import '../pages/http_service.dart';
import '../pages/concreteHttpService.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../pages/alumni_model.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class MainAppBarInterface extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.grey[900];
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  MainAppBarInterface({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      actions: widgets,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
