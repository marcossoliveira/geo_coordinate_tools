import 'dart:math' as math;

const  PI2RAD = math.pi/180; // PI/180 ()
const EARTHRADIUS = 6371;

class CalcDistance {
  double startLat;
  double startLong;
  double endLat;
  double endLong;
  
  CalcDistance.entries({this.startLat, this.startLong, this.endLat, this.endLong}) {
    
    double distLat = (endLat - startLat) * PI2RAD;
    double distLong = (endLong - startLong) * PI2RAD;

    double _sinAdj = math.sin(distLat / 2);
    double _sinOpp = math.sin(distLong / 2);
    double _cos = math.cos(startLat * PI2RAD);


    double _op1 = math.pow(_sinAdj, 2) + math.pow(_cos, 2) * math.pow(_sinOpp, 2);
    double _op2 = 2 * math.atan2(math.sqrt(_op1), math.sqrt(1 - _op1));

    double result = EARTHRADIUS * _op2;

    print(result);

  }


}