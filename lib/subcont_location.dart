import 'package:flutter/material.dart';

class SubcontLocation extends StatefulWidget {
  final String heading;
  final String details;

  const SubcontLocation({
    super.key,
    required this.heading,
    required this.details,
  });

  @override
  State<SubcontLocation> createState() => _SubcontLocationState();
}

class _SubcontLocationState extends State<SubcontLocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color.fromARGB(223, 255, 255, 255),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  widget.heading,
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                widget.details,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem<int>(
                                    value: 0,
                                    child: Text("Copy"),
                                  ),
                                ];
                              },
                            ),
                          ],
                        ),
                      ),
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
