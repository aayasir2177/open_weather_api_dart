import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


main(){
  Future getData() async {
    String apiKey = "2815db7bce2c4d5be6d4ba35ab9c949f";
    String cityName = "London";

    var uri = Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?q=$cityName&units=imperial&appid=$apiKey");

    var response = await http.get(uri);

    var decodedData = convert.jsonDecode(response.body);

    // Current Weather
    final temperature = decodedData["list"][0]["main"]["temp"];
   
  
   print(temperature);
  }

getData();
  
}

