// GENERATED CODE - DO NOT MODIFY BY HAND

// Currently loading model from "JSON" which always encodes with double quotes
// ignore_for_file: prefer_single_quotes

import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'database/person.dart';

ModelDefinition getObjectBoxModel() {
  final model = ModelInfo.fromMap({
    "entities": [
      {
        "id": "1:5296099919489026266",
        "lastPropertyId": "4:7860474706457388116",
        "name": "Person",
        "properties": [
          {"id": "1:1179850109182908458", "name": "firstName", "type": 9},
          {"id": "2:3765558520124095465", "name": "lastName", "type": 9},
          {"id": "3:6299091996034682038", "name": "age", "type": 6},
          {"id": "4:7860474706457388116", "name": "id", "type": 6, "flags": 1}
        ],
        "relations": [],
        "backlinks": []
      }
    ],
    "lastEntityId": "1:5296099919489026266",
    "lastIndexId": "0:0",
    "lastRelationId": "0:0",
    "lastSequenceId": "0:0",
    "modelVersion": 5
  }, check: false);

  final bindings = <Type, EntityDefinition>{};
  bindings[Person] = EntityDefinition<Person>(
      model: model.getEntityByUid(5296099919489026266),
      toOneRelations: (Person object) => [],
      toManyRelations: (Person object) => {},
      getId: (Person object) => object.id,
      setId: (Person object, int id) {
        object.id = id;
      },
      objectToFB: (Person object, fb.Builder fbb) {
        final offsetfirstName =
            object.firstName == null ? null : fbb.writeString(object.firstName);
        final offsetlastName =
            object.lastName == null ? null : fbb.writeString(object.lastName);
        fbb.startTable();
        fbb.addOffset(0, offsetfirstName);
        fbb.addOffset(1, offsetlastName);
        fbb.addInt64(2, object.age);
        fbb.addInt64(3, object.id ?? 0);
        fbb.finish(fbb.endTable());
        return object.id ?? 0;
      },
      objectFromFB: (Store store, Uint8List fbData) {
        final buffer = fb.BufferContext.fromBytes(fbData);
        final rootOffset = buffer.derefObject(0);

        final object = Person();
        object.firstName = fb.StringReader().vTableGet(buffer, rootOffset, 4);
        object.lastName = fb.StringReader().vTableGet(buffer, rootOffset, 6);
        object.age = fb.Int64Reader().vTableGet(buffer, rootOffset, 8);
        object.id = fb.Int64Reader().vTableGet(buffer, rootOffset, 10);
        return object;
      });

  return ModelDefinition(model, bindings);
}

class Person_ {
  static final firstName =
      QueryStringProperty(entityId: 1, propertyId: 1, obxType: 9);
  static final lastName =
      QueryStringProperty(entityId: 1, propertyId: 2, obxType: 9);
  static final age =
      QueryIntegerProperty(entityId: 1, propertyId: 3, obxType: 6);
  static final id =
      QueryIntegerProperty(entityId: 1, propertyId: 4, obxType: 6);
}
