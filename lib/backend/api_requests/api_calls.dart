import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ScheduleDayCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Schedule Day',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbwk91Ir7ylf-uVtKklc-aOQ5rY70VTRwoG08GwQcjH1gxVwc35-2WiFTv70ibDiqITASw/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic scheduleDayGet(dynamic response) => getJsonField(
        response,
        r'''$..ScheduleDay''',
        true,
      );
}

class ClubHubDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ClubHub Data',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbxtfWDEXx1pJDSsP7vnLIq7Ig9hHeOmrNefN11k6jcn2c6rPH4IFPw1JdMYe9DI89mm/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }

  static dynamic getClubName(dynamic response) => getJsonField(
        response,
        r'''$[:].ClubName''',
        true,
      );
  static dynamic getClubDescription(dynamic response) => getJsonField(
        response,
        r'''$[:].ClubDescription''',
        true,
      );
  static dynamic getClassroomCode(dynamic response) => getJsonField(
        response,
        r'''$[:].ClassroomCode''',
        true,
      );
  static dynamic getClubType(dynamic response) => getJsonField(
        response,
        r'''$[:].Type''',
        true,
      );
  static dynamic getAll(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      );
}

class ManageMessageCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'manageMessage',
      apiUrl:
          'https://script.google.com/macros/s/AKfycbwlJ73yl2q-da-mPNfKZSozYcT8jmwQ_ge52Kq9NEH6SuuAJfw0GRGwdZfttRpIPDOv/exec',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic getMessage(dynamic response) => getJsonField(
        response,
        r'''$[:].Message''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
