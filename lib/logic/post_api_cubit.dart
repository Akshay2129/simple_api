import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'post_api_state.dart';

class PostApiCubit extends Cubit<PostApiState> {
  PostApiCubit() : super(PostApiInitial());

  postapi({String? phonenumber}) async {
    emit(PostApiLoading());
    var data = {
      "phoneNumber": phonenumber,
    };
    try {
      var url = Uri.parse(
          "https://4r4iwhot12.execute-api.ap-south-1.amazonaws.com/auth/auth/sendOtp");

      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data),
      );
      if (response.statusCode == 200) {
        emit(PostApiSuccess());
      } else {
        print("error ${response.statusCode}");
        emit(PostApiError("Error: ${response.statusCode}"));
      }
    } catch (e) {
      emit(PostApiError(e.toString()));
    }
  }
}
