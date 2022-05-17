part of 'herbs_cubit.dart';

class HerbsState {
  List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;
  
  HerbsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
