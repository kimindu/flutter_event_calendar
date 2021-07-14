import 'package:flutter_event_calendar/src/dictionaries/days.dart';
import 'package:flutter_event_calendar/src/dictionaries/months.dart';
import 'package:flutter_event_calendar/src/dictionaries/locales.dart';
import 'package:flutter_event_calendar/src/handlers/EventCalendar.dart';

class Translator {
  List getMonthNames() {
    var xtype=(EventCalendar.locale!='fa' && EventCalendar.locale!='en') ? EventCalendar.locale:  EventCalendar.type;

    return fullMonthNames[xtype];
  }

  String getPartTranslate(format, index) {
    switch (format) {
      case 'month':
        return getMonthNameWithIndex(index);
      default:
        return '';
    }
  }

  String getWeekDayNameWithIndex(index) {
    var xtype=(EventCalendar.locale!='fa' && EventCalendar.locale!='en') ? EventCalendar.locale:  EventCalendar.type;

    switch (EventCalendar.headerWeekDayStringType) {
      case 'full':
        return fullDayNames[xtype][index];
      case 'short':
        return shortDayNames[xtype][index];
    }
  }

  String getMonthNameWithIndex(index) {
    var xtype=(EventCalendar.locale!='fa' && EventCalendar.locale!='en') ? EventCalendar.locale:  EventCalendar.type;
    switch (EventCalendar.headerMonthStringType) {
      case 'full':
        return fullMonthNames[xtype][index];

      case 'short':
        return shortMonthNames[xtype][index];
    }
  }

  String trans(word) {
    switch (EventCalendar.locale) {
      case 'fa':
        return fa[word];
      case 'en':
        return en[word];
      case 'kr':
        return kr[word];
    }
  }
}
