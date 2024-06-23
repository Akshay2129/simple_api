import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:simple_api/model/get_by_group.dart';
part 'get_by_group_state.dart';

class GetByGroupCubit extends Cubit<GetByGroupState> {
  GetByGroupCubit() : super(GetByGroupInitial());

  getbygroup() async {
    var url = Uri.parse(
        "https://rt0vu6tjkl.execute-api.ap-south-1.amazonaws.com/academic-service/gatepass/all/getByGroupId/1709987550657");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsondata = jsonDecode(response.body);
        GetByGroup data=GetByGroup.fromJson(jsondata);
        print(jsondata);
        emit(GetByGroupSuccess(getByGroup: data));
      } else {
        print("Error ${response.statusCode}");
      }
    } catch (e) {
      emit(GetByGroupError(errorMessage: e.toString()));
    }
  }
}
