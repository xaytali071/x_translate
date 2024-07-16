
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_translate/infostructure/tr_model.dart';

import '../../infostructure/message_model.dart';
part 'tr_state.freezed.dart';

@freezed
class TrState with _$TrState{
  const factory TrState({
    @Default("") String translateText,
    @Default([]) List<MessageModel> listOfMessage,
    @Default(false) bool isLoading,
    String? imagePath,
    @Default(false) bool isEmpt,
    @Default(false) bool isDark,
     TrModel? from,
    TrModel?  to,
})=_TrState;
}