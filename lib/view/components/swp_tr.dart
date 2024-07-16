import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/controller/providers.dart';
import 'package:x_translate/infostructure/tr_reportory.dart';

class SwapTr extends ConsumerWidget {
  const SwapTr({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return Container(
      width: 100.w,
      height: 40.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return DraggableScrollableSheet(
                        initialChildSize: 1,
                        builder: (_, controolr) {
                          return ListView.builder(
                              controller: controolr,
                              itemCount: TrRepostory.listOfTr.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.w, vertical: 5.h),
                                  child: GestureDetector(
                                    onTap: (){
                                      ref.read(trProvider.notifier).changeFrom(TrRepostory.listOfTr[index]);
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      children: [
                                        CircleFlag(
                                            TrRepostory.listOfTr[index].flagCode),
                                        Text(TrRepostory.listOfTr[index].langName)
                                      ],
                                    ),
                                  ),
                                );
                              });
                        });
                  });
            },
            child: CircleFlag(
              ref.watch(trProvider).from?.flagCode ?? "uz",
              size: 30.r,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 30.r,
          ),
          GestureDetector(
            child: CircleFlag(
              ref.watch(trProvider).to?.flagCode ?? "gb",
              size: 30.r,
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return DraggableScrollableSheet(
                        initialChildSize: 1,
                        builder: (_, controolr) {
                          return ListView.builder(
                              controller: controolr,
                              itemCount: TrRepostory.listOfTr.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.w, vertical: 5.h),
                                  child: GestureDetector(
                                    onTap: (){
                                      ref.read(trProvider.notifier).changeTo(TrRepostory.listOfTr[index]);
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      children: [
                                        CircleFlag(
                                            TrRepostory.listOfTr[index].flagCode),
                                        Text(TrRepostory.listOfTr[index].langName)
                                      ],
                                    ),
                                  ),
                                );
                              });
                        });
                  });
            },
          )
        ],
      ),
    );
  }
}
