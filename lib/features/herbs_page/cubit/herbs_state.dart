part of 'herbs_cubit.dart';

@freezed
class HerbsState with _$HerbsState {
  factory HerbsState({
    @Default([]) List<ItemModel> documents,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HerbsState;
}