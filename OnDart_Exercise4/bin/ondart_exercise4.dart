
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
  return print(fSeries);
}

void main() {
  
  WriteFibonacci(11);
  
  
}
