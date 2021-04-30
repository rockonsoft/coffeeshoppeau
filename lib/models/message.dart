class AUMessage {
  AUMessage({this.read, this.senderUid, this.messageBody, this.messageTitle});
  bool? read;
  String? senderUid;
  String? messageTitle;
  String? messageBody;
}