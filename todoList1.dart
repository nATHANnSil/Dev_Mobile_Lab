import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StalessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Lista de Tarefas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _todos = []; //lista que guardará as tarefas
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista de Tarefas'),
        backgroundColor: colors.blue,
      ),
      
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(16.0)),
          child: Row(
          children: [
            Expanded (
            child: TextField(
            controller: _controller,
            decoration: const Inputdecoration(
            labelText: 'NovaTarefa',
            border: OutlineInputBorder(),
            ),
            ),
            ),
            const SizedBox (width: 10),
            ElevatedButton(
            onPressed: (){
              _addTodo,
            },
            child: const Text ('Adcionar'),
            ),
          ],
          ),
         ],
        
        Expanded(
        child: ListView.builder (
        itemCount: _todos.length,
        itemBuilder: (context, index){
          return ListTile(
            
            
          title: Text(_todos[index]),
          trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: (){
            setState((){
              _todos.removeAt(index);
            });
          },
          ),
            
            
          );
          
          
        },
        ),
       ),
      ),
    );
    
          void _addTodo(){
        if (_controller.text.isNotEmpty) {
          setState ((){
            _todos.add(_controller.text);
            _controller.clear();
          } );
        }
      }
  }
}

      ListTile( //MODIFICAR O LISTTILE, MAS AONDE? LOL
        leading: Checkbox(
        value:false,
        onChanged: (bool? value){
          },
        ),
        title: Text (_todos[index]),
          trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: (){
            setState((){
              _todos.removeAt(index);
            });
          },
          ),
        ),
