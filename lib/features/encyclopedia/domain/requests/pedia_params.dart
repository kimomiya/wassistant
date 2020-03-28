import '../../../../core/env/env.dart';

abstract class PediaParams {
  /* Response field. 
   * The fields are separated with commas. 
   * Embedded fields are separated with dots. 
   * To exclude a field, use “-” in front of its name. 
   * In case the parameter is not defined, the method returns all fields. Maximum limit: 100.
  */
  // List<String> fields;
  // PediaRequestLanguage language;

  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    var map = <String, dynamic>{
      'application_id': env.applicationId,
      'language': env.language,
    };

    if (params.containsKey('fields') &&
        (params['fields'] as List<String>).isNotEmpty) {
      map['fields'] = params['fields'];
    }
    return map;
  }
}

enum PediaRequestLanguage {
  cs,
  de,
  en,
  es,
  fr,
  ja,
  pl,
  ru,
  th,
  zhTw,
  tr,
  zhCn,
  ptBr,
  esMx
}

extension Value on PediaRequestLanguage {
  String get value {
    switch (this) {
      case PediaRequestLanguage.cs:
        return 'cs';
      case PediaRequestLanguage.de:
        return 'de';
      case PediaRequestLanguage.en:
        return 'en';
      case PediaRequestLanguage.es:
        return 'es';
      case PediaRequestLanguage.fr:
        return 'fr';
      case PediaRequestLanguage.ja:
        return 'ja';
      case PediaRequestLanguage.pl:
        return 'pl';
      case PediaRequestLanguage.ru:
        return 'ru';
      case PediaRequestLanguage.th:
        return 'th';
      case PediaRequestLanguage.zhTw:
        return 'zh-tw';
      case PediaRequestLanguage.tr:
        return 'tr';
      case PediaRequestLanguage.zhCn:
        return 'zh-cn';
      case PediaRequestLanguage.ptBr:
        return 'pt-br';
      case PediaRequestLanguage.esMx:
        return 'es-mx';
      default:
        return 'zh-cn';
    }
  }
}
