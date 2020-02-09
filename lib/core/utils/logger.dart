import 'package:logger/logger.dart';

final logger = Logger(
  filter: DebugFilter(),
  printer: _printer,
  output: ConsoleOutput(),
);

final _printer = PrettyPrinter(
  methodCount: 0,
  errorMethodCount: 1,
  printTime: true,
);
