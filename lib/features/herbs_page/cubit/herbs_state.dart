part of 'herbs_cubit.dart';

class HerbsState {
  List<ItemModel> documents;
  final bool isLoading;
  final String errorMessage;
  
  HerbsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
