import 'package:coingecko_dart/coingecko_dart.dart';
import 'package:coingecko_dart/dataClasses/coins/Coin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_list_state.freezed.dart';

@freezed
class CoinListState with _$CoinListState {
  const factory CoinListState.idle() = _idle;

  const factory CoinListState.loading() = _loading;
  const factory CoinListState.success(CoinGeckoResult<List<Coin>> value) =
      _success;
  const factory CoinListState.error({
    required String errorMessage,
    StackTrace? stackTrace,
  }) = _error;
}
