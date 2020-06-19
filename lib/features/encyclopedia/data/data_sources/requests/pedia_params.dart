import '../../../../../core/env/env.dart';

abstract class PediaParams {
  static Map<String, dynamic> toParams(Map<String, dynamic> params) {
    final Map<String, dynamic> map = {};

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