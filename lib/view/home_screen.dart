import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_api/logic/get_api_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<GetApiCubit>().getapi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetApiCubit, GetApiState>(
        builder: (context, state) {
          if (state is GetApiLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is GetApiError){
            return Center(
              child: Text(state.message),
            );
          }
          if (state is GetApiSuccess) {
           return Column(
            children: [
              Text(state.getapimodel?.data?.name.toString()??"")
            ],
           );
          }
          return Container();
        },
      ),
    );
  }
}
