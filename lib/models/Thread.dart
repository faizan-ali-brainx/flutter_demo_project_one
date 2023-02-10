
class Thread {
  final String _id;
  final String _senderName;
  final String _phoneNumber;
  final String _lastMessage;
  final bool _isAttachment;

  Thread(
    this._id,
    this._senderName,
    this._phoneNumber,
    this._lastMessage,
    this._isAttachment,
  );

  String get getId => _id;

  String get getSenderName => _senderName;

  String get getPhoneNumber => _phoneNumber;

  bool get isAttachment => _isAttachment;

  String get getLastMessage => _lastMessage;

}
