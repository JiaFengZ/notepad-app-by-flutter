import 'package:flutter/material.dart';

class EditMark extends StatefulWidget {
  EditMark({Key key}) : super(key: key);

  @override
  _EditMarkState createState() => new _EditMarkState();
}

class _EditMarkState extends State<EditMark> {
  List<Map> _marks = [{
    'name': '笔记',
    'id': '1'
  }, {
    'name': '旅游',
    'id': '2'
  }, {
    'name': '生活',
    'id': '3'
  }, {
    'name': '工作',
    'id': '4'
  }, {
    'name': '学习',
    'id': '5'
  }];

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('编辑书签'),
        automaticallyImplyLeading: true,
      ),
      body: new ListView(
        padding: const EdgeInsets.all(10.0),
        children: _buildList(),
      ),
      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(Icons.add), onPressed: null),
        new IconButton(icon: new Icon(Icons.delete), onPressed: null)
      ],
    );
  }

  List <Widget> _buildList() {
    return _marks.map(_buildListItem).toList();
  }

  Widget _buildListItem(Map item) {
    return new ListTile(
      title: new Text(item['name']),
      leading: new Icon(Icons.bookmark),
    );
  }
}