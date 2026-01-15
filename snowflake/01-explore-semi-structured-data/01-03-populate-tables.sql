USE DATABASE SNOWFLAKE_LAB_TRAINING_DB;
USE SCHEMA WEATHER;
USE WAREHOUSE SNOWFLAKE_LAB_DE_WH;

USE DATABASE SNOWFLAKE_LAB_TRAINING_DB;
USE SCHEMA WEATHER;
USE WAREHOUSE SNOWFLAKE_LAB_DE_WH;

INSERT INTO SNOWFLAKE_LAB_ISD_2019_TOTAL (T, V)
SELECT
  CURRENT_TIMESTAMP(),
  PARSE_JSON(column1)
FROM VALUES
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 0.6, "dew-point-quality-code": "1", "temp": 7.2, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10127, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 900, "ceiling-quality-code": "1"},
        "visibility": {"distance": 15000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 320, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 26}
      },
      {
        "air": {"dew-point": 1, "dew-point-quality-code": "1", "temp": 7, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 99999, "pressure-quality-code": "9"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 914, "ceiling-quality-code": "1"},
        "visibility": {"distance": 9999, "distance-quality-code": "1"},
        "wind": {"direction-angle": 999, "direction-quality-code": "9", "speed-quality-code": "1", "speed-rate": 26}
      }
    ]
  },
  "station": {
    "ICAO": "SCCY",
    "USAF": "858640",
    "WBAN": 99999,
    "coord": {"lat": -45.594, "lon": -72.106},
    "country": "CI",
    "elev": 310.9,
    "id": "85864099999",
    "name": "TENIENTE VIDAL"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 17.1, "dew-point-quality-code": "1", "temp": 27.5, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10106, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 3000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 20000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 230, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 15}
      }
    ]
  },
  "station": {
    "USAF": "173300",
    "WBAN": 99999,
    "coord": {"lat": 36.383, "lon": 33.933},
    "country": "TU",
    "elev": 15,
    "id": "17330099999",
    "name": "SILIFKE"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 999.9, "dew-point-quality-code": "9", "temp": 8.7, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 99999, "pressure-quality-code": "9"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 22000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 75000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 999, "direction-quality-code": "9", "speed-quality-code": "9", "speed-rate": 9999}
      }
    ]
  },
  "station": {
    "USAF": "011080",
    "WBAN": 99999,
    "coord": {"lat": 65.7, "lon": 11.85},
    "country": "NO",
    "elev": 9.1,
    "id": "01108099999",
    "name": "VEGA-VALLSJO"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 21.3, "dew-point-quality-code": "1", "temp": 33.2, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10081, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 7800, "ceiling-quality-code": "1"},
        "visibility": {"distance": 10000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 280, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 10}
      }
    ]
  },
  "station": {
    "ICAO": "DFCC",
    "USAF": "655020",
    "WBAN": 99999,
    "coord": {"lat": 13.567, "lon": -2.417},
    "country": "UV",
    "elev": 336,
    "id": "65502099999",
    "name": "OUAHIGOUYA"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 5.6, "dew-point-quality-code": "1", "temp": 26.7, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10151, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 22000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 30000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 300, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 57}
      },
      {
        "air": {"dew-point": 5, "dew-point-quality-code": "1", "temp": 26, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 99999, "pressure-quality-code": "9"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 99999, "ceiling-quality-code": "9"},
        "visibility": {"distance": 9900, "distance-quality-code": "5"},
        "wind": {"direction-angle": 320, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 51}
      }
    ]
  },
  "station": {
    "ICAO": "LEAB",
    "USAF": "082800",
    "WBAN": 99999,
    "coord": {"lat": 38.949, "lon": -1.864},
    "country": "SP",
    "elev": 701.6,
    "id": "08280099999",
    "name": "ALBACETE"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 24.1, "dew-point-quality-code": "1", "temp": 25.8, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10127, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 3000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 10000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 999, "direction-quality-code": "9", "speed-quality-code": "1", "speed-rate": 0}
      }
    ]
  },
  "station": {
    "USAF": "960870",
    "WBAN": 99999,
    "coord": {"lat": 1.117, "lon": 104.117},
    "country": "ID",
    "elev": 24,
    "id": "96087099999",
    "name": "BATAM/HANG NADIM"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 5.8, "dew-point-quality-code": "1", "temp": 30.4, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10099, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 22000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 10000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 320, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 80}
      }
    ]
  },
  "station": {
    "USAF": "389150",
    "WBAN": 99999,
    "coord": {"lat": 37.517, "lon": 66.017},
    "country": "TX",
    "elev": 265,
    "id": "38915099999",
    "name": "CARSANGA"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 5.6, "dew-point-quality-code": "1", "temp": 8.1, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 9971, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 99999, "ceiling-quality-code": "9"},
        "visibility": {"distance": 16000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 160, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 72}
      },
      {
        "air": {"dew-point": 6, "dew-point-quality-code": "1", "temp": 8, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 9970, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 1341, "ceiling-quality-code": "1"},
        "visibility": {"distance": 14484, "distance-quality-code": "1"},
        "wind": {"direction-angle": 160, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 72}
      }
    ]
  },
  "station": {
    "USAF": "719440",
    "WBAN": 99999,
    "coord": {"lat": 55.3, "lon": -123.133},
    "country": "CA",
    "elev": 690,
    "id": "71944099999",
    "name": "MACKENZIE A"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 20, "dew-point-quality-code": "1", "temp": 25.6, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10118, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 99999, "ceiling-quality-code": "9"},
        "visibility": {"distance": 16000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 350, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 15}
      }
    ]
  },
  "station": {
    "ICAO": "PHNL",
    "USAF": "911820",
    "WBAN": 22521,
    "coord": {"lat": 21.324, "lon": -157.929},
    "country": "US",
    "elev": 2.1,
    "id": "91182022521",
    "name": "HONOLULU INTERNATIONAL AIRPORT",
    "state": "HI"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {"dew-point": 2.3, "dew-point-quality-code": "1", "temp": 10, "temp-quality-code": "1"},
        "atmospheric": {"pressure": 10209, "pressure-quality-code": "1"},
        "dt": "2019-10-07T12:00:00",
        "sky": {"ceiling": 22000, "ceiling-quality-code": "1"},
        "visibility": {"distance": 50000, "distance-quality-code": "1"},
        "wind": {"direction-angle": 320, "direction-quality-code": "1", "speed-quality-code": "1", "speed-rate": 20}
      }
    ]
  },
  "station": {
    "USAF": "123000",
    "WBAN": 99999,
    "coord": {"lat": 52.75, "lon": 15.283},
    "country": "PL",
    "elev": 73,
    "id": "12300099999",
    "name": "GORZOW WLKP"
  }
}');


