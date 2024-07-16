import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_translate/controller/tr_controller/tr_state.dart';
import 'package:x_translate/infostructure/tr_model.dart';
import 'package:x_translate/infostructure/tr_reportory.dart';
import 'package:image_picker/image_picker.dart';
import '../../infostructure/message_model.dart';

class TrNotifire extends StateNotifier<TrState>{
  TrNotifire():super(const TrState());
  List<MessageModel> list=[];
  ImagePicker image = ImagePicker();

  translate({required String text,String from="uz",String to="en",required VoidCallback? onSuccess}) async {
    String tr="";
    tr=await  TrRepostory.translateText(text: text,from: state.from?.shortName ?? "uz",to: state.to?.shortName ?? "en");
    state=state.copyWith(translateText: tr);
    onSuccess?.call();
  }

  sendMessage({required String text,String? imagePath,VoidCallback? onSuccess}){
    // List<Uint8List>? images;
    // if (imagePath?.isNotEmpty ?? false) {
    //   images = [
    //     File(imagePath!).readAsBytesSync(),
    //   ];
    // }

    list.add(MessageModel(title: text, ownerId: "0", image: imagePath));
    state=state.copyWith(isLoading: true);
    translate(text: text,onSuccess: (){
      list.add(MessageModel(title: state.translateText, ownerId: "1", image: "",));
      Future.delayed(Duration(milliseconds: 300)).then((onValue){
        onSuccess?.call();
      });
    });
    state=state.copyWith(listOfMessage: list,isLoading: false);
  }

  changeMode(bool value){
    state=state.copyWith(isDark: value);
  }

  getImageGallery(VoidCallback onSuccess) async {
    await image
        .pickImage(source: ImageSource.gallery, imageQuality: 65)
        .then((value) async {
      if (value != null) {
        // CroppedFile? cropperImage =
        // await ImageCropper().cropImage(sourcePath: value.path);
        state = state.copyWith(imagePath: value.path);
        onSuccess();
      }
    });
  }


  clearImagePath(){
    state=state.copyWith(imagePath: null);
  }

  isEmpt(String text){
    state=state.copyWith(isEmpt: text.isNotEmpty);
  }

  changeTo(TrModel value){
    state=state.copyWith(to: value);
  }
  changeFrom(TrModel value){
    state=state.copyWith(from:value);
  }

}