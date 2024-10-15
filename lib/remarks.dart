import 'package:flutter/material.dart';

class RemarksText extends StatefulWidget {
  const RemarksText({super.key});

  @override
  State<RemarksText> createState() => _RemarksTextState();
}

class _RemarksTextState extends State<RemarksText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding:
              EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'REMARK',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xE4FFFFFF),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              autofocus: false,
                              obscureText: false,
                              maxLines: null,
                              expands: true,
                              decoration: InputDecoration(
                                labelText: 'Remarks...',
                                labelStyle: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                hintStyle: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                // border: InputBorder(
                                //   borderSide: BorderSide(
                                //     color: Colors.black,
                                //   ),
                                // )
                              ),
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                            ),
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
      ],
    );
  }
}
