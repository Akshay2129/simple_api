import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:simple_api/model/get_api_model.dart';
part 'get_api_state.dart';

class GetApiCubit extends Cubit<GetApiState> {
  GetApiCubit() : super(GetApiInitial());

  getapi() async {
    emit(GetApiLoading());
    try {
      final url = Uri.parse(
          "https://4r4iwhot12.execute-api.ap-south-1.amazonaws.com/auth/group/getByGroupId/1703228300417");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print(data);
        print("**************************");
      
        GetApiModel jsondata=GetApiModel.fromJson(data);
          // print(jsondata.data?.id);
        emit(GetApiSuccess(getapimodel: jsondata));
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      emit(GetApiError(e.toString()));
    }
  }
}
