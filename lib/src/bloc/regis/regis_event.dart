// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'regis_bloc.dart';

@immutable
abstract class RegisEvent {}

class RegisSaveEvent extends RegisEvent {
  final RegisModelReq request;
  RegisSaveEvent({
    required this.request,
  });
}
