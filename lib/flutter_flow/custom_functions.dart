import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int? findDay(int? dayCount) {
  DateTime currentDate = DateTime.now();
  DateTime previousSeptemberFirst = DateTime(currentDate.year - 1, 9, 1);
  int daysPassed =
      (currentDate.difference(previousSeptemberFirst).inDays) + dayCount!;

  if (daysPassed >= 365) {
    daysPassed = daysPassed % 365;
  }

  return daysPassed;
}

String? displayDate(int? dayCount) {
  if (dayCount == null) {
    dayCount = 0;
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  DateTime currentDate = DateTime.now().add(Duration(days: dayCount));
  String formattedDate = DateFormat('EEEE, MMMM d').format(currentDate);
  String daySuffix = _getDaySuffix(currentDate.day);

  return '$formattedDate$daySuffix';
}

String? checkFirstClass(
  String? dayType,
  String? periodThree,
  String? periodOne,
) {
  if (dayType == 'Day One' || dayType == 'PD Day One') {
    return periodThree;
  } else if (dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'First Day of School' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return periodOne;
  } else {
    return '';
  }
}

String? checkFirstClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '8:10am - 9:06am';
  } else if (dayType == 'Day Five') {
    return '8:10am - 8:51am';
  } else if (dayType == 'Day E') {
    return '8:10am - 8:33am';
  } else if (dayType == 'First Day of School') {
    return '12:00pm - 12:09pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '8:10am - 8:58am';
  } else {
    return '';
  }
}

String? checkSecondClass(
  String? dayType,
  String? periodFour,
  String? periodTwo,
) {
  if (dayType == 'Day One' || dayType == 'PD Day One') {
    return periodFour;
  } else if (dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'First Day of School' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return periodTwo;
  } else {
    return '';
  }
}

String? checkSecondClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '9:12am - 10:08am';
  } else if (dayType == 'Day Five') {
    return '8:57am - 9:38am';
  } else if (dayType == 'Day E') {
    return '8:39am - 9:02am';
  } else if (dayType == 'First Day of School') {
    return '12:25pm - 12:44pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '9:04am - 9:52am';
  } else {
    return '';
  }
}

String? checkTiger(
  String? dayType,
  String? periodThree,
) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return 'Tiger Time';
  } else if (dayType == 'First Day of School') {
    return periodThree;
  } else {
    return '';
  }
}

String? checkTigerTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '10:08am - 10:14am';
  } else if (dayType == 'Day Five') {
    return '9:38am - 9:44am';
  } else if (dayType == 'Day E') {
    return '9:02am - 9:06am';
  } else if (dayType == 'First Day of School') {
    return '12:50pm - 1:09pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '9:52am - 9:58am';
  } else {
    return '';
  }
}

String? checkThirdClass(
  String? dayType,
  String? periodFive,
  String? periodThree,
  String? periodFour,
) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two') {
    return periodFive;
  } else if (dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return periodThree;
  } else if (dayType == 'First Day of School') {
    return periodFour;
  } else {
    return '';
  }
}

String? checkFourthClass(
  String? dayType,
  String? periodSix,
  String? periodFour,
) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two') {
    return periodSix;
  } else if (dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'Day E') {
    return periodFour;
  } else if (dayType == 'First Day of School') {
    return periodSix;
  } else {
    return '';
  }
}

String? checkThirdClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '10:20am - 11:16am';
  } else if (dayType == 'Day Five') {
    return '9:50am - 10:31am';
  } else if (dayType == 'Day E') {
    return '9:12am - 9:35am';
  } else if (dayType == 'First Day of School') {
    return '1:15pm - 1:34pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '10:04am - 10:52am';
  } else {
    return '';
  }
}

String? checkFourthClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '12:00pm - 12:56pm';
  } else if (dayType == 'Day Five') {
    return '10:37am - 11:18am';
  } else if (dayType == 'Day E') {
    return '9:41am - 10:04am';
  } else if (dayType == 'First Day of School') {
    return '2:05pm - 2:24pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '11:34am - 12:22pm';
  } else {
    return '';
  }
}

String? checkLunch(
  String? dayType,
  String? periodFive,
) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return 'Lunch';
  } else if (dayType == 'First Day of School') {
    return periodFive;
  } else {
    return '                                        No School';
  }
}

String? checkFifthClass(
  String? dayType,
  String? periodFive,
  String? periodSeven,
  String? periodSix,
) {
  if (dayType == 'Day Four' || dayType == 'PD Day Four') {
    return periodFive;
  } else if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'First Day of School') {
    return periodSeven;
  } else {
    return '';
  }
}

String? checkSixthClass(
  String? dayType,
  String? periodSix,
  String? periodEight,
) {
  if (dayType == 'Day Four' || dayType == 'PD Day Four') {
    return periodSix;
  } else if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'Day Five' ||
      dayType == 'Day E' ||
      dayType == 'First Day of School') {
    return periodEight;
  } else {
    return '';
  }
}

String? checkFifthClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '1:02pm - 1:58pm';
  } else if (dayType == 'Day Five') {
    return '1:32pm - 2:13pm';
  } else if (dayType == 'Day E') {
    return '11:08pm - 11:31pm';
  } else if (dayType == 'First Day of School') {
    return '2:30pm - 2:49pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '12:28pm - 1:16pm';
  } else {
    return '';
  }
}

String? checkSixthClassTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '2:04pm - 3:00pm';
  } else if (dayType == 'Day Five') {
    return '2:19pm - 3:00pm';
  } else if (dayType == 'Day E') {
    return '11:37pm - 12:00pm';
  } else if (dayType == 'First Day of School') {
    return '2:55pm - 3:14pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '1:22pm - 2:10pm';
  } else {
    return '';
  }
}

String? checkExtraHelp(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five') {
    return 'Extra Help';
  } else {
    return '';
  }
}

String? checkExtraHelpTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four' ||
      dayType == 'Day Five') {
    return '3:00pm - 3:20pm';
  } else {
    return '';
  }
}

String? checkLunchTime(String? dayType) {
  if (dayType == 'Day One' ||
      dayType == 'Day Two' ||
      dayType == 'Day Three' ||
      dayType == 'Day Four') {
    return '11:16am - 12:00pm';
  } else if (dayType == 'Day Five') {
    return '11:18am - 11:58am';
  } else if (dayType == 'First Day of School') {
    return '1:40pm - 1:59pm';
  } else if (dayType == 'PD Day One' ||
      dayType == 'PD Day Two' ||
      dayType == 'PD Day Three' ||
      dayType == 'PD Day Four') {
    return '10:52am - 11:34am';
  } else {
    return '';
  }
}

int? fixClassSizing(String? className) {
  int spaceValue = 130 - (className?.length ?? 0); // Handling null className
  return spaceValue;
}

String? getRemainingTime(
  String? day,
  String? currentTimeStr,
) {
  if (day == null || currentTimeStr == null) {
    return null; // Handle invalid input
  }

  Map<String, List<List<String>>> schedule = {
    "Day One": [
      ["8:10am", "9:06am"],
      ["9:12am", "10:08am"],
      ["10:08am", "10:14am"],
      ["10:20am", "11:16am"],
      ["11:16am", "12:00pm"],
      ["12:00pm", "12:56pm"],
      ["1:02pm", "1:58pm"],
      ["2:04pm", "3:00pm"],
      ["3:00pm", "3:20pm"]
    ],
    "Day Two": [
      ["8:10am", "9:06am"],
      ["9:12am", "10:08am"],
      ["10:08am", "10:14am"],
      ["10:20am", "11:16am"],
      ["11:16am", "12:00pm"],
      ["12:00pm", "12:56pm"],
      ["1:02pm", "1:58pm"],
      ["2:04pm", "3:00pm"],
      ["3:00pm", "3:20pm"]
    ],
    "Day Three": [
      ["8:10am", "9:06am"],
      ["9:12am", "10:08am"],
      ["10:08am", "10:14am"],
      ["10:20am", "11:16am"],
      ["11:16am", "12:00pm"],
      ["12:00pm", "12:56pm"],
      ["1:02pm", "1:58pm"],
      ["2:04pm", "3:00pm"],
      ["3:00pm", "3:20pm"]
    ],
    "Day Four": [
      ["8:10am", "9:06am"],
      ["9:12am", "10:08am"],
      ["10:08am", "10:14am"],
      ["10:20am", "11:16am"],
      ["11:16am", "12:00pm"],
      ["12:00pm", "12:56pm"],
      ["1:02pm", "1:58pm"],
      ["2:04pm", "3:00pm"],
      ["3:00pm", "3:20pm"]
    ],
    "Day Five": [
      ["8:10am", "8:51am"],
      ["8:57am", "9:38am"],
      ["9:38am", "9:44am"],
      ["9:50am", "10:31am"],
      ["10:37am", "11:18am"],
      ["11:18am", "11:58am"],
      ["11:58am", "12:39pm"],
      ["12:45pm", "1:26pm"],
      ["1:32pm", "2:13pm"],
      ["2:19pm", "3:00pm"],
      ["3:00pm", "3:20pm"]
    ],
    "Day E": [
      ["8:10am", "8:33am"],
      ["8:39am", "9:02am"],
      ["9:02am", "9:06am"],
      ["9:12am", "9:35am"],
      ["9:41am", "10:04am"],
      ["10:10am", "10:33am"],
      ["10:39am", "11:02am"],
      ["11:08am", "11:31am"],
      ["11:37am", "12:00pm"]
    ]
  };

  List<List<String>> periods = schedule[day]!;
  DateTime currentTime = DateFormat("h:mma").parse(currentTimeStr);

  List<DateTime> periodStartTimes = periods.map((period) {
    return DateFormat("h:mma").parse(period[0]);
  }).toList();

  int currentPeriodIndex = periodStartTimes.indexWhere((startTime) {
    DateTime endTime = DateFormat("h:mma")
        .parse(periods[periodStartTimes.indexOf(startTime)][1]);
    return startTime.isBefore(currentTime) && endTime.isAfter(currentTime);
  });

  if (currentPeriodIndex != -1) {
    DateTime currentPeriodEnd =
        DateFormat("h:mma").parse(periods[currentPeriodIndex][1]);
    Duration timeLeft = currentPeriodEnd.difference(currentTime);
    return "Time left in current period: ${timeLeft}";
  } else {
    DateTime nextPeriodStart = DateFormat("h:mma").parse(periods[0][0]);
    if (currentTime.isBefore(nextPeriodStart)) {
      Duration timeUntilNext = nextPeriodStart.difference(currentTime);
      return "Time until next period: ${timeUntilNext}";
    } else {
      return "School Day Over";
    }
  }
}

bool? checkEmail(String? input) {
  return input != null && input.contains('mamkschools.org');
}