INSERT INTO SNOWFLAKE_LAB_ISD_2019_DAILY (T, V)
SELECT
  CURRENT_TIMESTAMP(),
  PARSE_JSON(column1)
FROM VALUES
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 12.8,
          "dew-point-quality-code": "5",
          "temp": 31.7,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10071,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T00:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 13.9,
          "dew-point-quality-code": "5",
          "temp": 28.3,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10067,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T01:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 13.3,
          "dew-point-quality-code": "5",
          "temp": 28.3,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10069,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T02:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 41
        }
      },
      {
        "air": {
          "dew-point": 13.3,
          "dew-point-quality-code": "5",
          "temp": 27.2,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10071,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T03:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 13.9,
          "dew-point-quality-code": "5",
          "temp": 26.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10072,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T04:52:00",
        "sky": {
          "ceiling": 3353,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 270,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 11.1,
          "dew-point-quality-code": "5",
          "temp": 29.4,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10064,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T05:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 250,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 12.8,
          "dew-point-quality-code": "5",
          "temp": 27.8,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10066,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T06:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 230,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 12.2,
          "dew-point-quality-code": "5",
          "temp": 27.2,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10062,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T07:52:00",
        "sky": {
          "ceiling": 2896,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 100,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 999.9,
          "dew-point-quality-code": "9",
          "temp": 999.9,
          "temp-quality-code": "9"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:59:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "9",
          "speed-rate": 9999
        }
      },
      {
        "air": {
          "dew-point": 12.8,
          "dew-point-quality-code": "5",
          "temp": 25.6,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10068,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T08:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 41
        }
      },
      {
        "air": {
          "dew-point": 13.9,
          "dew-point-quality-code": "5",
          "temp": 23.9,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10069,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T09:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 14.4,
          "dew-point-quality-code": "5",
          "temp": 23.3,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10083,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T10:52:00",
        "sky": {
          "ceiling": 3353,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 22.8,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10088,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T11:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 14.4,
          "dew-point-quality-code": "5",
          "temp": 21.7,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10098,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T12:52:00",
        "sky": {
          "ceiling": 3658,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10107,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T13:52:00",
        "sky": {
          "ceiling": 3353,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10111,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T14:52:00",
        "sky": {
          "ceiling": 3353,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "5",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 15.6,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10118,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T15:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10122,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T16:52:00",
        "sky": {
          "ceiling": 3353,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10125,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T17:52:00",
        "sky": {
          "ceiling": 3048,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "5",
          "temp": 21.1,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:30:00",
        "sky": {
          "ceiling": 3048,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 9656,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "5",
          "temp": 20.6,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10126,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T18:52:00",
        "sky": {
          "ceiling": 3048,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "5",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 17.8,
          "dew-point-quality-code": "5",
          "temp": 23.3,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10123,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T19:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 17.2,
          "dew-point-quality-code": "5",
          "temp": 26.7,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10117,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T20:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 16.1,
          "dew-point-quality-code": "5",
          "temp": 27.8,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10112,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T21:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "9",
          "speed-rate": 9999
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 28.9,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10106,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T22:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "9",
          "speed-rate": 9999
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "5",
          "temp": 30,
          "temp-quality-code": "5"
        },
        "atmospheric": {
          "pressure": 10102,
          "pressure-quality-code": "5"
        },
        "dt": "2019-08-09T23:52:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 51
        }
      }
    ]
  },
  "station": {
    "ICAO": "KMWH",
    "USAF": "727827",
    "WBAN": 24110,
    "coord": {
      "lat": 47.208,
      "lon": -119.319
    },
    "country": "US",
    "elev": 364.5,
    "id": "72782724110",
    "name": "GRANT COUNTY INTL AIRPORT",
    "state": "WA"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 9.4,
          "dew-point-quality-code": "1",
          "temp": 20.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10149,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T01:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 10.7,
          "dew-point-quality-code": "1",
          "temp": 16.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10151,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T02:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 90,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 10.5,
          "dew-point-quality-code": "1",
          "temp": 14.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10155,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 100,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 41
        }
      },
      {
        "air": {
          "dew-point": 10.2,
          "dew-point-quality-code": "1",
          "temp": 14.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10155,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T04:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 9.9,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10157,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T05:56:00",
        "sky": {
          "ceiling": 2896,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 9.3,
          "dew-point-quality-code": "1",
          "temp": 15.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10149,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:56:00",
        "sky": {
          "ceiling": 2743,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 10.3,
          "dew-point-quality-code": "1",
          "temp": 15.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10149,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T07:56:00",
        "sky": {
          "ceiling": 2743,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 10.3,
          "dew-point-quality-code": "1",
          "temp": 16.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10144,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T08:56:00",
        "sky": {
          "ceiling": 1494,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 10.5,
          "dew-point-quality-code": "1",
          "temp": 16.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10141,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 11.1,
          "dew-point-quality-code": "1",
          "temp": 15.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10137,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T10:56:00",
        "sky": {
          "ceiling": 3658,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10147,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:17:00",
        "sky": {
          "ceiling": 2743,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10144,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:28:00",
        "sky": {
          "ceiling": 2743,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10141,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:43:00",
        "sky": {
          "ceiling": 2896,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:46:00",
        "sky": {
          "ceiling": 2896,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 41
        }
      },
      {
        "air": {
          "dew-point": 12.6,
          "dew-point-quality-code": "1",
          "temp": 14.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10137,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:56:00",
        "sky": {
          "ceiling": 4877,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:01:00",
        "sky": {
          "ceiling": 4877,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 41
        }
      },
      {
        "air": {
          "dew-point": 14.4,
          "dew-point-quality-code": "1",
          "temp": 15.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10130,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 15.8,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10135,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T13:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 15.8,
          "dew-point-quality-code": "1",
          "temp": 19.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10136,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T14:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 16.4,
          "dew-point-quality-code": "1",
          "temp": 21.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10128,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 16,
          "dew-point-quality-code": "1",
          "temp": 25.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10120,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T17:56:00",
        "sky": {
          "ceiling": 5182,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 17.1,
          "dew-point-quality-code": "1",
          "temp": 24.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10120,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 17.1,
          "dew-point-quality-code": "1",
          "temp": 25.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10116,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T19:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 16.5,
          "dew-point-quality-code": "1",
          "temp": 25.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10115,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T20:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 999.9,
          "dew-point-quality-code": "9",
          "temp": 999.9,
          "temp-quality-code": "9"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:56:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 16,
          "dew-point-quality-code": "1",
          "temp": 25.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10116,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T23:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 16093,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      }
    ]
  },
  "station": {
    "USAF": "721018",
    "WBAN": 99999,
    "coord": {
      "lat": 47.974,
      "lon": -102.223
    },
    "country": "US",
    "elev": 578.2,
    "id": "72101899999",
    "name": "HOTEL (PARSHALL)",
    "state": "ND"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 24.8,
          "dew-point-quality-code": "1",
          "temp": 29,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10074,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 30.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10073,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T01:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 90,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 24.5,
          "dew-point-quality-code": "1",
          "temp": 30.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10073,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 24.2,
          "dew-point-quality-code": "1",
          "temp": 30.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10068,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 70,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 23.6,
          "dew-point-quality-code": "1",
          "temp": 30.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10064,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T04:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 23.7,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 23.2,
          "dew-point-quality-code": "1",
          "temp": 30.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 23.7,
          "dew-point-quality-code": "1",
          "temp": 29.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T07:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 23.4,
          "dew-point-quality-code": "1",
          "temp": 29.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10058,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 23.5,
          "dew-point-quality-code": "1",
          "temp": 29.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 23.8,
          "dew-point-quality-code": "1",
          "temp": 28.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T10:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 23.4,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10061,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 5
        }
      },
      {
        "air": {
          "dew-point": 24.2,
          "dew-point-quality-code": "1",
          "temp": 28.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10065,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 25.2,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10069,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T13:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 100,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25.7,
          "dew-point-quality-code": "1",
          "temp": 27.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10067,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 24.9,
          "dew-point-quality-code": "1",
          "temp": 28.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10065,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 24.7,
          "dew-point-quality-code": "1",
          "temp": 28.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10063,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T16:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 24.4,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 24.4,
          "dew-point-quality-code": "1",
          "temp": 27.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 24.3,
          "dew-point-quality-code": "1",
          "temp": 27.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T19:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 100,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 23.9,
          "dew-point-quality-code": "1",
          "temp": 27.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10059,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 120,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 24.8,
          "dew-point-quality-code": "1",
          "temp": 26.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 70,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 24.9,
          "dew-point-quality-code": "1",
          "temp": 27.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T22:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 70,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 24.3,
          "dew-point-quality-code": "1",
          "temp": 28.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10058,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      }
    ]
  },
  "station": {
    "USAF": "478430",
    "WBAN": 99999,
    "coord": {
      "lat": 32.7,
      "lon": 128.833
    },
    "country": "JA",
    "elev": 26.9,
    "id": "47843099999",
    "name": "FUKUE"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 22,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:51:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "C",
          "temp": 22,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:59:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 5,
          "dew-point-quality-code": "C",
          "temp": 22,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:46:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 7,
          "dew-point-quality-code": "C",
          "temp": 10,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:46:00",
        "sky": {
          "ceiling": 3048,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 32187,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 6,
          "dew-point-quality-code": "C",
          "temp": 14,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:49:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "7"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "5",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 8,
          "dew-point-quality-code": "C",
          "temp": 18,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:50:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "7"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "5",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 999.9,
          "dew-point-quality-code": "9",
          "temp": 16.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "9",
          "speed-rate": 9999
        }
      },
      {
        "air": {
          "dew-point": 7,
          "dew-point-quality-code": "C",
          "temp": 21,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:46:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "5",
          "speed-quality-code": "5",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 7,
          "dew-point-quality-code": "C",
          "temp": 22,
          "temp-quality-code": "C"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:56:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "5"
        },
        "visibility": {
          "distance": 48280,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "5",
          "speed-rate": 0
        }
      }
    ]
  },
  "station": {
    "ICAO": "PAEC",
    "USAF": "702606",
    "WBAN": 96401,
    "coord": {
      "lat": 62.826,
      "lon": -149.907
    },
    "country": "US",
    "elev": 426.7,
    "id": "70260696401",
    "name": "CHULITNA",
    "state": "AK"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 18.5,
          "dew-point-quality-code": "1",
          "temp": 28.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10143,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 19.5,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 19.5,
          "dew-point-quality-code": "1",
          "temp": 28.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T02:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 19.2,
          "dew-point-quality-code": "1",
          "temp": 27.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10129,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 16.6,
          "dew-point-quality-code": "1",
          "temp": 27.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10112,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 16.6,
          "dew-point-quality-code": "1",
          "temp": 27.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10112,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T05:30:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "1",
          "temp": 27.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10111,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 24.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10118,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 24.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10118,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T08:30:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 24.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10120,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 18.9,
          "dew-point-quality-code": "1",
          "temp": 24.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10136,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 18.9,
          "dew-point-quality-code": "1",
          "temp": 24.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10136,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      },
      {
        "air": {
          "dew-point": 18.7,
          "dew-point-quality-code": "1",
          "temp": 24.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10138,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 23.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10137,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 23.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10137,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T14:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 160,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 19.1,
          "dew-point-quality-code": "1",
          "temp": 23.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10139,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 19.4,
          "dew-point-quality-code": "1",
          "temp": 21.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10130,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 19.4,
          "dew-point-quality-code": "1",
          "temp": 21.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10130,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T17:30:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 19,
          "dew-point-quality-code": "1",
          "temp": 21.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10129,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 19.6,
          "dew-point-quality-code": "1",
          "temp": 22.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 19.6,
          "dew-point-quality-code": "1",
          "temp": 22.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10134,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T20:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 19.8,
          "dew-point-quality-code": "1",
          "temp": 22.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10136,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 170,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 18.1,
          "dew-point-quality-code": "1",
          "temp": 26.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10155,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 18.1,
          "dew-point-quality-code": "1",
          "temp": 26.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10155,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T23:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      }
    ]
  },
  "station": {
    "ICAO": "YDGV",
    "USAF": "941500",
    "WBAN": 99999,
    "coord": {
      "lat": -12.283,
      "lon": 136.817
    },
    "country": "AS",
    "elev": 53,
    "id": "94150099999",
    "name": "GOVE AIRPORT"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 18.2,
          "dew-point-quality-code": "1",
          "temp": 21.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10039,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 52
        }
      },
      {
        "air": {
          "dew-point": 18.9,
          "dew-point-quality-code": "1",
          "temp": 21.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10039,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 19.3,
          "dew-point-quality-code": "1",
          "temp": 21.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10043,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T01:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 18.2,
          "dew-point-quality-code": "1",
          "temp": 22.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10051,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 16.6,
          "dew-point-quality-code": "1",
          "temp": 21.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10052,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 16.6,
          "dew-point-quality-code": "1",
          "temp": 21.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10052,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 16.6,
          "dew-point-quality-code": "1",
          "temp": 21.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10055,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T04:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 16.3,
          "dew-point-quality-code": "1",
          "temp": 21.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 15.3,
          "dew-point-quality-code": "1",
          "temp": 20.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 291,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 77
        }
      },
      {
        "air": {
          "dew-point": 15.5,
          "dew-point-quality-code": "1",
          "temp": 21.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 77
        }
      },
      {
        "air": {
          "dew-point": 14.9,
          "dew-point-quality-code": "1",
          "temp": 20.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10059,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T07:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 77
        }
      },
      {
        "air": {
          "dew-point": 14.2,
          "dew-point-quality-code": "1",
          "temp": 19.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 13.4,
          "dew-point-quality-code": "1",
          "temp": 18.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 14.1,
          "dew-point-quality-code": "1",
          "temp": 19.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10056,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 14.3,
          "dew-point-quality-code": "1",
          "temp": 19,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10062,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T10:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 14.9,
          "dew-point-quality-code": "1",
          "temp": 18.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10068,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 14.2,
          "dew-point-quality-code": "1",
          "temp": 19.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10074,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 293,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 13.5,
          "dew-point-quality-code": "1",
          "temp": 19.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10074,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 13.7,
          "dew-point-quality-code": "1",
          "temp": 20.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10079,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T13:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 77
        }
      },
      {
        "air": {
          "dew-point": 14.4,
          "dew-point-quality-code": "1",
          "temp": 20,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10079,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 14.7,
          "dew-point-quality-code": "1",
          "temp": 19.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10080,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 274,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 65
        }
      },
      {
        "air": {
          "dew-point": 15.2,
          "dew-point-quality-code": "1",
          "temp": 20.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10080,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 270,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 67
        }
      },
      {
        "air": {
          "dew-point": 15.3,
          "dew-point-quality-code": "1",
          "temp": 20.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10084,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T16:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 270,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 57
        }
      },
      {
        "air": {
          "dew-point": 15.4,
          "dew-point-quality-code": "1",
          "temp": 21.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10082,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 260,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 62
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "1",
          "temp": 22.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10077,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 240,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 108
        }
      },
      {
        "air": {
          "dew-point": 16.7,
          "dew-point-quality-code": "1",
          "temp": 22.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10077,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 240,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 108
        }
      },
      {
        "air": {
          "dew-point": 14.2,
          "dew-point-quality-code": "1",
          "temp": 20.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10073,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T19:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 240,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 128
        }
      },
      {
        "air": {
          "dew-point": 15.3,
          "dew-point-quality-code": "1",
          "temp": 20,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10071,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 270,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 14.8,
          "dew-point-quality-code": "1",
          "temp": 19.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10069,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 266,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 65
        }
      },
      {
        "air": {
          "dew-point": 15.1,
          "dew-point-quality-code": "1",
          "temp": 20.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10069,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 270,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 72
        }
      },
      {
        "air": {
          "dew-point": 14.1,
          "dew-point-quality-code": "1",
          "temp": 19.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10070,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T22:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 260,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 51
        }
      },
      {
        "air": {
          "dew-point": 14.9,
          "dew-point-quality-code": "1",
          "temp": 19.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10068,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 46
        }
      }
    ]
  },
  "station": {
    "ICAO": "CWQP",
    "USAF": "714300",
    "WBAN": 99999,
    "coord": {
      "lat": 43.833,
      "lon": -77.15
    },
    "country": "CA",
    "elev": 79,
    "id": "71430099999",
    "name": "POINT PETRE (AUT)  ONT"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 24.3,
          "dew-point-quality-code": "1",
          "temp": 26.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10021,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T01:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 260,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 23,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T01:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 350,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 24.7,
          "dew-point-quality-code": "1",
          "temp": 29,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10033,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 350,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T03:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T04:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T04:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 220,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 31,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 31
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 200,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 23.9,
          "dew-point-quality-code": "1",
          "temp": 30.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10017,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 24,
          "dew-point-quality-code": "1",
          "temp": 31,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 36
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 4500,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 240,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 210,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:30:00",
        "sky": {
          "ceiling": 762,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 210,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 21
        }
      },
      {
        "air": {
          "dew-point": 25.5,
          "dew-point-quality-code": "1",
          "temp": 27.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 9998,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 210,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 220,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 230,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 190,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 26
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 150,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25.3,
          "dew-point-quality-code": "1",
          "temp": 27.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 9999,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 6000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 100,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25.1,
          "dew-point-quality-code": "1",
          "temp": 26.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10020,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 130,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 200,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 15
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T17:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 24.8,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10015,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T19:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T19:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 24.7,
          "dew-point-quality-code": "1",
          "temp": 25.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10002,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 9999,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      },
      {
        "air": {
          "dew-point": 25,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T23:30:00",
        "sky": {
          "ceiling": 1067,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 0
        }
      }
    ]
  },
  "station": {
    "ICAO": "VTCC",
    "USAF": "483270",
    "WBAN": 99999,
    "coord": {
      "lat": 18.767,
      "lon": 98.963
    },
    "country": "TH",
    "elev": 315.8,
    "id": "48327099999",
    "name": "CHIANG MAI INTL"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": -0.6,
          "dew-point-quality-code": "1",
          "temp": 22.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10057,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 80,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T01:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T01:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 3.6,
          "dew-point-quality-code": "1",
          "temp": 25.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10064,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 110,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T03:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 29,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T04:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T04:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 31,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 2.8,
          "dew-point-quality-code": "1",
          "temp": 31.1,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 140,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 32,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 32,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 2.9,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10058,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 34,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 34,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 2,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 30,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 3,
          "dew-point-quality-code": "1",
          "temp": 33,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 32,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 2.2,
          "dew-point-quality-code": "1",
          "temp": 31.7,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10060,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 32,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 32,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 80
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 31,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 70
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 30,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 29,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 1,
          "dew-point-quality-code": "1",
          "temp": 25.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10086,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 28,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 27,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 26,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 10,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 0,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 25,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T17:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": -1.6,
          "dew-point-quality-code": "1",
          "temp": 23.3,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10103,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 60
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T19:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T19:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 20,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2.8,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10094,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 999999,
          "distance-quality-code": "9"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 24,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -1,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": -2,
          "dew-point-quality-code": "1",
          "temp": 23,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T23:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 9900,
          "distance-quality-code": "5"
        },
        "wind": {
          "direction-angle": 40,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      }
    ]
  },
  "station": {
    "ICAO": "UAII",
    "USAF": "383280",
    "WBAN": 99999,
    "coord": {
      "lat": 42.364,
      "lon": 69.479
    },
    "country": "KZ",
    "elev": 422.1,
    "id": "38328099999",
    "name": "SHYMKENT"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 5.1,
          "dew-point-quality-code": "1",
          "temp": 7.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10196,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 180,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 9.7,
          "dew-point-quality-code": "1",
          "temp": 16.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10181,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 90,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 10.5,
          "dew-point-quality-code": "1",
          "temp": 19,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10172,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 90,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 10,
          "dew-point-quality-code": "1",
          "temp": 19.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10164,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 11,
          "dew-point-quality-code": "1",
          "temp": 17.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10164,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 50,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 9.8,
          "dew-point-quality-code": "1",
          "temp": 11.9,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10166,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 7.8,
          "dew-point-quality-code": "1",
          "temp": 8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10169,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 8,
          "dew-point-quality-code": "1",
          "temp": 8.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10171,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 50000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "9",
          "speed-rate": 9999
        }
      }
    ]
  },
  "station": {
    "USAF": "241360",
    "WBAN": 99999,
    "coord": {
      "lat": 68.617,
      "lon": 118.333
    },
    "country": "RS",
    "elev": 77,
    "id": "24136099999",
    "name": "SUHANA"
  }
}'),
('{
  "data": {
    "observations": [
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 14.6,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10026,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 10000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T00:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 7000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T01:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 7000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T02:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 7000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 13.7,
          "dew-point-quality-code": "1",
          "temp": 14.5,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10034,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 16000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T03:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T04:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:00:00",
        "sky": {
          "ceiling": 396,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T05:30:00",
        "sky": {
          "ceiling": 457,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14.5,
          "dew-point-quality-code": "1",
          "temp": 15.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10041,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:00:00",
        "sky": {
          "ceiling": 457,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T06:30:00",
        "sky": {
          "ceiling": 457,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 17,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:00:00",
        "sky": {
          "ceiling": 488,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 17,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T07:30:00",
        "sky": {
          "ceiling": 274,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 320,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 17,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:00:00",
        "sky": {
          "ceiling": 274,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 17,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T08:30:00",
        "sky": {
          "ceiling": 274,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14.8,
          "dew-point-quality-code": "1",
          "temp": 17.8,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10054,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 310,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:00:00",
        "sky": {
          "ceiling": 335,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 310,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T09:30:00",
        "sky": {
          "ceiling": 274,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 50
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:00:00",
        "sky": {
          "ceiling": 335,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 16,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T10:30:00",
        "sky": {
          "ceiling": 488,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T11:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 360,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 19.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10059,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 320,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 19,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 19,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T12:30:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 19,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:00:00",
        "sky": {
          "ceiling": 457,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 15,
          "dew-point-quality-code": "1",
          "temp": 21,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T13:30:00",
        "sky": {
          "ceiling": 579,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 20,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:00:00",
        "sky": {
          "ceiling": 579,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 290,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 20,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T14:30:00",
        "sky": {
          "ceiling": 914,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14.6,
          "dew-point-quality-code": "1",
          "temp": 18.2,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10072,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 4000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 18,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:00:00",
        "sky": {
          "ceiling": 1006,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T15:30:00",
        "sky": {
          "ceiling": 488,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 280,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 40
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:00:00",
        "sky": {
          "ceiling": 488,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 250,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T16:30:00",
        "sky": {
          "ceiling": 792,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T17:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 5000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 12.9,
          "dew-point-quality-code": "1",
          "temp": 14,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10086,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 320,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T18:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 330,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 14,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T19:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 6000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 340,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 30
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 15,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T20:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 8000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 320,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 20
        }
      },
      {
        "air": {
          "dew-point": 12.6,
          "dew-point-quality-code": "1",
          "temp": 13.4,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 10101,
          "pressure-quality-code": "1"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 99999,
          "ceiling-quality-code": "9"
        },
        "visibility": {
          "distance": 20000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 300,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 13,
          "dew-point-quality-code": "1",
          "temp": 14,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T21:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 7000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 310,
          "direction-quality-code": "1",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 13,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T22:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 6000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      },
      {
        "air": {
          "dew-point": 12,
          "dew-point-quality-code": "1",
          "temp": 13,
          "temp-quality-code": "1"
        },
        "atmospheric": {
          "pressure": 99999,
          "pressure-quality-code": "9"
        },
        "dt": "2019-08-09T23:00:00",
        "sky": {
          "ceiling": 22000,
          "ceiling-quality-code": "1"
        },
        "visibility": {
          "distance": 6000,
          "distance-quality-code": "1"
        },
        "wind": {
          "direction-angle": 999,
          "direction-quality-code": "9",
          "speed-quality-code": "1",
          "speed-rate": 10
        }
      }
    ]
  },
  "station": {
    "ICAO": "ULOO",
    "USAF": "262580",
    "WBAN": 99999,
    "coord": {
      "lat": 57.784,
      "lon": 28.396
    },
    "country": "RS",
    "elev": 46.9,
    "id": "26258099999",
    "name": "PSKOV"
  }
}');

-- Verification
SELECT
  T,
  V:station.name::STRING AS station_name,
  ARRAY_SIZE(V:data.observations) AS observation_count
FROM snowflake_lab_isd_2019_total
ORDER BY T DESC;

SELECT
  T,
  V:station.name::STRING AS station_name,
  ARRAY_SIZE(V:data.observations) AS observation_count
FROM snowflake_lab_isd_2019_daily
ORDER BY T DESC;

SELECT COUNT(*) FROM snowflake_lab_isd_2019_total;

SELECT COUNT(*) FROM snowflake_lab_isd_2019_daily;