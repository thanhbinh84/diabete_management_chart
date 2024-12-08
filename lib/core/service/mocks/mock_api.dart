import 'dart:async';

import 'package:dio/dio.dart';
import 'package:tech_challenge/chart/model/period.dart';
import 'package:tech_challenge/core/service/api.dart';

const mockChartDataList = 4;

class MockAPI extends BaseAPI {
  @override
  Future<Response> getChartData(Period period) async {
    await Future.delayed(const Duration(milliseconds: 500));

    var mockChartData = {
      "bloodGlucoseSamples": [
        {
          "value": "7.7",
          "timestamp": "2021-02-10T09:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-10T09:25:00",
          "unit": "mg/dl"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-11T09:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-12T09:55:00",
          "unit": "mmol/L"
        },
   /*     {
          "value": "7.8",
          "timestamp": "2021-02-10T10:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-10T10:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-10T10:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-10T10:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-10T11:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-10T11:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-10T11:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-10T11:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-10T12:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-10T12:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-10T12:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-10T12:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-10T13:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-10T13:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-10T13:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-10T13:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-10T14:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-10T14:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-10T14:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-10T14:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-10T15:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-10T15:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-10T15:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-10T15:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-10T16:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-10T16:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-10T16:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-10T16:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-10T17:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-10T17:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-10T17:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-10T17:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-10T18:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-10T18:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-10T18:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-10T18:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-10T19:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-10T19:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-10T19:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-10T19:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-10T20:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-10T20:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-10T20:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-10T20:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-10T21:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-10T21:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-10T21:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-10T21:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-11T01:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-11T01:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-11T01:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-11T01:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-11T02:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-11T02:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-11T02:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-11T02:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-11T03:03:00",
          "unit": "mg/dl"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-11T03:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-11T03:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-11T03:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-11T04:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-11T04:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-11T04:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-11T04:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-11T05:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-11T05:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T05:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-11T05:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T06:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T06:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T06:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-11T06:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-11T07:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T07:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T07:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T07:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T08:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-11T08:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-11T08:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-11T08:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-11T09:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-11T09:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-11T09:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-11T09:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-11T10:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-11T10:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-11T10:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-11T10:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-11T11:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T11:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-11T11:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-11T12:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-11T12:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.5",
          "timestamp": "2021-02-11T12:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-11T12:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.0",
          "timestamp": "2021-02-11T13:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-11T13:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-11T13:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-11T13:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-11T14:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-11T14:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-11T14:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-11T14:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.2",
          "timestamp": "2021-02-11T15:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.3",
          "timestamp": "2021-02-11T15:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-11T15:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-11T15:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-11T16:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-11T16:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-11T16:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-11T16:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-11T17:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-11T17:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-11T17:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-11T17:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-11T18:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-11T18:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-11T18:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-11T18:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-11T19:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-11T19:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-11T19:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-11T19:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.0",
          "timestamp": "2021-02-11T20:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "11.8",
          "timestamp": "2021-02-11T20:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.7",
          "timestamp": "2021-02-11T20:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.2",
          "timestamp": "2021-02-11T20:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.1",
          "timestamp": "2021-02-11T21:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-11T21:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-11T21:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-11T21:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-11T22:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-11T22:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-11T22:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-11T22:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-11T23:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-11T23:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-11T23:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-11T23:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-12T00:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-12T00:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-12T00:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-12T00:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-12T01:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-12T01:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-12T01:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-12T01:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-12T02:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-12T02:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-12T02:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-12T02:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-12T03:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-12T03:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-12T03:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-12T03:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-12T04:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-12T04:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-12T04:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-12T04:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-12T05:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-12T05:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-12T05:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-12T05:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-12T06:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-12T06:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-12T06:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-12T06:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-12T07:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-12T07:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-12T07:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-12T07:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-12T08:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-12T08:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-12T08:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-12T08:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-12T09:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-12T09:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-12T09:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-12T09:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-12T10:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-12T10:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-12T10:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-12T10:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-12T11:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-12T11:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-12T11:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-12T12:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-12T12:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-12T12:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.7",
          "timestamp": "2021-02-12T12:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.8",
          "timestamp": "2021-02-12T13:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-12T13:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-12T13:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-12T13:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-12T14:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-12T14:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-12T14:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T14:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T15:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T15:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T15:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T15:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T16:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.3",
          "timestamp": "2021-02-12T16:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-12T16:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-12T16:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-12T17:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-12T17:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-12T17:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-12T17:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-12T18:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-12T18:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-12T18:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-12T18:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-12T19:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-12T19:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-12T19:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-12T19:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-12T20:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-12T20:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-12T20:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-12T20:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-12T21:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-12T22:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-12T22:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-12T23:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-12T23:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-12T23:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-12T23:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-13T00:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-13T00:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-13T00:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-13T00:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-13T01:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T01:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T01:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-13T01:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-13T02:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-13T02:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-13T02:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-13T02:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-13T03:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-13T03:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-13T03:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-13T03:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-13T04:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-13T04:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-13T04:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-13T04:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-13T05:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-13T05:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T05:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T05:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T06:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-13T06:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-13T06:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-13T06:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-13T07:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-13T07:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-13T07:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-13T07:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-13T08:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-13T08:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "11.2",
          "timestamp": "2021-02-13T08:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "12.4",
          "timestamp": "2021-02-13T08:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "11.6",
          "timestamp": "2021-02-13T09:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-13T09:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T09:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-13T09:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-13T10:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-13T10:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-13T10:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T10:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T11:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-13T11:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T11:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T11:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T12:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T12:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T12:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T12:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-13T13:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-13T13:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T13:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T13:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T14:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-13T14:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T14:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T14:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T15:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-13T15:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-13T15:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-13T15:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-13T16:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-13T16:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-13T16:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-13T16:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-13T17:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-13T17:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-13T17:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-13T17:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-13T18:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-13T18:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-13T18:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-13T18:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-13T19:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-13T19:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-13T19:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-13T19:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-13T20:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-13T20:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-13T20:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-13T20:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-13T21:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-13T21:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-13T21:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-13T21:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-13T22:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-13T22:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-13T22:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-13T23:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-13T23:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-13T23:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-13T23:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-14T00:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-14T00:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-14T00:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-14T00:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-14T01:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-14T01:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-14T01:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-14T01:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-14T02:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-14T02:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-14T02:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-14T02:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-14T03:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-14T03:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-14T03:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-14T03:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-14T04:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-14T04:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-14T04:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-14T04:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-14T05:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-14T05:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-14T05:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-14T05:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-14T06:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-14T06:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-14T06:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-14T06:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-14T07:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T07:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T07:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T07:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T08:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T08:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T08:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-14T08:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-14T09:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-14T09:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-14T09:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-14T09:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-14T10:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-14T10:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-14T10:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-14T10:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-14T11:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-14T11:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-14T11:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-14T11:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-14T12:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-14T12:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-14T12:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-14T12:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-14T13:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-14T13:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-14T13:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-14T13:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-14T14:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-14T14:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-14T14:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-14T14:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-14T15:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-14T15:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.2",
          "timestamp": "2021-02-14T15:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "3.9",
          "timestamp": "2021-02-14T15:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.0",
          "timestamp": "2021-02-14T16:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.2",
          "timestamp": "2021-02-14T16:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-14T16:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.5",
          "timestamp": "2021-02-14T16:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-14T17:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.4",
          "timestamp": "2021-02-14T17:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-14T17:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-14T17:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-14T18:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-14T18:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-14T18:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-14T18:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-14T19:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-14T19:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-14T19:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-14T19:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-14T20:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-14T20:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-14T20:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-14T20:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-14T21:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-14T21:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-14T21:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-14T21:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-14T22:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-14T22:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-14T22:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-14T22:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-14T23:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-14T23:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-14T23:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-14T23:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-15T00:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T00:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T00:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T00:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T01:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T01:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T01:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T01:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T02:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T02:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T02:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T02:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T03:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T03:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T03:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T03:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T04:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T04:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T04:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T04:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T05:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T05:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T05:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-15T05:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-15T06:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T06:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T06:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T06:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T07:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T07:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T07:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-15T07:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-15T08:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-15T08:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-15T08:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.9",
          "timestamp": "2021-02-15T08:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.2",
          "timestamp": "2021-02-15T09:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.0",
          "timestamp": "2021-02-15T09:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.7",
          "timestamp": "2021-02-15T09:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-15T09:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-15T10:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-15T10:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-15T10:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-15T10:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T11:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T11:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T11:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T11:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-15T12:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T12:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T12:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T13:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-15T13:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T13:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T13:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T14:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-15T14:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-15T14:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-15T14:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-15T15:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-15T15:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-15T15:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T15:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T16:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T16:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T16:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T16:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-15T17:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T17:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-15T17:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T17:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T18:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T18:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-15T18:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-15T18:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-15T19:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-15T19:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T19:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-15T19:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-15T20:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-15T20:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-15T20:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T20:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-15T21:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T21:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-15T21:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-15T21:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-15T22:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-15T22:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-15T22:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-15T22:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-15T23:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-15T23:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-15T23:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-15T23:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T00:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T00:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T00:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-16T00:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T01:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-16T01:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-16T01:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-16T01:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T02:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T02:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-16T02:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-16T02:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-16T03:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-16T03:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-16T03:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-16T03:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-16T04:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-16T04:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-16T04:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T04:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T05:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-16T05:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T05:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T05:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T06:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-16T06:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-16T06:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-16T06:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-16T07:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-16T07:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-16T07:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-16T07:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-16T08:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-16T08:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-16T08:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-16T08:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-16T09:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-16T09:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-16T09:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-16T09:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-16T10:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-16T10:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-16T10:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-16T10:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-16T11:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-16T11:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-16T11:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-16T11:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-16T12:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T12:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T12:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-16T12:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-16T13:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-16T13:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-16T13:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T13:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T14:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-16T14:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-16T14:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T14:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-16T15:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-16T15:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-16T15:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-16T15:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-16T16:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-16T16:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.3",
          "timestamp": "2021-02-16T16:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.1",
          "timestamp": "2021-02-16T16:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.1",
          "timestamp": "2021-02-16T17:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.3",
          "timestamp": "2021-02-16T17:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.6",
          "timestamp": "2021-02-16T17:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-16T17:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-16T18:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-16T18:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-16T18:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-16T18:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-16T19:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-16T19:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-16T19:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T21:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T21:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T22:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-16T22:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-16T22:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-16T22:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-16T23:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-16T23:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-16T23:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-16T23:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T00:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-17T00:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T00:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T00:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T01:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-17T01:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-17T01:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-17T01:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T02:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T02:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-17T02:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-17T02:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-17T03:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-17T03:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-17T03:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-17T03:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-17T04:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-17T04:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-17T04:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-17T04:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T05:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T05:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T05:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T05:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-17T06:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-17T06:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-17T06:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.0",
          "timestamp": "2021-02-17T06:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-17T07:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-17T07:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-17T07:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.3",
          "timestamp": "2021-02-17T07:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-17T08:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-17T08:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-17T08:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-17T08:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-17T09:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-17T09:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-17T09:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-17T09:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-17T10:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T10:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T10:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T10:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-17T11:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T11:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T11:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-17T11:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-17T12:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T12:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T12:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T12:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T13:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T13:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-17T13:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-17T13:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T14:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-17T14:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-17T14:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-17T14:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-17T15:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-17T15:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-17T15:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-17T15:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-17T16:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-17T16:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-17T16:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-17T16:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-17T17:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T17:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T17:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-17T17:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T18:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-17T18:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-17T18:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-17T18:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-17T19:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T19:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T19:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-17T19:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T20:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-17T20:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-17T20:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-17T20:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-17T21:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-17T21:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-17T21:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-17T21:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-17T22:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-17T22:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-17T22:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-17T22:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-17T23:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-17T23:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-17T23:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-17T23:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-18T00:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-18T00:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-18T00:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-18T00:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-18T01:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-18T01:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-18T01:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-18T01:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-18T02:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-18T02:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-18T02:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-18T02:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-18T03:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-18T03:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-18T03:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-18T03:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-18T04:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T04:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-18T04:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-18T04:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-18T05:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-18T05:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-18T05:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-18T05:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-18T06:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-18T06:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-18T06:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-18T06:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-18T07:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-18T07:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-18T07:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-18T07:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-18T08:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-18T08:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-18T08:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-18T08:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-18T09:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-18T09:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-18T09:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-18T09:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-18T10:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-18T10:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-18T10:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-18T10:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-18T11:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-18T11:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-18T11:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-18T11:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-18T12:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-18T12:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-18T12:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-18T12:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-18T13:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-18T13:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-18T13:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-18T13:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-18T14:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T14:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T14:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T14:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T15:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-18T15:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-18T15:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-18T15:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-18T16:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-18T16:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-18T16:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-18T16:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-18T17:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-18T17:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-18T17:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-18T18:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-18T18:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-18T18:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-18T18:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-18T19:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-18T19:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-18T19:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-18T19:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-18T20:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-18T20:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-18T20:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-18T20:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-18T21:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-18T21:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-18T21:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-18T21:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-18T22:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-18T22:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-18T22:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-18T22:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-18T23:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-18T23:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-18T23:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-18T23:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T00:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-19T00:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-19T00:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-19T00:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T01:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T01:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T01:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T01:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T02:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T02:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T02:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-19T02:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-19T03:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T03:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T03:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T03:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-19T04:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-19T04:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T04:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-19T04:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-19T05:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-19T05:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-19T05:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T05:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T06:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-19T06:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T06:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T06:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T07:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T07:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-19T07:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-19T07:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-19T08:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-19T08:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-19T08:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-19T08:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T09:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T09:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-19T09:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-19T09:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-19T10:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-19T10:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-19T10:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T10:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T11:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-19T11:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-19T11:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-19T11:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T12:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-19T12:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-19T12:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-19T12:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-19T13:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-19T13:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-19T13:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-19T13:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-19T14:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-19T14:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-19T14:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-19T14:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-19T15:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-19T15:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-19T15:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-19T15:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-19T16:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-19T16:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-19T16:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-19T16:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-19T17:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-19T17:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-19T17:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-19T17:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-19T18:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-19T18:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-19T18:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-19T18:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-19T19:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-19T19:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-19T19:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.0",
          "timestamp": "2021-02-19T19:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-19T20:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-19T20:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-19T20:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-19T20:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-19T21:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-19T21:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-19T21:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-19T21:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T22:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-19T22:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-19T22:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-19T22:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-19T23:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-19T23:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-19T23:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-19T23:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-20T00:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-20T00:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-20T00:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-20T00:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-20T01:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-20T01:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-20T01:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-20T01:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-20T02:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-20T02:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-20T02:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-20T02:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-20T03:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T03:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-20T03:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T03:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T04:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-20T04:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T04:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T04:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T05:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T05:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T05:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T05:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T06:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-20T06:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-20T06:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-20T06:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-20T07:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-20T07:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-20T07:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-20T08:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-20T08:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-20T08:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-20T08:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.6",
          "timestamp": "2021-02-20T09:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.7",
          "timestamp": "2021-02-20T09:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.1",
          "timestamp": "2021-02-20T09:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-20T09:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-20T10:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-20T10:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T10:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T10:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-20T11:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-20T11:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T11:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T11:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-20T12:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T12:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T12:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T12:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T13:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-20T13:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-20T13:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-20T13:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-20T14:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-20T14:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-20T14:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T14:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T15:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T15:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-20T15:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T15:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T16:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-20T16:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-20T16:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T16:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-20T17:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T17:19:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-20T17:34:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T17:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-20T18:04:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T18:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-20T18:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-20T18:49:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-20T19:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-20T19:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.0",
          "timestamp": "2021-02-20T19:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.9",
          "timestamp": "2021-02-20T19:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "11.0",
          "timestamp": "2021-02-20T20:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "10.3",
          "timestamp": "2021-02-20T20:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-20T20:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-20T20:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-20T21:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-20T21:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-20T21:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-20T21:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-20T22:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-20T22:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-20T22:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-20T22:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-20T23:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-20T23:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-20T23:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-20T23:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-21T00:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T00:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-21T00:36:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-21T00:51:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T02:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-21T02:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T02:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T02:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T03:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T03:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T03:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T03:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T04:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-21T04:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T04:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T04:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T05:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T05:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T05:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T05:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T06:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T06:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T06:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T06:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T07:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T07:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T07:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T07:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T08:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T08:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T08:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T08:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T09:09:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T09:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T09:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T09:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T10:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T10:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T10:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T10:55:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-21T11:10:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T11:25:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T11:40:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-21T11:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T12:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T12:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-21T12:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-21T12:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-21T13:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.9",
          "timestamp": "2021-02-21T13:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.6",
          "timestamp": "2021-02-21T13:41:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-21T13:56:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-21T14:11:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-21T14:26:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-21T14:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-21T14:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-21T15:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-21T15:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-21T15:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T15:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T16:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T16:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-21T16:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-21T16:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T17:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-21T17:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-21T17:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-21T17:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T18:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-21T18:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-21T18:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-21T18:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-21T19:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-21T19:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-21T19:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-21T20:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-21T20:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-21T20:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-21T20:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-21T21:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-21T21:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T21:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T21:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T22:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-21T22:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-21T22:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-21T22:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-21T23:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-21T23:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-21T23:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.7",
          "timestamp": "2021-02-21T23:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.8",
          "timestamp": "2021-02-22T00:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-22T00:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-22T00:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-22T00:45:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-22T01:00:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-22T01:15:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-22T01:30:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-22T01:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-22T02:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-22T02:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-22T02:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-22T02:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-22T03:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-22T03:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-22T03:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-22T03:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-22T04:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-22T04:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-22T04:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-22T04:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-22T05:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-22T05:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-22T05:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-22T05:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-22T06:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-22T06:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-22T06:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-22T06:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-22T07:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-22T07:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-22T07:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-22T07:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-22T08:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-22T08:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-22T08:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.5",
          "timestamp": "2021-02-22T08:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-22T09:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-22T09:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-22T09:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.6",
          "timestamp": "2021-02-22T09:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-22T10:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-22T10:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.9",
          "timestamp": "2021-02-22T10:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.8",
          "timestamp": "2021-02-22T10:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-22T11:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-22T11:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.2",
          "timestamp": "2021-02-22T11:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-22T11:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-22T12:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-22T12:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-22T12:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-22T12:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-22T13:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-22T13:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-22T13:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-22T13:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-22T14:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-22T14:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-22T14:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T14:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T15:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-22T15:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-22T15:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-22T15:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-22T16:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-22T16:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-22T16:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-22T16:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-22T17:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-22T17:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-22T17:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-22T17:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-22T18:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-22T18:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-22T18:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-22T18:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-22T19:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-22T19:23:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-22T19:38:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T19:53:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T20:08:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-22T20:24:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-22T20:39:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-22T20:54:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-22T21:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T21:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-22T21:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-22T22:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-22T22:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-22T22:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-22T22:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-22T23:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-22T23:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-22T23:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-22T23:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-23T00:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-23T00:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-23T00:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-23T00:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-23T01:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-23T01:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-23T01:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-23T01:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T02:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-23T02:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T02:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T02:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-23T03:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-23T03:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-23T03:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-23T03:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-23T04:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-23T04:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-23T04:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T04:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.8",
          "timestamp": "2021-02-23T05:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T05:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-23T05:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T05:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-23T06:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-23T06:27:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T06:42:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-23T06:57:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T07:12:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T07:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T07:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-23T07:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T08:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.0",
          "timestamp": "2021-02-23T08:28:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T08:43:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-23T08:58:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-23T09:13:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-23T09:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.9",
          "timestamp": "2021-02-23T09:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T09:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T10:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-23T10:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.4",
          "timestamp": "2021-02-23T10:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-23T10:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T11:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-23T11:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T11:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T11:59:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-23T12:14:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-23T12:29:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T12:44:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-23T13:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-23T13:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-23T13:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-23T13:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-23T14:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T14:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T14:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T14:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-23T15:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.3",
          "timestamp": "2021-02-23T15:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.2",
          "timestamp": "2021-02-23T15:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.7",
          "timestamp": "2021-02-23T15:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.4",
          "timestamp": "2021-02-23T16:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "9.2",
          "timestamp": "2021-02-23T16:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-23T16:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-23T16:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.5",
          "timestamp": "2021-02-23T17:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-23T17:16:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-23T17:31:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-23T17:46:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.4",
          "timestamp": "2021-02-23T18:01:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-23T18:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-23T18:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.3",
          "timestamp": "2021-02-23T18:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.4",
          "timestamp": "2021-02-23T19:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "8.1",
          "timestamp": "2021-02-23T19:17:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-23T19:32:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-23T19:47:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-23T20:02:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-23T20:18:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.1",
          "timestamp": "2021-02-23T20:33:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.9",
          "timestamp": "2021-02-23T20:48:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-23T21:03:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-23T21:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T21:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "4.9",
          "timestamp": "2021-02-23T21:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-23T22:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T22:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T22:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-23T22:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-23T23:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.0",
          "timestamp": "2021-02-23T23:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-23T23:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-23T23:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.2",
          "timestamp": "2021-02-24T00:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-24T00:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.1",
          "timestamp": "2021-02-24T00:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.3",
          "timestamp": "2021-02-24T00:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-24T01:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.4",
          "timestamp": "2021-02-24T01:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.5",
          "timestamp": "2021-02-24T01:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-24T01:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-24T02:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-24T02:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-24T02:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-24T02:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.6",
          "timestamp": "2021-02-24T03:05:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.7",
          "timestamp": "2021-02-24T03:20:00",
          "unit": "mmol/L"
        },
        {
          "value": "5.8",
          "timestamp": "2021-02-24T03:35:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.0",
          "timestamp": "2021-02-24T03:50:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.2",
          "timestamp": "2021-02-24T04:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.6",
          "timestamp": "2021-02-24T04:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-24T04:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.7",
          "timestamp": "2021-02-24T04:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "6.9",
          "timestamp": "2021-02-24T05:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-24T05:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.5",
          "timestamp": "2021-02-24T05:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-24T05:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-24T06:07:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.0",
          "timestamp": "2021-02-24T06:22:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.1",
          "timestamp": "2021-02-24T06:37:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.3",
          "timestamp": "2021-02-24T06:52:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.6",
          "timestamp": "2021-02-24T07:06:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.7",
          "timestamp": "2021-02-24T07:21:00",
          "unit": "mmol/L"
        },
        {
          "value": "7.8",
          "timestamp": "2021-02-24T07:36:00",
          "unit": "mmol/L"
        }*/
      ]
    };
    Response response = Response(requestOptions: RequestOptions(path: "url"), data: mockChartData);
    return response;
  }
}
