import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/app_bar.dart';
import '../Components/expansion_panel.dart';
import '../Components/list_view.dart';

class WelcomeScreen extends StatelessWidget {
  static const textColorGrey = Color(0xFF929292);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar().build(context),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Column contents horizontally,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total invested',
                          style: buildTotalStyle(),
                        ),
                        Text(
                          '20 000€',
                          style: buildBoldStyle(),
                        ),
                      ],
                    ), //Total investment
                    Column(
                      children: [
                        Text(
                          'Total today',
                          style: buildTotalStyle(),
                        ),
                        Text(
                          '34 650€',
                          style: buildBoldStyle(),
                        ),
                      ],
                    ), //Total today
                    Column(
                      children: [
                        Text(
                          'Profit',
                          style: buildTotalStyle(),
                        ),
                        Text(
                          '14 650€',
                          style: buildBoldStyle(),
                        ),
                      ],
                    ), //Profit
                  ],
                ),
              ), //Row 1 Total
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceAround, //Center Row contents horizontally,
                  children: [
                    TextButton.icon(
                        onPressed: () => {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Add investment',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF023AFF)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30)),
                        )),
                  ],
                ),
              ), //Row 2 Add inwestment

              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Date",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Count",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Price for today",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Profit",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: MyExpansionPanel(),
                //child: MyListView(),
              ), //row 3 Details
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFFAFBFE),
    );
  }

  TextStyle buildTotalStyle() {
    return GoogleFonts.openSans(
      textStyle: TextStyle(
        color: textColorGrey,
        letterSpacing: .5,
        fontSize: 20.0,
      ),
    );
  }

  TextStyle buildBoldStyle() {
    return GoogleFonts.openSans(
      textStyle: TextStyle(
        color: Colors.black,
        letterSpacing: .5,
        fontSize: 48.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
