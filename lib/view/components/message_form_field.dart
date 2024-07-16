import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageFormField extends StatelessWidget {
  final VoidCallback onSend;
  final TextEditingController controller;
  final ValueChanged onChanged;
  final Color sendButton;
  const MessageFormField({super.key, required this.onSend, required this.controller, required this.onChanged, required this.sendButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: TextFormField(
        controller: controller,
        maxLines: 1,
        onChanged: onChanged,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:  const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(16.r,),

            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(16.r)),
            filled: true,
            constraints: BoxConstraints(maxHeight: 45.h, minHeight: 45.h),
            //   fillColor: watch.isDark ? Colors.white12 : Colors.black12,
            // prefixIcon: IconButton(
            //   onPressed: () {
            //     //  event.getImageGallery((){});
            //   },
            //   icon: const Icon(Icons.image),
            // ),
            suffixIcon: IconButton(
              onPressed: onSend,
              icon: Icon(Icons.send,color: sendButton),
            )),
      ),
    );
  }
}
