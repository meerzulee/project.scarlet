import 'package:flutter/services.dart';

//Channel to use TDlib requests
class TdLibJSON {
  static const _platform = const MethodChannel('tdjsonlib');

  static Future<void> create() async => await _platform.invokeMethod('create');

  static Future<void> send({String request}) async => await _platform.invokeMethod('send', <String, dynamic>{'request': request});

  static Future<String> receive({double delay}) async => await _platform.invokeMethod('receive',  <String, dynamic>{'delay': delay});

  static Future<String> execute({String request}) async => await _platform.invokeMethod('execute', <String, dynamic>{'request': request});

  static Future<void> destroy() async => await _platform.invokeMethod('destroy');

}

//Channel to control music
class MusicChannel {
  static const _platform = const MethodChannel('musicchannel');

  static Future<void> play({String title}) async => await _platform.invokeMethod('play', <String, dynamic>{'title': title});

  static Future<void> pause() async => await _platform.invokeMethod('pause');

}