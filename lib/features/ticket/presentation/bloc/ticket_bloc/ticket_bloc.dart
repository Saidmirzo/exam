import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exam/config/constants/local_data.dart';
import 'package:exam/features/ticket/data/models/quetion_model.dart';
import 'package:exam/features/ticket/presentation/pages/ticket_page.dart';
import 'package:exam/features/ticket/presentation/widgets/number_indicator_item.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  List<QuetionModel> quetions = listQuetions;
  List<IndicatorState> indeicatorSates = List.generate(
    10,
    (index) => index == 0 ? IndicatorState.progress : IndicatorState.inFuture,
  );
  TicketBloc() : super(TicketInitial()) {
    on<TicketEvent>((event, emit) {});
    on<SelectAnswer>(
      (event, emit) {
        QuetionModel quetionModel = event.quetionModel;
        int selectedIndex = event.selectedIndex;
        if (quetionModel.listAnswers[selectedIndex] ==
            quetionModel.correctAnswer) {
          indeicatorSates[selectedIndex] = IndicatorState.complated;
        } else {
          indeicatorSates[selectedIndex] = IndicatorState.error;
          emit(TicketErrorState());
        }
      },
    );
  }
}
