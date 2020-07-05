import 'package:chatapp/Chatmessages.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _textController.clear();
    // ignore: unused_local_variable
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {});
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: new IconThemeData(color: Colors.green),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: [
              new Flexible(
                child: new TextField(
                  decoration: new InputDecoration.collapsed(
                    hintText: "Send a message",
                  ),
                  controller: _textController,
                  onSubmitted: _handleSubmit,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmit(_textController.text)),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Flexible(
            child: new ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        Divider(
          height: 1.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
