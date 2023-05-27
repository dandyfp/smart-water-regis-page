// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'regis_bloc.dart';

@immutable
abstract class RegisState {}

class RegisInitial extends RegisState {}

class RegisLoading extends RegisState {}

class RegisLoaded extends RegisState {}
