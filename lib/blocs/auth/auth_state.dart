import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

// Aquí se definirán los estados específicos en el futuro