import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/jsonModal.dart';

class Jsonhelper {
  Future<List<AlbumbModal>> albumbParsing() async {
    String json =
        await rootBundle.loadString('assets/json/jsonBank/albumbJson.json');

    List albumb = jsonDecode(json);

    List<AlbumbModal> albumbModel =
        albumb.map((e) => AlbumbModal.MapToModal(e)).toList();

    return albumbModel;
  }

  Future<List<CommentModal>> commentParsing() async {
    String json =
        await rootBundle.loadString("assets/json/jsonBank/commentJson.json");

    List comments = jsonDecode(json);

    List<CommentModal> commentList =
        comments.map((e) => CommentModal.MapToModal(e)).toList();

    return commentList;
  }

  Future<List<PhotoModal>> photoParsing() async {
    String json =
        await rootBundle.loadString("assets/json/jsonBank/photosJson.json");
    List photos = jsonDecode(json);

    List<PhotoModal> photoList =
        photos.map((e) => PhotoModal.MapToModal(e)).toList();
    return photoList;
  }

  Future<List<PostModal>> postParsing() async {
    String json =
        await rootBundle.loadString("assets/json/jsonBank/postJson.json");
    List posts = jsonDecode(json);

    List<PostModal> postList =
        posts.map((e) => PostModal.MapToModal(e)).toList();
    return postList;
  }

  Future<List<TodoModal>> todoParsing() async {
    String json =
        await rootBundle.loadString("assets/json/jsonBank/todoJson.json");
    List todo = jsonDecode(json);

    List<TodoModal> todoList =
        todo.map((e) => TodoModal.MapToModal(e)).toList();
    return todoList;
  }

  Future<List<UserModal>> userParsing() async
  {
    String json = await rootBundle.loadString('assets/json/jsonBank/userJson.json');

    List user = jsonDecode(json);
    List<UserModal> userList = user.map((e) => UserModal.MapToModal(e),).toList();
    return userList;

  }
}
