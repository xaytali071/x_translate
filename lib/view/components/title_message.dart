import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/controller/providers.dart';
import 'custom_image.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TitleMessae extends ConsumerStatefulWidget {
  final bool isOwner;
  final String text;
  final String? image;
  const TitleMessae({super.key, required this.isOwner, required this.text,this.image,});

  @override
  ConsumerState<TitleMessae> createState() => _TitleMessaeState();
}

class _TitleMessaeState extends ConsumerState<TitleMessae> {

  @override
  Widget build(BuildContext context) {

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            color: !widget.isOwner ? (ref.watch(trProvider).isDark ? Colors.white30 : Colors.black12) : (ref.watch(trProvider).isDark ? Colors.green.withOpacity(0.7) : Colors.green),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16.r),
                topLeft: Radius.circular(16.r),
                bottomLeft: widget.isOwner ? Radius.circular(16.r) : Radius
                    .zero,
                bottomRight: !widget.isOwner ? Radius.circular(16.r) : Radius
                    .zero),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
         //   mainAxisSize: MainAxisSize.min,
            children: [
              widget.image==null ? const SizedBox.shrink() :CustomImage(url: widget.image),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:  CrossAxisAlignment.end,
                children: [
                  widget.text.length < 50 ? Text(widget.text): Expanded(
                      child:Text(widget.text),),
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:  CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Clipboard.setData(ClipboardData(text: widget.text));
                      Fluttertoast.showToast(
                          msg: "Nusxalandi",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black54,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Icon(Icons.copy,color: Colors.white,size: 20.r,),
                  )
                ],
              )

            ],
          ),
        );
  }
}
