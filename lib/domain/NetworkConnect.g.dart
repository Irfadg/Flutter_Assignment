// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NetworkConnect.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _NetworkConnect implements NetworkConnect {
  _NetworkConnect(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://stagingauth.desidime.com/v4/home/discussed';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HomePageDataModel> getHomePage(
    String key,
    String perPage,
    String page,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-Desidime-Client': key};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'per_page': perPage,
      'page': page,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<HomePageDataModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/discussed',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = HomePageDataModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
