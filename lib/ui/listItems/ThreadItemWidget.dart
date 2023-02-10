
import 'package:flutter/material.dart';

class ThreadItemWidget extends StatelessWidget {
  final String? _senderName;
  final String _phoneNumber;
  final String _lastMessage;
  final bool isAttachment;

  ThreadItemWidget(this._senderName, this._phoneNumber, this._lastMessage,
      this.isAttachment);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueAccent),
          child: const Center(
              child: Text(
            "M",
            style: TextStyle(color: Colors.white),
          )),
        ),
        title: Text(
          _senderName ?? _phoneNumber,
          style: const TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          _lastMessage,
          style: const TextStyle(color: Colors.black38),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing:
            const Text("1 day ago", style: TextStyle(color: Colors.black38)),
      ),
    );
  }
}
