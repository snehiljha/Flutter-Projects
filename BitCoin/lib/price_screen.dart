import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String select;

  List<Text> getPick() {
    List<Text> Pick = [];
    for (int i = 0; i < 20; i++) {
      Pick.add(Text(currenciesList[i]));
    }
    return Pick;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: CupertinoPicker(
              backgroundColor: Colors.lightBlue,
              itemExtent: 32.0,
              onSelectedItemChanged: (selectedIndex) {
                // setState(() {
                //   select = value;
                // });
              },
              children: getPick(),
            ),
          ),
        ],
      ),
    );
  }
}

// items: [
//   DropdownMenuItem(
//     child: Text('Rupee'),
//     value: 'Rupee',
//   ),
// ],

// DropdownButton<String>(
// value: select,
// onChanged: (value) {
// setState(() {
// select = value;
// });
// },
// items: <String>[
// 'AUD',
// 'BRL',
// 'CAD',
// 'CNY',
// 'EUR',
// 'GBP',
// 'HKD',
// 'IDR',
// 'ILS',
// 'INR',
// 'JPY',
// 'MXN',
// 'NOK',
// 'NZD',
// 'PLN',
// 'RON',
// 'RUB',
// 'SEK',
// 'SGD',
// 'USD',
// 'ZAR'
// ].map<DropdownMenuItem<String>>((String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// }).toList(),
// ),
