import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_training_day1/providers/todo_model.dart';

class AddTaskField extends StatefulWidget {
  const AddTaskField({super.key});

  @override
  State<AddTaskField> createState() => _AddTaskFieldState();
}

class _AddTaskFieldState extends State<AddTaskField> {
  final _controller = TextEditingController();

  void _submit() {
    context.read<TodoModel>().addTask(_controller.text);
    _controller.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //biasanya untuk cancel widget
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextFormField(
        controller: _controller,
        textInputAction: TextInputAction.done,

        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: _submit, icon: Icon(Icons.send)),
          hintText: 'Add a new task',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),

        onFieldSubmitted: (value) => _submit(),
      ),
    );
  }
}
