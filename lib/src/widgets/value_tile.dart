import 'package:flutter/material.dart';
import 'package:farmsyt/main.dart';
import 'package:farmsyt/src/widgets/empty_widget.dart';

/// General utility widget used to render a cell divided into three rows
/// First row displays [label]
/// second row displays [iconData]
/// third row displays [value]
class ValueTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData iconData;

  ValueTile(this.label, this.value, {this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.label,
          style: TextStyle(
              color: AppStateContainer.of(context)
                  .theme
                  .accentColor
                  .withAlpha(80)),
        ),
        SizedBox(
          height: 5,
        ),
        this.iconData != null
            ? Icon(
                iconData,
                color: AppStateContainer.of(context).theme.accentColor,
                size: 20,
              )
            : EmptyWidget(),
        SizedBox(
          height: 10,
        ),
        Text(
          this.value,
          style:
              TextStyle(color: AppStateContainer.of(context).theme.accentColor),
        ),
      ],
    );
  }
}
