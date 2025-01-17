import 'package:braincloud_dart_persistence/braincloud_dart_persistence.dart';

void main() async {
  var dataPersistence = DataPersistence();
  dataPersistence.setString("KEY", "value");

  print('dataPersistence: ${ await dataPersistence.getString("KEY")}');
}
