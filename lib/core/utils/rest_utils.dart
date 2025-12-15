class RestUtils {
  static Uri constructUri(String baseUrl, [Map<String, dynamic>? params]) {
    // Clean the URL by removing any existing protocol prefixes
    String cleanUrl = baseUrl;
    if (cleanUrl.startsWith('https://')) {
      cleanUrl = cleanUrl.substring(8);
    } else if (cleanUrl.startsWith('http://')) {
      cleanUrl = cleanUrl.substring(7);
    }

    final Map<String, dynamic> urlParams = {};
    params?.forEach((key, value) {
      if(value is List) {
        if(value is List<List<dynamic>>) {
          final res = value.nonNulls.map((e) => _encodeList(e)).toList();
          urlParams[key] = res;
        } else if(value is List<String>) {
          final valuesMap = _encodeList(value);
          urlParams[key] = valuesMap;
        }
      } else {
        urlParams[key] = value;
      }
    });
    final encodedParams = encodeParams(urlParams);
    
    // Use https:// if the original URL was https, otherwise use http://
    final protocol = baseUrl.startsWith('https://') ? 'https://' : 'http://';
    final fullUrl = '$protocol$cleanUrl$encodedParams';
    return Uri.parse(fullUrl);
  }

  static List<String> _encodeList(List<dynamic> value) {
    final valuesMap = value.nonNulls.map((e) => '"$e"').toList();
    return valuesMap;
  }

  static String encodeParams(Map<String, dynamic> params) {
    var s = '';
    params.forEach((key, value) {
       final urlEncode = Uri.encodeComponent(value.toString());
        s += '${s == '' ? '?' : '&'}$key=$urlEncode';
    });

    return s;
  }
}
