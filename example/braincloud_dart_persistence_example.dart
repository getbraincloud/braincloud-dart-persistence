import 'package:braincloud_data_persistence/braincloud_data_persistence.dart';

void main() async {
  var dataPersistence = DataPersistence();
  dataPersistence.setString("KEY", "value");

  print('dataPersistence: ${ await dataPersistence.getString("KEY")}');
}
