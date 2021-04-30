import 'package:coffeeshoppe/shared/constants.dart';
import 'package:flutter/material.dart';

class ChooseGenres extends StatefulWidget {
  @override
  _ChooseGenresState createState() => _ChooseGenresState();
}

class _ChooseGenresState extends State<ChooseGenres> {
  final List<String> sugars = ['0', '1', '2', '3', '4'];
  String _genres1 = '';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DropdownButtonFormField(
          value: '',
          decoration: textInputDecoration,
          items: sugars.map((sugar) {
            return DropdownMenuItem(
              value: sugar,
              child: Text('$sugar sugars'),
            );
          }).toList(),
          onChanged: (val) => setState(() => _genres1 = val.toString() ),
        ),
      ],
    );
  }
}


/*class ChooseGenres extends StatelessWidget {
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DropdownButtonFormField(
          value: _currentSugars ?? userData.sugars,
          decoration: textInputDecoration,
          items: sugars.map((sugar) {
            return DropdownMenuItem(
              value: sugar,
              child: Text('$sugar sugars'),
            );
          }).toList(),
          onChanged: (val) => setState(() => _currentSugars = val ),
        ),
      ],
    );
  }
}*/
