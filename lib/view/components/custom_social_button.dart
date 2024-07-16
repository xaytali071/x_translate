import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomSocialButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget leftIcon;
  final Widget rightIcon;
  final String text;
  final Color color;
  final VoidCallback onTap;
  const CustomSocialButton({super.key,  this.height=40, required this.leftIcon,this.width=double.infinity,this.color=Colors.green, required this.text,required this.onTap, this.rightIcon=const Icon(Icons.keyboard_arrow_right_outlined,size: 30,)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap,
        child: Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: color.withOpacity(0.5),
            ),
            child: Center(
              child: Row(
                children: [
                  10.horizontalSpace,
                  leftIcon,
                  10.horizontalSpace,
                  Text(text,),
                  Spacer(),
                  rightIcon
                ],
              ),
            )
        ),

    );
  }
}