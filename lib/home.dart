import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello-fr').tr(),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text('English'),
              onPressed: (){
                context.locale = Locale('en','US');
              },
            ),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text('العربية'),
              onPressed: (){
                context.locale = Locale('ar','EG');
              },
            ),
          ],
        ),
      ),
    );
  }
}
