import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_translate/controller/tr_controller/tr_notifire.dart';
import 'package:x_translate/controller/tr_controller/tr_state.dart';


final trProvider=StateNotifierProvider<TrNotifire,TrState>((ref) => TrNotifire());