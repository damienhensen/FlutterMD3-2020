import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Open SnackBar'),
        onPressed: () {
          final snackBar = SnackBar(
            content: Row(
              children: [
                Icon(Icons.thumb_up),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text('SnackBar popup!'),
                )
              ],
            ),
            action: SnackBarAction(
              label: 'Close SnackBar',
              onPressed: () {
                Scaffold.of(context).hideCurrentSnackBar();
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
