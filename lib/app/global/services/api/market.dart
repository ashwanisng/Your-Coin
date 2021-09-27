import 'package:http/http.dart' as http;
import 'package:your_coin/app/data/models/crypto_model.dart';

class MarketApiServices {
  static var client = http.Client();

  Future<List<CryptoCurrency>> fetchMarketData() async {
    var response = await client.get(
      Uri.parse(
          "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h"),
    );
    return cryptoCurrencyFromJson(response.body);
  }
}
