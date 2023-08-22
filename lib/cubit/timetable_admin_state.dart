part of 'timetable_admin_cubit.dart';

class TimetableAdminState extends Equatable {
  final String status;
  final String? errorMessage;
  final List? list;
  final String? message;
  const TimetableAdminState(
      {this.status = '', this.errorMessage, this.list, this.message});
  @override
  List<Object> get props => [status];
  TimetableAdminState copyWith({
    String? status,
    String? errorMessage,
    List? list,
    final String? message,
  }) {
    return TimetableAdminState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      list: list ?? this.list,
      message: message ?? this.message,
    );
  }
}
