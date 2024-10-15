import 'package:flutter/material.dart';

class IDNameCard extends StatefulWidget {
  final String heading;
  final String id;
  final String name;

  const IDNameCard({
    super.key,
    required this.heading,
    required this.id,
    required this.name,
  });

  @override
  State<IDNameCard> createState() => _IDNameCardState();
}

class _IDNameCardState extends State<IDNameCard> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                color: Color(0xE4FFFFFF),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
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
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  widget.heading,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            // PopupMenuButton(
                            //   itemBuilder: (context){
                            //     return [
                            //       PopupMenuItem<int>(
                            //         value: 0,
                            //         child: Text("Copy ID"),
                            //       ),
                            //
                            //       PopupMenuItem<int>(
                            //         value: 1,
                            //         child: Text("Copy Name"),
                            //       ),
                            //
                            //     ];
                            //   },
                            // ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'ID',
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(26, 0, 0, 0),
                            child: Text(
                              widget.id,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'NAME',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                            child: Text(
                              widget.name,
                            ),
                          ),
                        ],
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


