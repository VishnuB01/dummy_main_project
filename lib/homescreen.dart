import 'package:demo1/i_d_name_card.dart';
import 'package:demo1/planned_date.dart';
import 'package:demo1/planned_date2.dart';
import 'package:demo1/remarks.dart';
import 'package:flutter/material.dart';
import 'package:demo1/subcont_location.dart';
import 'package:intl/intl.dart';

class HomecolumnWidget extends StatefulWidget {
  const HomecolumnWidget({super.key});

  @override
  State<HomecolumnWidget> createState() => _HomecolumnWidgetState();
}

class _HomecolumnWidgetState extends State<HomecolumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                // width: 100,
                // height: 100,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x39000000),
                      offset: Offset(
                        0,
                        2,
                      ),
                      spreadRadius: 10,
                    )
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                  borderRadius: BorderRadius.circular(14),
                  shape: BoxShape.rectangle,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IDNameCard(
                          heading: 'WBS', id: 'DEMO WBS 22', name: 'P12A-2'),
                      IDNameCard(
                          heading: 'Activity', id: 'DH123K', name: 'P12A-2'),

                      ///sub contractor
                      SubcontLocation(
                          heading: "Subcontractor", details: "Dinesh"),
                      SubcontLocation(heading: "Location", details: "Chennai"),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'PLANNED',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PlannedDate2(
                        stringDate: 'null',
                        stringMonth: 'null',
                        stringYear: 'null',
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'ACTUAL',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PlannedDate2(
                        stringDate: 'null',
                        stringMonth: 'null',
                        stringYear: 'null',
                      ),

                      RemarksText(),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(6),
                              child: IconButton(
                                color: Colors.white,
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                ),
                                icon: Icon(
                                  Icons.check,
                                  size: 30,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
