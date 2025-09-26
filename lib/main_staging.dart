import 'package:smart_home/app/app.dart';
import 'package:smart_home/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
