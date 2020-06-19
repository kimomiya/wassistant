import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wassistant/features/encyclopedia/data/models/pedia_data_info_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tPediaInfoModel = PediaInfoModel(
    shipsUpdatedAt: 1579123670,
    shipTypes: {
      'Destroyer': '驱逐舰',
      'AirCarrier': '航空母舰',
      'Battleship': '战列舰',
      'Cruiser': '巡洋舰',
      'Submarine': '潜艇',
    },
    languages: {
      'ru': 'Русский',
      'fr': 'Français',
      'en': 'English',
      'zh-tw': '繁體中文',
      'de': 'Deutsch',
      'tr': 'Türkçe',
      'es-mx': 'Español (México)',
      'zh-cn': '中文',
      'pt-br': 'Português do Brasil',
      'pl': 'Polski',
      'th': 'ไทย',
      'cs': 'Čeština',
      'ja': '日本語',
      'es': 'Español'
    },
    shipModifications: {
      'PCM005_SecondaryGun_Mod_I': '副炮组修改型 1',
      'PCM019_SecondaryGun_Mod_III': '副炮组修改型 3',
      'PCM006_MainGun_Mod_II': '主炮组修改型 2',
      'PCM026_LookoutStation_Mod_I': '目标捕获系统修改型 1',
      'PCM063_Fighter_Mod_I': '战斗机修改型 2',
      'PCM065_DiveBomber_Mod_I': '俯冲轰炸机修改型 2',
      'PCM042_RLSSearch_Mod_I': '监视雷达 I 型',
      'PCM036_SpeedBooster_Mod_I': '引擎增压 I 型',
      'PCM021_Engine_Mod_I': '推进系统修改型 1',
      'PCM025_SteeringGear_Mod_II': '操舵装置修改型 2',
      'PCM030_MainWeapon_Mod_I': '主要军备修改型 1',
      'PCM027_ConcealmentMeasures_Mod_I': '隐蔽系统修改型 1',
      'PCM001_MainGun_Mod_I': '主炮组修改型 1',
      'PCM039_CrashCrew_Mod_I': '伤害控制小组 I 型',
      'PCM052_Special_Mod_I_Des_Moines': '强化推进系统',
      'PCM067_Fighter_Mod_II': '战斗机修改型 1',
      'PCM028_FireControl_Mod_I_US': '舰炮射控系统修改型 1',
      'PCM057_Special_Mod_I_Shimakaze': '鱼雷发射管装填加速器',
      'PCM003_Airplanes_Mod_I': '航空大队修改型 1',
      'PCM020_DamageControl_Mod_I': '损害控制系统修改型 1',
      'PCM044_Special_Mod_I_Republique': '追加主炮装填手',
      'PCM009_FlightControl_Mod_I': '飞航控制修改型 1',
      'PCM010_Airplanes_Mod_II': '航空大队修改型 2',
      'PCM004_AirDefense_Mod_I': '防空炮修改型 1',
      'PCM068_PlaneEngine_Mod_I': '飞机引擎修改型 1',
      'PCM034_Guidance_Mod_0': '瞄准系统修改型 0',
      'PCM032_PowderMagazine_Mod_I': '弹药库修改型 1',
      'PCM031_SecondaryWeapon_Mod_I': '辅助军备修改型 1',
      'PCM047_Special_Mod_I_Montana': '强化伤害控制系统',
      'PCM049_Special_Mod_I_Hindenburg': '强化维修小组',
      'PCM017_Airplanes_Mod_III': '航空大队修改型 3',
      'PCM014_Torpedo_Mod_III': '鱼雷发射管修改型 3',
      'PCM045_Special_Mod_I_GKurfurst': '强化主武装',
      'PCM007_Torpedo_Mod_II': '鱼雷发射管修改型 2',
      'PCM023_DamageControl_Mod_II': '损害控制系统修改型 2',
      'PCM058_Special_Mod_I_Gearing': '修改船身',
      'PCM046_Special_Mod_I_Yamato': '强化主炮',
      'PCM062_Special_Mod_I_Hakuryu': '强化飞航控制与航空大队',
      'PCM051_Special_Mod_I_Minotaur': '强化烟雾产生器',
      'PCM011_AirDefense_Mod_II': '防空炮修改型 2',
      'PCM016_FlightControl_Mod_II': '飞航控制修改型 2',
      'PCM008_FireControl_Mod_I': '舰炮射控系统修改型 1',
      'PCM060_Special_Mod_I_Grozovoi': '无后座主炮',
      'PCM061_Special_Mod_I_Midway': '强化攻击机队装甲防护',
      'PCM035_SteeringGear_Mod_III': '操舵装置修改型 3',
      'PCM048_Special_Mod_I_Zao': '强化主炮与操舵装置',
      'PCM022_SteeringGear_Mod_I': '操舵装置修改型 1',
      'PCM043_Special_Mod_I_Conqueror': '强化工程系统',
      'PCM056_Special_Mod_I_Z_52': '低轮廓鱼雷发射管',
      'PCM055_Special_Mod_I_Khabarovsk': '重型火炮',
      'PCM037_SmokeGenerator_Mod_I': '发烟机 I 型',
      'PCM053_Special_Mod_I_Worcester': '强化对抗手段',
      'PCM024_Engine_Mod_II': '推进系统修改型 2',
      'PCM012_SecondaryGun_Mod_II': '副炮组修改型 2',
      'PCM059_Special_Mod_I_Yueyang': '强化武装',
      'PCM033_Guidance_Mod_I': '瞄准系统修改型 1',
      'PCM041_SonarSearch_Mod_I': '水底搜索 I 型',
      'PCM040_AirDefenseDisp_Mod_I': '防御型防空火力 I 型',
      'PCM015_FireControl_Mod_II': '舰炮射控系统修改型 2',
      'PCM018_AirDefense_Mod_III': '防空炮修改型 3',
      'PCM066_TorpedoBomber_Mod_II': '鱼雷轰炸机修改型 1',
      'PCM002_Torpedo_Mod_I': '鱼雷发射管修改型 1',
      'PCM064_TorpedoBomber_Mod_I': '鱼雷轰炸机修改型 2',
      'PCM050_Special_Mod_I_Henri_IV': '增加火炮仰角',
      'PCM038_Spotter_Mod_I': '侦察机 I 型',
      'PCM029_FireControl_Mod_II_US': '舰炮射控系统修改型 2',
      'PCM054_Special_Mod_I_Moskva': '重型主炮',
      'PCM013_MainGun_Mod_III': '主炮组修改型 3'
    },
    shipModules: {
      'Engine': '引擎',
      'FlightControl': '飞航控制',
      'Suo': '舰炮射控系统',
      'Hull': '舰身',
      'Artillery': '主炮',
      'Torpedoes': '鱼雷',
      'TorpedoBomber': '鱼雷轰炸机',
      'DiveBomber': '俯冲轰炸机',
      'Fighter': '战斗机'
    },
    shipTypeImages: {
      'Destroyer': {
        'image_premium':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/premium_f94cc0f538869ccfc9adb669febfa7f44774c5858165eea6702b960845987e60.png',
        'image':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/standard_e63ad0ec80732b1c0dde479b466999b068c3fc355e7d674864a0a8cb35f9443c.png',
        'image_elite':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/elite_3d28d222e8bcbcf1610b57bb237e6a0e1fc39eab52dfda6fa925e219021ebee9.png'
      },
      'AirCarrier': {
        'image_premium':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/premium_4516ee494bb0396e51796cebff5e45c3f448d9790e0a58082057b8949ed9a3f8.png',
        'image':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/standard_9f372d47b4fa5b5bbd79a3aaac816cb8d5343fa93949cce8934d94b84751b88e.png',
        'image_elite':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/elite_8c5dbbe68e07b0a72c57a04a3d98baadc528f058be3a2e7b198fabeb07172330.png'
      },
      'Battleship': {
        'image_premium':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/premium_1d0cabf1997104fd727039ab9c09819260343ab3a9e862f361434d7f42270eb3.png',
        'image':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/standard_1468cf2ed1dc129ec4db4d9d18306bd06abb0d6b08c805dc94fe23ce6187c119.png',
        'image_elite':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/elite_9fe36e82e214ad6f8dcc305bf8d10d3d0fe35c64628611d9a39f3af01382a567.png'
      },
      'Cruiser': {
        'image_premium':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/premium_1114542bcd311c388080eea3a4d54a7ea6fdc8706b019fcbf16ace9951f3a000.png',
        'image':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/standard_d1cf4f9cd1a11834d9343d2908ab077c1553163d495f6b3d837e7b2d29a69886.png',
        'image_elite':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/elite_127b2a5f66ce04425e45721020a88ed6d6cad202e186f39577cbcd91dd205fe3.png'
      },
      'Submarine': {
        'image_premium':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/premium_b013b57b506e2b31b5dd7b346949fddaa9af651419fc5c8045719ba48d893e34.png',
        'image':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/standard_0096ffccf5d6708273b0a4412a9e80f6e386e4d69575846c7ef36e64e23e1445.png',
        'image_elite':
            'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/elite_cadb96658b454147bf20e43fd63687ad6a351c89f99a48ae1064b1b2873c91cd.png'
      }
    },
    shipNations: {
      'commonwealth': 'L系',
      'europe': '欧洲',
      'italy': 'I系',
      'usa': 'M系',
      'pan_asia': 'C系',
      'france': 'F系',
      'ussr': 'S系',
      'germany': 'D系',
      'uk': 'Y系',
      'japan': 'R系',
      'pan_america': '泛美洲'
    },
    gameVersion: '0.9.0.0',
  );

  group(
    'PediaInfoModel',
    () {
      test(
        'should be a subclass of PediaInfo entity',
        () {
          expect(tPediaInfoModel, isA<PediaInfoModel>());
        },
      );
    },
  );

  group(
    'fromJson',
    () {
      test(
        'should return a valid model when the JSON is player info',
        () {
          final jsonMap = jsonDecode(
            fixture('encyclopedia_info'),
          ) as Map<String, dynamic>;
          final result =
              PediaInfoModel.fromJson(jsonMap['data'] as Map<String, dynamic>);

          expect(result, equals(tPediaInfoModel));
        },
      );
    },
  );

  group(
    'toJson',
    () {
      test(
        'should return a JSON map containing the player info data',
        () {
          final result = tPediaInfoModel.toJson();
          final expectedJsonMap = {
            'ships_updated_at': 1579123670,
            'ship_types': {
              'Destroyer': '驱逐舰',
              'AirCarrier': '航空母舰',
              'Battleship': '战列舰',
              'Cruiser': '巡洋舰',
              'Submarine': '潜艇'
            },
            'languages': {
              'ru': 'Русский',
              'fr': 'Français',
              'en': 'English',
              'zh-tw': '繁體中文',
              'de': 'Deutsch',
              'tr': 'Türkçe',
              'es-mx': 'Español (México)',
              'zh-cn': '中文',
              'pt-br': 'Português do Brasil',
              'pl': 'Polski',
              'th': 'ไทย',
              'cs': 'Čeština',
              'ja': '日本語',
              'es': 'Español'
            },
            'ship_modifications': {
              'PCM005_SecondaryGun_Mod_I': '副炮组修改型 1',
              'PCM019_SecondaryGun_Mod_III': '副炮组修改型 3',
              'PCM006_MainGun_Mod_II': '主炮组修改型 2',
              'PCM026_LookoutStation_Mod_I': '目标捕获系统修改型 1',
              'PCM063_Fighter_Mod_I': '战斗机修改型 2',
              'PCM065_DiveBomber_Mod_I': '俯冲轰炸机修改型 2',
              'PCM042_RLSSearch_Mod_I': '监视雷达 I 型',
              'PCM036_SpeedBooster_Mod_I': '引擎增压 I 型',
              'PCM021_Engine_Mod_I': '推进系统修改型 1',
              'PCM025_SteeringGear_Mod_II': '操舵装置修改型 2',
              'PCM030_MainWeapon_Mod_I': '主要军备修改型 1',
              'PCM027_ConcealmentMeasures_Mod_I': '隐蔽系统修改型 1',
              'PCM001_MainGun_Mod_I': '主炮组修改型 1',
              'PCM039_CrashCrew_Mod_I': '伤害控制小组 I 型',
              'PCM052_Special_Mod_I_Des_Moines': '强化推进系统',
              'PCM067_Fighter_Mod_II': '战斗机修改型 1',
              'PCM028_FireControl_Mod_I_US': '舰炮射控系统修改型 1',
              'PCM057_Special_Mod_I_Shimakaze': '鱼雷发射管装填加速器',
              'PCM003_Airplanes_Mod_I': '航空大队修改型 1',
              'PCM020_DamageControl_Mod_I': '损害控制系统修改型 1',
              'PCM044_Special_Mod_I_Republique': '追加主炮装填手',
              'PCM009_FlightControl_Mod_I': '飞航控制修改型 1',
              'PCM010_Airplanes_Mod_II': '航空大队修改型 2',
              'PCM004_AirDefense_Mod_I': '防空炮修改型 1',
              'PCM068_PlaneEngine_Mod_I': '飞机引擎修改型 1',
              'PCM034_Guidance_Mod_0': '瞄准系统修改型 0',
              'PCM032_PowderMagazine_Mod_I': '弹药库修改型 1',
              'PCM031_SecondaryWeapon_Mod_I': '辅助军备修改型 1',
              'PCM047_Special_Mod_I_Montana': '强化伤害控制系统',
              'PCM049_Special_Mod_I_Hindenburg': '强化维修小组',
              'PCM017_Airplanes_Mod_III': '航空大队修改型 3',
              'PCM014_Torpedo_Mod_III': '鱼雷发射管修改型 3',
              'PCM045_Special_Mod_I_GKurfurst': '强化主武装',
              'PCM007_Torpedo_Mod_II': '鱼雷发射管修改型 2',
              'PCM023_DamageControl_Mod_II': '损害控制系统修改型 2',
              'PCM058_Special_Mod_I_Gearing': '修改船身',
              'PCM046_Special_Mod_I_Yamato': '强化主炮',
              'PCM062_Special_Mod_I_Hakuryu': '强化飞航控制与航空大队',
              'PCM051_Special_Mod_I_Minotaur': '强化烟雾产生器',
              'PCM011_AirDefense_Mod_II': '防空炮修改型 2',
              'PCM016_FlightControl_Mod_II': '飞航控制修改型 2',
              'PCM008_FireControl_Mod_I': '舰炮射控系统修改型 1',
              'PCM060_Special_Mod_I_Grozovoi': '无后座主炮',
              'PCM061_Special_Mod_I_Midway': '强化攻击机队装甲防护',
              'PCM035_SteeringGear_Mod_III': '操舵装置修改型 3',
              'PCM048_Special_Mod_I_Zao': '强化主炮与操舵装置',
              'PCM022_SteeringGear_Mod_I': '操舵装置修改型 1',
              'PCM043_Special_Mod_I_Conqueror': '强化工程系统',
              'PCM056_Special_Mod_I_Z_52': '低轮廓鱼雷发射管',
              'PCM055_Special_Mod_I_Khabarovsk': '重型火炮',
              'PCM037_SmokeGenerator_Mod_I': '发烟机 I 型',
              'PCM053_Special_Mod_I_Worcester': '强化对抗手段',
              'PCM024_Engine_Mod_II': '推进系统修改型 2',
              'PCM012_SecondaryGun_Mod_II': '副炮组修改型 2',
              'PCM059_Special_Mod_I_Yueyang': '强化武装',
              'PCM033_Guidance_Mod_I': '瞄准系统修改型 1',
              'PCM041_SonarSearch_Mod_I': '水底搜索 I 型',
              'PCM040_AirDefenseDisp_Mod_I': '防御型防空火力 I 型',
              'PCM015_FireControl_Mod_II': '舰炮射控系统修改型 2',
              'PCM018_AirDefense_Mod_III': '防空炮修改型 3',
              'PCM066_TorpedoBomber_Mod_II': '鱼雷轰炸机修改型 1',
              'PCM002_Torpedo_Mod_I': '鱼雷发射管修改型 1',
              'PCM064_TorpedoBomber_Mod_I': '鱼雷轰炸机修改型 2',
              'PCM050_Special_Mod_I_Henri_IV': '增加火炮仰角',
              'PCM038_Spotter_Mod_I': '侦察机 I 型',
              'PCM029_FireControl_Mod_II_US': '舰炮射控系统修改型 2',
              'PCM054_Special_Mod_I_Moskva': '重型主炮',
              'PCM013_MainGun_Mod_III': '主炮组修改型 3'
            },
            'ship_modules': {
              'Engine': '引擎',
              'FlightControl': '飞航控制',
              'Suo': '舰炮射控系统',
              'Hull': '舰身',
              'Artillery': '主炮',
              'Torpedoes': '鱼雷',
              'TorpedoBomber': '鱼雷轰炸机',
              'DiveBomber': '俯冲轰炸机',
              'Fighter': '战斗机'
            },
            'ship_type_images': {
              'Destroyer': {
                'image_premium':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/premium_f94cc0f538869ccfc9adb669febfa7f44774c5858165eea6702b960845987e60.png',
                'image':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/standard_e63ad0ec80732b1c0dde479b466999b068c3fc355e7d674864a0a8cb35f9443c.png',
                'image_elite':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Destroyer\/elite_3d28d222e8bcbcf1610b57bb237e6a0e1fc39eab52dfda6fa925e219021ebee9.png'
              },
              'AirCarrier': {
                'image_premium':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/premium_4516ee494bb0396e51796cebff5e45c3f448d9790e0a58082057b8949ed9a3f8.png',
                'image':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/standard_9f372d47b4fa5b5bbd79a3aaac816cb8d5343fa93949cce8934d94b84751b88e.png',
                'image_elite':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/AirCarrier\/elite_8c5dbbe68e07b0a72c57a04a3d98baadc528f058be3a2e7b198fabeb07172330.png'
              },
              'Battleship': {
                'image_premium':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/premium_1d0cabf1997104fd727039ab9c09819260343ab3a9e862f361434d7f42270eb3.png',
                'image':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/standard_1468cf2ed1dc129ec4db4d9d18306bd06abb0d6b08c805dc94fe23ce6187c119.png',
                'image_elite':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Battleship\/elite_9fe36e82e214ad6f8dcc305bf8d10d3d0fe35c64628611d9a39f3af01382a567.png'
              },
              'Cruiser': {
                'image_premium':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/premium_1114542bcd311c388080eea3a4d54a7ea6fdc8706b019fcbf16ace9951f3a000.png',
                'image':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/standard_d1cf4f9cd1a11834d9343d2908ab077c1553163d495f6b3d837e7b2d29a69886.png',
                'image_elite':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Cruiser\/elite_127b2a5f66ce04425e45721020a88ed6d6cad202e186f39577cbcd91dd205fe3.png'
              },
              'Submarine': {
                'image_premium':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/premium_b013b57b506e2b31b5dd7b346949fddaa9af651419fc5c8045719ba48d893e34.png',
                'image':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/standard_0096ffccf5d6708273b0a4412a9e80f6e386e4d69575846c7ef36e64e23e1445.png',
                'image_elite':
                    'https:\/\/glossary-wows-global.gcdn.co\/icons\/\/vehicle\/types\/Submarine\/elite_cadb96658b454147bf20e43fd63687ad6a351c89f99a48ae1064b1b2873c91cd.png'
              }
            },
            'ship_nations': {
              'commonwealth': 'L系',
              'europe': '欧洲',
              'italy': 'I系',
              'usa': 'M系',
              'pan_asia': 'C系',
              'france': 'F系',
              'ussr': 'S系',
              'germany': 'D系',
              'uk': 'Y系',
              'japan': 'R系',
              'pan_america': '泛美洲'
            },
            'game_version': '0.9.0.0'
          };
          expect(result, expectedJsonMap);
        },
      );
    },
  );
}
