import 'package:flutter/material.dart';

class DataPickerWidget extends StatefulWidget {
  const DataPickerWidget({Key? key}) : super(key: key);

  @override
  _DataPickerWidgetState createState() => _DataPickerWidgetState();
}

class _DataPickerWidgetState extends State<DataPickerWidget> {
  DateTime _dateTime = DateTime.now();
  void _showDatePcker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2300),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _dateTime.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            MaterialButton(
              onPressed: _showDatePcker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Choose Date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
