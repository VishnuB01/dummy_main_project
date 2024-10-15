import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlannedDate2 extends StatefulWidget {

  final String stringDate;
  final String stringYear;
  final String stringMonth;
  const PlannedDate2({
    required this.stringDate,
    required this.stringYear,
    required this.stringMonth,
    super.key,
  });

  @override
  State<PlannedDate2> createState() => _PlannedDateState();
}

class _PlannedDateState extends State<PlannedDate2> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate1;
  DateTime? _selectedDate2;
  int _daysDifference = 0;

  Future<void> _selectDate(BuildContext context, int dateIndex) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dateIndex == 1 ? (_selectedDate1 ?? DateTime.now()) : (_selectedDate2 ?? DateTime.now()),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (dateIndex == 1) {
          _selectedDate1 = picked;
        } else {
          _selectedDate2 = picked;
        }
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
        _daysDifference = _calculateDaysDifference();
      });
    }
  }

  int _calculateDaysDifference() {
    if (_selectedDate1 != null && _selectedDate2 != null) {
      return _selectedDate2!.difference(_selectedDate1!).inDays;
    }
    return 0;
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
            onTap: () async {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text('Gesture Detected!')));
              await _selectDate(context, 1);
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xEAFF5963),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    dateText(_selectedDate1?.day.toString() ?? widget.stringDate,14),
                    dateText(_selectedDate1 != null ? getMonthName(_selectedDate1!.month) : widget.stringMonth,18),
                    dateText(_selectedDate1?.year.toString() ?? widget.stringYear,14),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_right_alt_rounded,
                size: 24,
              ),
              Text(
                '$_daysDifference Days',
              ),
            ],
          ),
          GestureDetector(
            onTap: () async {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(SnackBar(content: Text('Gesture Detected!')));
              await _selectDate(context, 2);
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color(0xEB5C4BDE),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    dateText(_selectedDate2?.day.toString() ?? widget.stringDate,14),
                    dateText(_selectedDate2 != null ? getMonthName(_selectedDate2!.month) : widget.stringMonth,18),
                    dateText(_selectedDate2?.year.toString() ?? widget.stringYear,14),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding dateText(String text,double fontSize) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }

  String getMonthName(int month) {
    switch (month) {
      case 1:
        return 'JAN';
      case 2:
        return 'FEB';
      case 3:
        return 'MAR';
      case 4:
        return 'APR';
      case 5:
        return 'MAY';
      case 6:
        return 'JUN';
      case 7:
        return 'JUL';
      case 8:
        return 'AUG';
      case 9:
        return 'SEP';
      case 10:
        return 'OCT';
      case 11:
        return 'NOV';
      case 12:
        return 'DEC';
      default:
        return '';
    }
  }
}
