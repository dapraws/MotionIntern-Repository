import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motionintern_week7/app/data/models/todoitem_model.dart';
import 'package:motionintern_week7/app/shared/widgets/todoitem_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final TodoItemModel todoItem_;

  HomeView({
    super.key,
    required this.todoItem_,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFEEEFF5),
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('todos')
                            .orderBy('timestamp', descending: true)
                            .snapshots(),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData &&
                              snapshot.data!.docs.isNotEmpty) {
                            return Expanded(
                              child: ListView.builder(
                                itemCount: snapshot.data!.docs.length,
                                itemBuilder: (context, index) {
                                  var document = snapshot.data!.docs[index];
                                  Map<String, dynamic> data =
                                      document.data()! as Map<String, dynamic>;
                                  TodoItemModel todoItem = TodoItemModel(
                                    id: document.id,
                                    name: data['title'],
                                    status: data['status'],
                                    onDelete: (String id) => controller
                                        .handleDeleteTodo(document.id),
                                    onToggle: (String id, bool status) =>
                                        controller.handleToggleTodo(
                                            document.id, status),
                                  );
                                  return TodoItemWidget(todoItem: todoItem);
                                },
                              ),
                            );
                          } else {
                            return const Center(
                              child: Text('Tidak ada data yang tersedia'),
                            );
                          }
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                bottom: 20,
                                right: 20,
                                left: 20,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                controller: controller.textEditingController_,
                                decoration: const InputDecoration(
                                    hintText: 'Add a new todo item',
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 20,
                              right: 20,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pink,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  controller.handleCreateTodo();
                                },
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
