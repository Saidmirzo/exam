part of 'ticket_bloc.dart';

abstract class TicketEvent extends Equatable {
  const TicketEvent();

  @override
  List<Object> get props => [];
}

class SelectAnswer extends TicketEvent {
  final QuetionModel quetionModel;
  final int selectedIndex;
  const SelectAnswer({
    required this.quetionModel,
    required this.selectedIndex,
  });

}
