import 'package:exam/config/routes/routes.dart';
import 'package:exam/features/ticket/presentation/bloc/ticket_bloc/ticket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TicketBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) => MaterialApp(
          title: 'AvtoMentor',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: (settings) => Routes.generateRoute(settings),
        ),
      ),
    );
  }
}
