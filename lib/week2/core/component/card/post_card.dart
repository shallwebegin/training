import 'package:flutter/material.dart';
import 'package:training/week2/post_json_place_holder/model/post_model.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key, required this.model});
  final PostModel? model;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isTouch = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isTouch ? Colors.red : Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          child: buildText(),
        ),
        title: Text(widget.model?.title ?? ""),
        onTap: () {
          setState(() {
            isTouch = !isTouch;
          });
        },
      ),
    );
  }

  Widget buildText() {
    if (widget.model?.id != null) {
      return Text(widget.model?.id.toString() ?? "");
    }
    return const FlutterLogo();
  }
}
