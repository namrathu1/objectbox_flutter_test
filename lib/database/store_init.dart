import 'dart:io';

import 'package:objectbox_flutter_test/objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class BoxStore {
  static Future<Store> getStore() async {
    /// Returns an instance of the Store
    Directory dir = await getApplicationDocumentsDirectory();
    return Store(getObjectBoxModel(), directory: dir.path + '/objectbox');
  }
}
