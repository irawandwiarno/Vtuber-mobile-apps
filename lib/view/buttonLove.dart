import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vtuber/data/idol.dart';



class IdolVoteButton extends StatefulWidget {
  final Idol idol;
  final VoidCallback? onPressed;

  const IdolVoteButton({Key? key, required this.idol, this.onPressed}) : super(key: key);

  @override
  _IdolVoteButtonState createState() => _IdolVoteButtonState();
}

class _IdolVoteButtonState extends State<IdolVoteButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed?.call();
      },
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: isLiked ? widget.idol.color : Colors.grey,
          ),
          child: Row(
            children: [
              Icon(
                isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
                color: Colors.white,
                size: 16,
              ),
              Text(
                "${widget.idol.vote}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
