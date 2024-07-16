import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/infostructure/tr_model.dart';
import 'package:x_translate/infostructure/tr_reportory.dart';


class CustomDropDownColor extends StatelessWidget {
  final List<TrModel>? list;
  final Color borderColor;
  final String hint;
  final double width;
  final double height;
  final String? value;
  final ValueChanged? onChanged;
  final String? Function(Object?)? validator;
  const CustomDropDownColor({super.key, required this.list,  this.borderColor=Colors.green,  this.value,  this.width=double.infinity,  this.height=40, this.hint="Color", this.validator,  this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: DropdownButtonFormField(
          focusColor: Colors.white,
          isExpanded: true,

          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(8.r)),
                  borderSide: BorderSide(color: borderColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(8.r)),
                  borderSide: BorderSide(color: borderColor)),
              disabledBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(8.r)),
                  borderSide: BorderSide(color: borderColor,)),
              contentPadding: REdgeInsets.symmetric(horizontal: 5, vertical: 8),
              hintText: hint,

              filled: true
          ),
          icon: const Icon(Icons.keyboard_arrow_down_outlined,),
          borderRadius: BorderRadius.circular(8.r),
          value: value,
          items: TrRepostory.listOfTr
              .map((e) => DropdownMenuItem(
            value: e,
            child: Row(
              children: [
                CircleFlag(e.flagCode),
                Text(e.langName),
              ],
            ),
          ))
              .toList(),
          onChanged: (s) {}),
    );
  }
}