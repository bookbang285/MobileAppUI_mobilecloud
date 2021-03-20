import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _number = 0;
  void _addnumber() {
    setState(() {
      _number += 0.5;
      if (_number > 5) _number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'สวัสดีครับท่านสมาชิก',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'ชมรมคนชอบหมี',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            color: Colors.yellow,
            onPressed: _addnumber,
            icon: new Icon(Icons.star),
          ),
          Text(_number.toString()),
        ],
      ),
    );

    Widget textp = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        '        สวัสดีครับ ท่านสมาชิกชมรมคนชอบหมี วันพระวันเจ้าไม่เว้นกันเลยอยากจะดูแต่หมี ' +
            'ไม่เข้าใจจริงๆเลยทั้งเด็กทั้งผู้ใหญ่ตะโกนหาสรรหาแต่หมี เป็นอะไรกัน! เฮ้ยย ทั้งวันเลยวันนี้' +
            'ทำงานมีแต่หมีโผล่มาทั้งวันเลยส่งไปให้แล้วก็ยังจะให้ดูอีก มันหมายความว่าไงเนี่ยคนที่ไหนคน' +
            'จังหวัดอะไรพวกท่านเนี่ย เอ้ยตายแล้ว ดูธรรมะธรรมโมมั่งดิดูปรัชญา คําคม วิถีชีวิต ' +
            'ปรัชญาข่มใจข่มกิเลสตัณหา ดูเป็นบ้างรึเปล่าดูแต่หมี วันพระใหญ่นะ หมีระงมกันทั้งวันทั้งคืน' +
            'เลยไม่เข้าใจเลยพวกท่านเป็นยังไง จัดมาดิ เอาแบบเบิ้มๆน่ะมะคือลือน่ะ เฮ้ยคนที่ใหนพวกท่าน' +
            'เป็นคนจังหวัดอะไรเกิดวันไหนเกิดปีไหนเกิดปีจอหรือปีอะไรครับผมไม่เข้าใจ ตายแล้วว ' +
            'ทำงานทั้งวันละหมีโผล่ทั้งวันเลย55555 ผมไม่เข้าใจเลยจริงๆโอ้ยตายแล้วพวกท่านมวยกูมาละลาก่อน ' +
            'ดูหมีไปก่อนผมจะดูมวย',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );

    Widget button = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: new Icon(Icons.call),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  'Call',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: new Icon(Icons.near_me),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  'ROUTE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: new Icon(Icons.share),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Text(
                  'SHARE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    Widget iM = Container(
      child: Image.asset(
        '/_DSC4586.jpg',
        width: 500,
        height: 400,
        fit: BoxFit.cover,
      ),
    );
    return MaterialApp(
      title: 'สวัสดีครับท่านสมาชิก',
      home: Scaffold(
        body: Column(
          children: [
            iM,
            title,
            button,
            textp,
          ],
        ),
      ),
    );
  }
}
