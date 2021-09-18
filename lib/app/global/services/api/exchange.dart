import 'package:http/http.dart' as http;
import 'package:your_coin/app/data/models/exchange_model.dart';

class ExchangeApiServices {
  Future<List<ExchangeModel>> fetchMarketData(String coin) async {
    var response = await http.get(
      Uri.parse(
          "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=" +
              coin +
              "&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h"),
    );
    print(' ye hai coin Name=> $coin');
    return cryptoCurrencyFromJson(response.body);
  }
}
