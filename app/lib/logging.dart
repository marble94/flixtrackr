import 'package:logger/logger.dart';

Logger getLogger() {
  return Logger(
    printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        colors: true,
        printEmojis: true,
        printTime: true
        ),
  );
}
