import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/jsonHelper.dart';
import 'package:flutter_application_1/model/jsonModal.dart';

class Homeprovider with ChangeNotifier {
  List<String> title = ["albumb", "comment", "photos", "post", "todo", "user"];

  List<AlbumbModal> albumb = [];
  List<CommentModal> comment = [];
  List<PhotoModal> photo = [];
  List<PostModal> post = [];
  List<TodoModal> todo = [];
  List<UserModal> user = [];
      Jsonhelper jh = Jsonhelper();


  Future<void> getAlbumb() async {
    Jsonhelper jh = Jsonhelper();
    albumb = await jh.albumbParsing();
    notifyListeners();
  }

  Future<void> getComment() async
  {
    Jsonhelper jh = Jsonhelper();

    comment = await jh.commentParsing();
    notifyListeners();
  }

  Future<void> getPhoto() async
  {
    photo = await jh.photoParsing();
    notifyListeners();
  }

  Future<void> getPost() async
  {
    post = await jh.postParsing();
    notifyListeners();
  }

  Future<void> getTodo() async
  {
    todo = await jh.todoParsing();
    notifyListeners();
  }

  Future<void> getUser() async
  {
    user = await jh.userParsing();
    notifyListeners();
  }
}
