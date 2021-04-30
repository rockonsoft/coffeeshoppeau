
import 'book.dart';

class AUUser {

  final String uid;

  AUUser({ required this.uid });

}

class UserProfile {

  String uid = '';
  String nickname = '';
  List<String> genres = [];
  List<String> authors = [];
  List<Book> books = [];
  //Preferences preferences;
  //List<AUMessage> messages = [];


  //UserProfile({ this.uid, this.nickname, this.genres, this.authors, this.books, this.messages, this.preferences });

}