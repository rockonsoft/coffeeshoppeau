import 'package:coffeeshoppe/models/preferences.dart';

import 'book.dart';

class Profile{


  Profile(Map<String, dynamic>? map){
    if(map != null){
      var genres = map['genres'] as List<dynamic>;
      var authors = map['authors'] as List<dynamic>;
      var books = map['books'] as List<dynamic>;
      this.nickname = map['nickname'];
      this.genres = genres.cast<String>();
      this.authors = authors.cast<String>();
      this.books = books.cast<Book>();
      //this.preferences = map['preferences'];
      print(this);
    }

  }
  String? nickname;
  List<String>? genres;
  List<String>? authors;
  List<Book>? books;
  //Preferences? preferences;
}