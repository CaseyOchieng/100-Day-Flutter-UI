import 'package:flutter/material.dart';

class ButtonAnimation extends StatefulWidget {
  const ButtonAnimation({
    super.key,
    required this.primaryColor,
    required this.darkPrimaryColor,
  });
  final Color primaryColor;
  final Color darkPrimaryColor;

  @override
  State<ButtonAnimation> createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {},
          child: Center(
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: widget.primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Align(
                      child: Text(
                        'Download',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: widget.darkPrimaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                    child: const Icon(
                      Icons.download,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
