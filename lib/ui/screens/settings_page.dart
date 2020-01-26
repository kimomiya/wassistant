// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:wassistant/ui/components/left_drawer.dart';
// import 'package:wassistant/ui/components/navigation_bar.dart';
// import 'package:wassistant/view_models/app_view_model.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({@required this.text});

//   final String text;
//   String get _title => 'Settings';

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppViewModel>(
//       builder: (_, appViewModel, __) {
//         return Scaffold(
//           appBar: NavigationBar(_title),
//           body: Center(
//             child: Text(text),
//           ),
//           drawer: LeftDrawer(appViewModel),
//         );
//       },
//     );
//   }
// }
