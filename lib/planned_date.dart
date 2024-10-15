import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlannedDate extends StatefulWidget {
  const PlannedDate({
    super.key,
  });

  @override
  State<PlannedDate> createState() => _PlannedDateState();
}

class _PlannedDateState extends State<PlannedDate> {
  final TextEditingController _dateController = TextEditingController();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () async{
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Gesture Detected!')));
              _selectDate(context);
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xEAFF5963),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dateText('15'),
                  dateText('JUNE'),
                  dateText('2024'),
                ],
              ),
            ),
          ),
          const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_right_alt_rounded,
                size: 24,
              ),
              Text(
                '150 Days',
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Gesture Detected!')));
              _selectDate(context);
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xEB5C4BDE),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dateText('20'),
                  dateText('JUNE'),
                  dateText('2024'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding dateText(String text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(

        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
