import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

/// This is the stateful widget that the main application instantiates.
class MyExpansionPanel extends StatefulWidget {
  @override
  _MyExpansionPanelState createState() => _MyExpansionPanelState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyExpansionPanelState extends State<MyExpansionPanel> {
  static const double iconSize = 20.0;

  List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              leading: Image.asset(
                '../icons/32/crypto/btc.png',
                width: 25.0,
              ),

              //title: Text(item.headerValue),
              title: Row(
                children: <Widget>[
                  Expanded(child: Text("Bitcoin BTC")),
                  Expanded(child: Text("Total")),
                  Expanded(child: Text("€1.34568")),
                  Expanded(child: Text("€3.00056")),
                  Expanded(child: Text("€5.00056")),
                  Expanded(
                    child: Text(
                      "€2.00056",
                      style: TextStyle(color: Color(0xFF2CC784)),
                    ),
                  ),
                  Container(
                      //padding: EdgeInsets.only(left: 3, right: 3),
                      child: TextButton(
                    child: Icon(
                      Icons.remove,
                      size: iconSize,
                      color: Color(0xFF453B3B),
                    ),
                    onPressed: () => {},
                  )),
                  Container(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: TextButton(
                        child: Icon(
                          Icons.add,
                          size: iconSize,
                          color: Color(0xFF453B3B),
                        ),
                        onPressed: () => {},
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: TextButton(
                        child: Icon(
                          Icons.edit,
                          size: iconSize,
                          color: Color(0xFF453B3B),
                        ),
                        onPressed: () => {},
                      )),
                ],
              ),
            );
          },
          body: ListTile(
              //title: Text(item.expandedValue),
              title: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(child: Text(""), flex: 124),
                      Expanded(
                          child: Center(child: Text("23.02.21")), flex: 102),
                      Expanded(
                          child: Text(
                            "€-0.30961",
                            style: TextStyle(color: Colors.red),
                          ),
                          flex: 102),
                      Expanded(child: Text(""), flex: 102),
                      Expanded(
                          child: Text("€-2.00056",
                              style: TextStyle(color: Colors.red)),
                          flex: 102),
                      Expanded(
                          child: Text(
                            "€-2.00056",
                            style: TextStyle(color: Colors.red),
                          ),
                          flex: 113),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Text(""), flex: 124),
                      Expanded(
                          child: Center(child: Text("22.02.21")), flex: 102),
                      Expanded(child: Text("€1.34568"), flex: 102),
                      Expanded(child: Text("€3.00056"), flex: 102),
                      Expanded(child: Text("€-1.00056"), flex: 102),
                      Expanded(
                          child: Text(
                            "€2.00056",
                            style: TextStyle(color: Colors.red),
                          ),
                          flex: 113),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Text(""), flex: 124),
                      Expanded(
                          child: Center(child: Text("20.02.21")), flex: 102),
                      Expanded(child: Text("€1.34568"), flex: 102),
                      Expanded(child: Text("€3.00056"), flex: 102),
                      Expanded(child: Text("€5.00056"), flex: 102),
                      Expanded(
                          child: Text(
                            "€2.00056",
                            style: TextStyle(color: Color(0xFF2CC784)),
                          ),
                          flex: 113),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(child: Text(""), flex: 124),
                      Expanded(
                          child: Center(child: Text("19.02.21")), flex: 102),
                      Expanded(child: Text("€1.34568"), flex: 102),
                      Expanded(child: Text("€3.00056"), flex: 102),
                      Expanded(child: Text("€5.00056"), flex: 102),
                      Expanded(
                          child: Text(
                            "€2.00056",
                            style: TextStyle(color: Color(0xFF2CC784)),
                          ),
                          flex: 113),
                    ],
                  ),
                ],
              ),
              subtitle: Text('To delete this panel, tap the trash can icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
