import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_translate/controller/providers.dart';
import 'package:x_translate/controller/tr_controller/tr_state.dart';
import 'package:x_translate/view/components/keyboard_dissimer.dart';
import 'package:x_translate/view/components/message_form_field.dart';
import 'package:x_translate/view/components/swp_tr.dart';
import 'package:x_translate/view/components/title_message.dart';
import 'package:x_translate/view/page/drower_widget.dart';

import '../components/custom_image.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextEditingController send = TextEditingController();
  GlobalKey<ScaffoldState> _key = GlobalKey();
  ScrollController scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    final event = ref.read(trProvider.notifier);
    TrState watch = ref.watch(trProvider);
    return KeyboardDissimer(
      child: Scaffold(
        drawer: DrawerWidget(dkey: _key,),
          appBar: AppBar(
            toolbarHeight: 80.h,
            leading: Builder(
              builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: Icon(
                    Icons.menu,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  }
            ),
            ),
            actions: [
SwapTr(),
            ],
          ),
          body: Expanded(
            child: ListView.builder(
              controller: scrollController,
                itemCount: watch.listOfMessage.length,
                itemBuilder: (context, index) {
                  return Align(
                      alignment: watch.listOfMessage[index].ownerId == "1"
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: TitleMessae(
                        isOwner: watch.listOfMessage[index].ownerId == "0",
                        text: watch.listOfMessage[index].title,
                      ));
                }),
          ),
          floatingActionButton: watch.imagePath == null
              ? const SizedBox.shrink()
              : CustomImage(
                  url: watch.imagePath,
                  width: 100,
                  height: 100,
                ),
          bottomNavigationBar: MessageFormField(
            onSend: () {
              if (watch.isEmpt) {
                event.sendMessage(text: send.text,onSuccess: (){
                  scrollController.position.jumpTo(scrollController.position.maxScrollExtent);
                });
                send.clear();
                event.isEmpt("");
              }
            },
            sendButton: watch.isEmpt ? Colors.green : (watch.isDark ? Colors.white12 : Colors.black12),
            controller: send,
            onChanged: (value) {
              event.isEmpt(value);
            },
          )),
    );
  }
}
