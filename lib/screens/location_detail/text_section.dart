import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _horizontalPad = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(
                  _horizontalPad, 30.0, _horizontalPad, 4.0),
              child: Text(_title, style: Theme.of(context).textTheme.title)),
          Container(
              padding: const EdgeInsets.fromLTRB(
                  _horizontalPad, 10.0, _horizontalPad, _horizontalPad),
              child: Text(_body, style: Theme.of(context).textTheme.body1)),
        ]);
  }
}
