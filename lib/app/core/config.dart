enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Herbs';
      case Flavor.production:
        return 'Medicinal Herbs';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_2_json';
      case Flavor.production:
        return 'http://my-json-server.typicode.com/iwonarudzinska/herbal_trivia_json';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }
}
