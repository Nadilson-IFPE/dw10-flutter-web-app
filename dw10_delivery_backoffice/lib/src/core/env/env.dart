import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;

  Env._();

// Flutter Singleton pattern
  static Env get instance {
    _instance ??= Env._();
    return _instance!;
  }

// Load Env vars
  Future<void> load() => dotenv.load();

  String? maybeGet(String key) => dotenv.maybeGet(key);

  String get(String key) => dotenv.get(key);
}
