import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/controller/providers.dart';

import '../components/custom_social_button.dart';


class DrawerWidget extends ConsumerWidget {
  final Key dkey;
  const DrawerWidget({super.key, required this.dkey, });

  @override
  Widget build(BuildContext context,ref) {
        return Drawer(
          key: dkey,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                50.verticalSpace,

                20.verticalSpace,
                SizedBox(
                    width: 250.w,
                    child: Text("mdk",)),
                20.verticalSpace,
                CustomSocialButton(leftIcon: Icon(Icons.dark_mode), text: "Darkmode", onTap: (){},rightIcon: Switch(activeColor: Colors.tealAccent,inactiveThumbColor: Colors.green,inactiveTrackColor: Colors.green.withOpacity(0.4),value:ref.watch(trProvider).isDark , onChanged: (bool value) {
                  ref.read(trProvider.notifier).changeMode(value);
                },),),
                20.verticalSpace,
                CustomSocialButton(leftIcon: Icon(Icons.person),text: "Profile",onTap: (){},),
                20.verticalSpace,
                CustomSocialButton(leftIcon: Icon(Icons.key), text: "Change password", onTap: (){}),
                20.verticalSpace,
                CustomSocialButton(leftIcon: Icon(Icons.logout), text: "Log out", onTap: (){}),
                20.verticalSpace,
                CustomSocialButton(leftIcon: Icon(Icons.delete,), text: "Delete account", onTap: (){})
              ],
            ),
          ),
        );

  }
}