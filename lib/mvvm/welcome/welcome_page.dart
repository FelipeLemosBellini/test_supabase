import 'package:flutter/material.dart';
import 'package:test_supabase/mvvm/welcome/welcome_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final WelcomeBloc _bloc = WelcomeBloc();

  @override
  void initState() {
    super.initState();
    _bloc.getDataEnvironment();
    _bloc.getAllDataEnvironments();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
