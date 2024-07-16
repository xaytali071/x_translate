

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:x_translate/infostructure/tr_model.dart';

abstract class TrRepostory{
  TrRepostory._();

 static String translatedText = '';

static  Future<String> translateText({required String text,required String from,required String to}) async {
    final String url = 'https://api.mymemory.translated.net/get?q=$text&langpair=$from|$to';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      translatedText = data['responseData']['translatedText'];
      print(translatedText);
      return translatedText;
    } else {
      throw Exception('Failed to translate text');
    }
  }

 static List<TrModel> listOfTr=[
    TrModel(langName: "English", shortName: "en",flagCode: "gb"),
    TrModel(langName: "O'zbek", shortName: "uz", flagCode: "uz"),
    TrModel(langName: "French", shortName: "fr", flagCode: "fr"),
    TrModel(langName: "Dutch", shortName: "nl", flagCode: "gr"),
    TrModel(langName: "Hindi", shortName: "hi", flagCode: "in"),
    TrModel(langName: "Italian", shortName: "it", flagCode: "it"),
    TrModel(langName: "Japanse", shortName: "ja", flagCode: "ja"),
    TrModel(langName: "Kazkh", shortName: "kk", flagCode: "kk"),
    TrModel(langName: "Kyrgyz", shortName: "ky", flagCode: "ky"),
    TrModel(langName: "Russian", shortName: 'ru', flagCode: "ru"),
    TrModel(langName: "Spanish", shortName: "es", flagCode: "es"),
    TrModel(langName: "Turkish", shortName: "tr", flagCode: "tr"),
    TrModel(langName: "Turkmen", shortName: "tk", flagCode: "tk"),
    TrModel(langName: "Arabic", shortName: "ar", flagCode: "ar"),
    TrModel(langName: "Armenian", shortName: "hy", flagCode: "hy"),
    TrModel(langName: "Azerbaijan", shortName: "az", flagCode: 'az'),
    TrModel(langName: "Bielarus", shortName: "be", flagCode: "by"),
    TrModel(langName: "Chinaes", shortName: "zh", flagCode: "cn"),
    TrModel(langName: "Korean", shortName: "ko", flagCode: 'ko')
  ];

}