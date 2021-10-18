import 'package:coingecko_dart/coingecko_dart.dart';
import 'package:coingecko_dart/dataClasses/coins/Coin.dart';
import 'package:riverpod/riverpod.dart';

import 'coin_list_state.dart';

final coinGeckoApiInstanceProvider = Provider((ref) => CoinGeckoApi());

class CoinListStateNotifiers extends StateNotifier<CoinListState> {
  CoinListStateNotifiers(this.reader) : super(CoinListState.idle());

  final Reader reader;

  void getCoinList() async {
    print("executing");
    state = CoinListState.loading();
    final coinGeckoApiInstance = reader(coinGeckoApiInstanceProvider);
    try {
      final CoinGeckoResult<List<Coin>> result =
          await coinGeckoApiInstance.listCoins();

      state = CoinListState.success(result);
    } catch (e) {
      print(e.toString());
      CoinListState.error(errorMessage: e.toString());
    }
  }
}

final coinListStateNotifierProvider =
    StateNotifierProvider<CoinListStateNotifiers, CoinListState>(
        (ref) => CoinListStateNotifiers(ref.read));
