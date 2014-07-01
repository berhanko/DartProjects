
import 'dart:math';

CalculateEnd(int length, num angle) {
  
  var endX, endY;
  final _width=980;
  final _height=660;
  var startX = _width/2, startY= _height/2; //centerpoint
  
  var radian = (angle * PI)/180; // degrees to radian
  
  endX = startX + length * cos(radian);
  endY = startY + length * sin(radian);
  
  var endCoordinates = new List();
  endCoordinates.add(endX.toStringAsFixed(3));
  endCoordinates.add(endY.toStringAsFixed(3));
  
  return endCoordinates;
}

WriteFibonacci(int n) {
  
  var a=0, b=1, fSum= 0;
  var fSeriesBuffer = new StringBuffer('0 1 ');
  String fSeries;
  
  for (int i=1; i<=n; i++) {
    fSum = a+b;
    fSeriesBuffer.write('$fSum ');
    a=b;
    b=fSum;
  }
  
  fSeries = fSeriesBuffer.toString();
  return fSeries;
}

void main() {
  
  //print(WriteFibonacci(11));
  
  print(CalculateEnd(120,30));
  
}
