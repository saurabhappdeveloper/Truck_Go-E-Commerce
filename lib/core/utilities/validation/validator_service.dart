import 'package:truckgo_project/core/core.dart';

class Validator {
  static RegExp email = RegExp(
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");

  static final RegExp _ipv4Maybe =
      RegExp(r'^(\d?\d?\d)\.(\d?\d?\d)\.(\d?\d?\d)\.(\d?\d?\d)$');
  static final RegExp _ipv6 =
      RegExp(r'^::|^::1|^([a-fA-F0-9]{1,4}::?){1,7}([a-fA-F0-9]{1,4})$');

  static final RegExp _surrogatePairsRegExp =
      RegExp(r'[\uD800-\uDBFF][\uDC00-\uDFFF]');

  static RegExp mobile9Digit = RegExp(r'[0-9]');
  static RegExp alpha = RegExp(r'^[a-zA-Z]');
  static RegExp firstCapital = RegExp(r'^(?=.*[A-Z])');
  static RegExp validUrl = RegExp(
      r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)');
  static RegExp alphanumeric = RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])');
  static RegExp alphanumeric2 = RegExp(r'^[a-zA-Z0-9]+$');
  static RegExp specialCharacter = RegExp(r'(?=.*?[#?!@$%^&*-])');
  static RegExp alphanumericCharacter = RegExp(r'^[a-zA-Z0-9_\-=@,\.;]+$');
  static RegExp numeric = RegExp(r'^-?[0-9]+$');
  static final RegExp _int = RegExp(r'^(?:-?(?:0|[1-9][0-9]*))$');
  static final RegExp _float =
      RegExp(r'^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$');
  static final RegExp _hexadecimal = RegExp(r'^[0-9a-fA-F]+$');
  static final RegExp _hexcolor =
      RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  static final RegExp _base64 = RegExp(
      r'^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$');

  static final RegExp _creditCard = RegExp(
      r'^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$');

  static final RegExp _isbn10Maybe = RegExp(r'^(?:[0-9]{9}X|[0-9]{10})$');
  static final RegExp _isbn13Maybe = RegExp(r'^(?:[0-9]{13})$');

  static final Map _uuid = {
    '3': RegExp(
        r'^[0-9A-F]{8}-[0-9A-F]{4}-3[0-9A-F]{3}-[0-9A-F]{4}-[0-9A-F]{12}$'),
    '4': RegExp(
        r'^[0-9A-F]{8}-[0-9A-F]{4}-4[0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$'),
    '5': RegExp(
        r'^[0-9A-F]{8}-[0-9A-F]{4}-5[0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}$'),
    'all': RegExp(
        r'^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$')
  };

  static final RegExp _multibyte = RegExp(r'[^\x00-\x7F]');
  static final RegExp _ascii = RegExp(r'^[\x00-\x7F]+$');
  static final RegExp _fullWidth = RegExp(
      r'[^\u0020-\u007E\uFF61-\uFF9F\uFFA0-\uFFDC\uFFE8-\uFFEE0-9a-zA-Z]');
  static final RegExp _halfWidth = RegExp(
      r'[\u0020-\u007E\uFF61-\uFF9F\uFFA0-\uFFDC\uFFE8-\uFFEE0-9a-zA-Z]');

  /// check if the string matches the comparison
  static bool equals(String str, comparison) {
    return str == comparison.toString();
  }

  /// check if the string contains the substring
  static bool contains(String str, substring) {
    return str.contains(substring.toString());
  }

  /// check if string matches the pattern.
  static bool matches(String str, pattern) {
    RegExp re = RegExp(pattern.toString());
    return re.hasMatch(str);
  }

  static bool isUrlValid(String str) {
    return validUrl.hasMatch(str);
  }

  /// check if the string is an email
  static bool isEmail(String str) {
    return email.hasMatch(str.toLowerCase());
  }

  static String getFirstHalf(String email, String pattern) {
    List<String> splitValue = email.split(pattern);
    return splitValue[0];
  }

  // check if the string is a URL
  //
  // `options` is a `Map` which defaults to
  //  `{ 'protocols': ['http','https','ftp'], 'require_tld': true,
  //  'require_protocol': false, 'allow_underscores': false }`.
  static bool isURL(String str, [Map<String, Object> options]) {
    if (str.isEmpty || str.length > 2083 || str.indexOf('mailto:') == 0) {
      return false;
    }

    final defaultUrlOptions = {
      'protocols': ['http', 'https', 'ftp'],
      'require_tld': true,
      'require_protocol': false,
      'allow_underscores': false
    };

    options = merge(options, defaultUrlOptions);

    var protocol,
        user,
        pass,
        auth,
        host,
        hostname,
        port,
        portStr,
        path,
        query,
        hash,
        split;

    // check protocol
    split = str.split('://');
    if (split.length > 1 != null) {
      protocol = shift(split);
      final protocols = options['protocols'] as List<String>;
      if (!protocols.contains(protocol)) {
        return false;
      }
    } else if (options['require_protocol'] == true) {
      return false;
    }
    str = split.join('://');

    // check hash
    split = str.split('#');
    str = shift(split);
    hash = split.join('#');
    if (hash != null && hash != "" && RegExp(r'\s').hasMatch(hash)) {
      return false;
    }

    // check query params
    split = str.split('?');
    str = shift(split);
    query = split.join('?');
    if (query != null && query != "" && RegExp(r'\s').hasMatch(query)) {
      return false;
    }

    // check path
    split = str.split('/');
    str = shift(split);
    path = split.join('/');
    if (path != null && path != "" && RegExp(r'\s').hasMatch(path)) {
      return false;
    }

    // check auth type urls
    split = str.split('@');
    if (split.length > 1) {
      auth = shift(split);
      if (auth.indexOf(':') >= 0) {
        auth = auth.split(':');
        user = shift(auth);
        if (!RegExp(r'^\S+$').hasMatch(user)) {
          return false;
        }
        pass = auth.join(':');
        if (!RegExp(r'^\S*$').hasMatch(pass)) {
          return false;
        }
      }
    }

    // check hostname
    hostname = split.join('@');
    split = hostname.split(':');
    host = shift(split);
    if (split.length > 0 != null) {
      portStr = split.join(':');
      try {
        port = int.parse(portStr.toString(), radix: 10);
      } catch (e) {
        return false;
      }
      if (!RegExp(r'^[0-9]+$').hasMatch(portStr.toString()) ||
          port <= 0 ||
          port > 65535) {
        return false;
      }
    }

    if (!isIP(host) && !isFQDN(host, options) && host != 'localhost') {
      return false;
    }

    return true;
  }

  /// check if the string is an IP (version 4 or 6)
  ///
  /// `version` is a String or an `int`.
  static bool isIP(String str, [version]) {
    version = version.toString();
    if (version == 'null') {
      return isIP(str, 4) || isIP(str, 6);
    } else if (version == '4') {
      if (!_ipv4Maybe.hasMatch(str)) {
        return false;
      }
      var parts = str.split('.');
      parts.sort((a, b) => int.parse(a) - int.parse(b));
      return int.parse(parts[3]) <= 255;
    }
    return version == '6' && _ipv6.hasMatch(str);
  }

  /// check if the string is a fully qualified domain name (e.g. domain.com).
  ///
  /// `options` is a `Map` which defaults to `{ 'require_tld': true, 'allow_underscores': false }`.
  static bool isFQDN(String str, [Map<String, Object> options]) {
    final defaultFqdnOptions = {
      'require_tld': true,
      'allow_underscores': false
    };

    options = merge(options, defaultFqdnOptions);
    List parts = str.split('.');
    if (options['require_tld'] as bool) {
      var tld = parts.removeLast();
      if (parts.isEmpty || !RegExp(r'^[a-z]{2,}$').hasMatch(tld)) {
        return false;
      }
    }

    for (var part, i = 0; i < parts.length; i++) {
      part = parts[i];
      if (options['allow_underscores'] as bool) {
        if (part.indexOf('__') >= 0) {
          return false;
        }
      }
      if (!RegExp(r'^[a-z\\u00a1-\\uffff0-9-]+$').hasMatch(part)) {
        return false;
      }
      if (part[0] == '-' ||
          part[part.length - 1] == '-' ||
          part.indexOf('---') >= 0) {
        return false;
      }
    }
    return true;
  }

  /// check if the string contains only letters (a-zA-Z).
  static bool isAlpha(String str) {
    return alpha.hasMatch(str);
  }

  /// check if the string contains only numbers
  static bool isNumeric(String str) {
    return numeric.hasMatch(str);
  }

  /// check if the string contains only letters and numbers
  static bool isAlphanumeric(String str) {
    return alphanumeric.hasMatch(str);
  }

  /// check if the string contains only letters and numbers
  static bool isFirstCapital(String str) {
    return firstCapital.hasMatch(str);
  }

  /// check if the string contains only letters and numbers
  static bool isSpecialCharacter(String str) {
    return specialCharacter.hasMatch(str);
  }

  /// check if the string contains only letters and numbers
  static bool isAlphanumericCharacter(String str) {
    return alphanumericCharacter.hasMatch(str);
  }

  /// check if a string is base64 encoded
  static bool isBase64(String str) {
    return _base64.hasMatch(str);
  }

  /// check if the string is an integer
  static bool isInt(String str) {
    return _int.hasMatch(str);
  }

  /// check if the string is a float
  static bool isFloat(String str) {
    return _float.hasMatch(str);
  }

  /// check if the string is a hexadecimal number
  static bool isHexadecimal(String str) {
    return _hexadecimal.hasMatch(str);
  }

  /// check if the string is a hexadecimal color
  static bool isHexColor(String str) {
    return _hexcolor.hasMatch(str);
  }

  /// check if the string is lowercase
  static bool isLowercase(String str) {
    return str == str.toLowerCase();
  }

  /// check if the string is uppercase
  static bool isUppercase(String str) {
    return str == str.toUpperCase();
  }

  /// check if the string is a number that's divisible by another
  ///
  /// [n] is a String or an int.
  static bool isDivisibleBy(String str, n) {
    try {
      return double.parse(str) % int.parse(n) == 0;
    } catch (e) {
      return false;
    }
  }

  /// check if the string's length falls in a range
  /// If no max is given then any length above min is ok.
  ///
  /// Note: this function takes into account surrogate pairs.
  static bool isLength(String str, int min, [int max]) {
    List surrogatePairs = _surrogatePairsRegExp.allMatches(str).toList();
    int len = str.length - surrogatePairs.length;
    return len >= min && (max == null || len <= max);
  }

  /// check if the string's length (in bytes) falls in a range.
  static bool isByteLength(String str, int min, [int max]) {
    return str.length >= min && (max == null || str.length <= max);
  }

  /// check if the string is a UUID (version 3, 4 or 5).
  static bool isUUID(String str, [version]) {
    if (version == null) {
      version = 'all';
    } else {
      version = version.toString();
    }

    RegExp pat = _uuid[version];
    return (pat != null && pat.hasMatch(str.toUpperCase()));
  }

  /// check if the string is a date
  static bool isDate(String str) {
    try {
      DateTime.parse(str);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// check if the string is a date that's after the specified date
  ///
  /// If `date` is not passed, it defaults to now.
  static bool isAfter(String str, [date]) {
    if (date == null) {
      date = DateTime.now();
    } else if (isDate(date)) {
      date = DateTime.parse(date);
    } else {
      return false;
    }

    DateTime strDate;
    try {
      strDate = DateTime.parse(str);
    } catch (e) {
      return false;
    }

    return strDate.isAfter(date);
  }

  /// check if the string is a date that's before the specified date
  ///
  /// If `date` is not passed, it defaults to now.
  static bool isBefore(String str, [date]) {
    if (date == null) {
      date = DateTime.now();
    } else if (isDate(date)) {
      date = DateTime.parse(date);
    } else {
      return false;
    }

    DateTime strDate;
    try {
      strDate = DateTime.parse(str);
    } catch (e) {
      return false;
    }

    return strDate.isBefore(date);
  }

  /// check if the string is in an array of allowed values
  static bool isIn(String str, values) {
    if (values == null || values.length == 0) {
      return false;
    }

    if (values is List) {
      values = values.map((e) => e.toString()).toList();
    }

    return values.indexOf(str) >= 0;
  }

  /// check if the string is a credit card
  static bool isCreditCard(String str) {
    String sanitized = str.replaceAll(RegExp(r'[^0-9]+'), '');
    if (!_creditCard.hasMatch(sanitized)) {
      return false;
    }

    // Luhn algorithm
    int sum = 0;
    String digit;
    bool shouldDouble = false;

    for (int i = sanitized.length - 1; i >= 0; i--) {
      digit = sanitized.substring(i, (i + 1));
      int tmpNum = int.parse(digit);

      if (shouldDouble == true) {
        tmpNum *= 2;
        if (tmpNum >= 10) {
          sum += ((tmpNum % 10) + 1);
        } else {
          sum += tmpNum;
        }
      } else {
        sum += tmpNum;
      }
      shouldDouble = !shouldDouble;
    }

    return (sum % 10 == 0);
  }

  /// check if the string is an ISBN (version 10 or 13)
  static bool isISBN(String str, [version]) {
    if (version == null) {
      return isISBN(str, '10') || isISBN(str, '13');
    }

    version = version.toString();

    String sanitized = str.replaceAll(RegExp(r'[\s-]+'), '');
    int checksum = 0;

    if (version == '10') {
      if (!_isbn10Maybe.hasMatch(sanitized)) {
        return false;
      }
      for (int i = 0; i < 9; i++) {
        checksum += (i + 1) * int.parse(sanitized[i]);
      }
      if (sanitized[9] == 'X') {
        checksum += 10 * 10;
      } else {
        checksum += 10 * int.parse(sanitized[9]);
      }
      return (checksum % 11 == 0);
    } else if (version == '13') {
      if (!_isbn13Maybe.hasMatch(sanitized)) {
        return false;
      }
      var factor = [1, 3];
      for (int i = 0; i < 12; i++) {
        checksum += factor[i % 2] * int.parse(sanitized[i]);
      }
      return (int.parse(sanitized[12]) - ((10 - (checksum % 10)) % 10) == 0);
    }

    return false;
  }

  /// check if the string is valid JSON
  static bool isJson(str) {
    try {
      json.decode(str);
    } catch (e) {
      return false;
    }
    return true;
  }

  /// check if the string contains one or more multibyte chars
  static bool isMultibyte(String str) {
    return _multibyte.hasMatch(str);
  }

  /// check if the string contains ASCII chars only
  static bool isAscii(String str) {
    return _ascii.hasMatch(str);
  }

  /// check if the string contains any full-width chars
  static bool isFullWidth(String str) {
    return _fullWidth.hasMatch(str);
  }

  /// check if the string contains any half-width chars
  static bool isHalfWidth(String str) {
    return _halfWidth.hasMatch(str);
  }

  /// check if the string contains a mixture of full and half-width chars
  static bool isVariableWidth(String str) {
    return isFullWidth(str) && isHalfWidth(str);
  }

  /// check if the string contains any surrogate pairs chars
  static bool isSurrogatePair(String str) {
    return _surrogatePairsRegExp.hasMatch(str);
  }

  /// check if the string is a valid hex-encoded representation of a MongoDB ObjectId
  static bool isMongoId(String str) {
    return (isHexadecimal(str) && str.length == 24);
  }
}
