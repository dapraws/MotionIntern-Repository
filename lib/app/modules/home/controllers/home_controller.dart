import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionintern_week7/app/data/models/todoitem_model.dart';

class HomeController extends GetxController {
  final TextEditingController textEditingController_ = TextEditingController();

  void handleCreateTodo() {
    String todoTitle = textEditingController_.text.trim();

    if (todoTitle.isNotEmpty) {
      FirebaseFirestore.instance.collection('todos').add({
        'title': todoTitle,
        'status': false,
        'timestamp': DateTime.now(),
      }).then((_) {
        textEditingController_.clear();
      }).catchError((error) {
        print("Gagal menambahkan todo: $error");
      });
    }
  }

  void handleToggleTodo(String id, bool status) {
    FirebaseFirestore.instance.collection('todos').doc(id).update({
      'status': !status,
    }).then((_) {
      print("Todo dengan id: $id berhasil diperbarui");
    }).catchError((error) {
      print("Gagal memperbarui todo: $error");
    });
  }

  void handleDeleteTodo(String id) {
    FirebaseFirestore.instance.collection('todos').doc(id).delete().then((_) {
      print("Todo dengan id: $id berhasil dihapus");
    }).catchError((error) {
      print("Gagal menghapus todo: $error");
    });
  }
}
