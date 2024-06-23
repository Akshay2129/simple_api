import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api/logic/get_api_cubit.dart';
import 'package:simple_api/logic/post_api_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController phonenumberController = TextEditingController();
  @override
  void initState() {
    context.read<GetApiCubit>().getapi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            BlocBuilder<GetApiCubit, GetApiState>(
              builder: (context, state) {
                if (state is GetApiLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetApiError) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                if (state is GetApiSuccess) {
                  return Text(state.getapimodel?.data?.name.toString() ?? "");
                }
                return Container();
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 250,
              child: TextFormField(
                controller: phonenumberController,
                decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    labelText: "Phone Number",
                    border: OutlineInputBorder()),
              ),
            ),  SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<PostApiCubit>()
                      .postapi(phonenumber: phonenumberController.text);
                },
                child: Text("Send OTP"))
          ],
        ),
      ),
    );
  }
}
