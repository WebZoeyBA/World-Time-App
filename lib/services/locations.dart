import 'package:flutter/foundation.dart';
import 'world_time.dart';
import 'package:flutter/material.dart';

List<WorldTime> locations = [
  WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
  WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
  WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
  WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
  WorldTime(
      location: 'Los Angeles', flag: 'usa.png', url: 'America/Los_Angeles'),
  WorldTime(location: 'Washington', flag: 'usa.png', url: 'America/Washington'),
  WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
  WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
  WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
  WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  WorldTime(location: 'Sarajevo', flag: 'bih.png', url: 'Europe/Sarajevo'),
  WorldTime(location: 'Istanbul', flag: 'turkey.png', url: 'Europe/Istanbul'),
  WorldTime(location: 'Oslo', flag: 'norway1.png', url: 'Europe/Oslo'),
  WorldTime(location: 'Moscow', flag: 'russia.png', url: 'Europe/Moscow'),
  WorldTime(
      location: 'Novosibirsk', flag: 'russia.png', url: 'Asia/Novosibirsk'),
  WorldTime(
      location: 'Vladivostok', flag: 'russia.png', url: 'Asia/Vladivostok'),
  WorldTime(location: 'Magadan', flag: 'russia.png', url: 'Asia/Magadan'),
  WorldTime(location: 'Kamchatka', flag: 'russia.png', url: 'Asia/Kamchatka'),
  WorldTime(
      location: 'Melbourne', flag: 'australia.png', url: 'Australia/Melbourne'),
  WorldTime(location: 'Perth', flag: 'australia.png', url: 'Australia/Perth'),
  WorldTime(
      location: 'Adelaide', flag: 'australia.png', url: 'Australia/Adelaide'),
  WorldTime(
      location: 'Lord Howe', flag: 'australia.png', url: 'Australia/Lord_Howe'),
  WorldTime(location: 'Caracas', flag: 'ecuador.png', url: 'America/Caracas'),
  WorldTime(location: 'Mumbai', flag: 'india.png', url: 'Asia/Mumbai'),
  WorldTime(location: 'Karachi', flag: 'pakistan.png', url: 'Asia/Karachi'),
  WorldTime(location: 'Kabul', flag: 'afghanistan.png', url: 'Asia/Kabul'),
  WorldTime(location: 'Atyrau', flag: 'kazakhstan.png', url: 'Asia/Atyrau'),
  WorldTime(location: 'Tehran', flag: 'iran.png', url: 'Asia/Tehran'),
  WorldTime(location: 'Shanghai', flag: 'china.png', url: 'Asia/Shanghai'),
];
