part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent {}

class OnEmailChanged extends SignInEvent {
  final String email;

  OnEmailChanged({required this.email});
}
