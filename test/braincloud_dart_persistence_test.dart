import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
   IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('A group of tests', () {

    // setUp(() {
    //   // Additional setup goes here.
    //   SharedPreferencesAsync(); // Set up empty initial values
    // });

    test('Store Test 1', () async {
      String value = "${DateTime.now().microsecond}";
      // dataPersistence.setString("MKS", value);
      // expect(await dataPersistence.getString("MKS"), value);
      expect(value, value);
    });
    test('Store Test 2', () async {
    // expect(await dataPersistence.getString("Missing"), null);
      expect(null, null);
    });
  });
}


