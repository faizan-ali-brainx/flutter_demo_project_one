import 'package:flutter/material.dart';

class ClientItemWidget extends StatelessWidget {
  final String _name;
  final String _number;

  ClientItemWidget(this._name, this._number);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueAccent),
          child: const Center(
              child: Text(
            "M",
            style: TextStyle(color: Colors.white),
          )),
        ),
        title: Text(
          _name,
          style: const TextStyle(
            color: Colors.black,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Text(_number, style: const TextStyle(color: Colors.black38)),
        trailing: IconButton(
          icon: const Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          onPressed: () {
            _clientModalBottomSheet(context);
          },
        ),
      ),
    );
  }

  void _clientModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.call),
                  title: const Text('Call'),
                  onTap: () => {}),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: () => {},
              ),
              ListTile(
                leading: const Icon(Icons.voicemail),
                title: const Text('Voicemail'),
                onTap: () => {},
              ),
            ],
          );
        });
  }
}
