import 'package:flutter/material.dart';

class CoustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  const CoustomTextField(
      {
        super.key,
      required this.label,
      required this.icon,
      required this.obscureText});
  @override
  State<CoustomTextField> createState() => _CoustomTextFieldState();
}

class _CoustomTextFieldState extends State<CoustomTextField> {

  late TextEditingController _controller;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focus){
        setState(() {
          _hasFocus = focus;
        });

      }, child: Stack(
      children: [
        TextFormField(
          controller: _controller,
            obscureText: widget.obscureText,
          obscuringCharacter: "*",
          textAlignVertical: TextAlignVertical.bottom,
          style: const TextStyle(
            color: Colors.white,fontSize: 20
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF1E1E1E),
            hintText: !_hasFocus ? widget.label : null,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20,),
              child: Icon(widget.icon, color: Colors.white,),
            ),
            hintStyle: const TextStyle(
              color: Colors.white70, fontSize: 16
            ),
            contentPadding: const EdgeInsets.only(left: 12,top: 25,bottom: 20 ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white70),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white70),
            ),
          ),
        ),
        if(_hasFocus || _controller.text.isNotEmpty)
          Positioned(
              left: 8,
              top: 10,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.symmetric(horizontal: 4),
                color: const Color(0xFF1E1E1E),
                child: Row(
                  children: [
                    Text(widget.label, style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12
                    ),),
                  ],
                ),
              ))
      ],
    ) ,

    );
  }
}
