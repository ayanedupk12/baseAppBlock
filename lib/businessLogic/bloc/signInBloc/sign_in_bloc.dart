import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../repository/data_manager.dart';
import '../../api_request_status.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.dataManager}) : super(const SignInState()) {
    on<OnEmailChanged>(_onEmailChanged);
  }

  final DataManager dataManager;

  Future<void> _onEmailChanged(
      OnEmailChanged event, Emitter<SignInState> emit) async {
    emit(state.copyWith(email: event.email));
  }
}
