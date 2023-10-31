part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  @override
  List<Object?> get props => [email, apiRequestStatus];

  const SignInState(
      {this.email = '',
      this.apiRequestStatus = const InitialApiRequestStatus()});

  final String email;
  final ApiRequestStatus apiRequestStatus;

  SignInState copyWith({String? email, ApiRequestStatus? apiRequestStatus}) {
    return SignInState(
        email: email ?? this.email,
        apiRequestStatus: apiRequestStatus ?? this.apiRequestStatus);
  }
}
