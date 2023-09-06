part of 'timetable_admin_cubit.dart';

class TimetableAdminState extends Equatable {
  final String status;
  final String? errorMessage;
  final List? list;
  final List? list1;
  final Map<String, dynamic>? updateDetails;
  final String? message;
  const TimetableAdminState(
      {this.status = '',
      this.errorMessage,
      this.list,
      this.list1,
      this.updateDetails,
      this.message});
  @override
  List<Object> get props => [status];
  TimetableAdminState copyWith({
    String? status,
    String? errorMessage,
    List? list,
    List? list1,
    Map<String, dynamic>? updateDetails,
    final String? message,
  }) {
    return TimetableAdminState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      list: list ?? this.list,
      list1: list1 ?? this.list1,
      updateDetails: updateDetails ?? this.updateDetails,
      message: message ?? this.message,
    );
  }
}
