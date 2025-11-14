


import 'package:chat/widgets/buble_chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  final List<BubleChat> _messages = [];
  bool isWriting = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            CircleAvatar(
              child: Text('data'),
            ),
            SizedBox(height: 3),
            Text('data')
          ],
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                reverse: true,
                physics: BouncingScrollPhysics(),
                itemCount: _messages.length,
                itemBuilder:(context, index) => _messages[index]
                )),
              Divider(height: 1),
              Container(
                height: 100,
                child: _inputChat(),
              )
          ],
        ),
      ),
    );
  }

  Widget _inputChat() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmit,
                onChanged: (value) {
                  setState(() {
                    if(value.isEmpty) {
                      isWriting = false;
                    } else {
                      isWriting = true;
                    }
                  });
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Mensaje',
                ),
                focusNode: _focusNode,
              )
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: IconTheme(
                  data: IconThemeData(color: Colors.blue),
                  child: IconButton(
                    icon: Icon(Icons.send_outlined),
                    onPressed: () {
                      isWriting ? () => _handleSubmit(_textController.text.trim())
                      : null;
                    }, 
                    ),
                ),
              )
          ],
        ),
      )
      );
  }

  void _handleSubmit(String text) {
    if (text.isEmpty) return;
    _textController.clear();
    _focusNode.requestFocus();

    final newMessage = BubleChat(
      text: text, 
      id: 'id',
      animationController: AnimationController(vsync: this, duration: Duration(seconds: 1)),
      );
    _messages.insert(0, newMessage);
    newMessage.animationController.forward();
    setState(() {
      isWriting = false;
    });
  }
}