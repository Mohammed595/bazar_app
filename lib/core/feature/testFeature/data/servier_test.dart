import 'dart:convert';

import 'package:bazar_app/core/feature/testFeature/data/model.dart';
import 'package:http/http.dart' as http;

class FetchSev {
  Uri urll =
      Uri.parse('https://65986613668d248edf248f0d.mockapi.io/bookings/booking');

  Future<List<PersonModel>> getData() async {
    final respose = await http.get(urll);

    try {
      if (respose.statusCode == 200) {
        print('is wroking');
        final List<dynamic> de = json.decode(respose.body);

        final List<PersonModel> list =
            de.map((item) => PersonModel.toModel(item)).toList();

        print(list);

        return list;
      } else {
        throw print;
      }
    } catch (e) {
      throw e;
    }
  }
}
