

void main() {
  
  int pyramidRow=9;
  int multiplier=1;
  var mResult, tenPower=1, pSpace=16;
  String pText='';
  
  
  for (var i = 1; i<=pyramidRow; i++) {
    
    //calculate x-pos on pyramid row & print spaces
    for (var j = 1; j<=pSpace; j++){
      pText='$pText' + ' ';
    }
    
    mResult = multiplier * multiplier;
    pText = '$pText' + '$multiplier x $multiplier = $mResult';
    print('$pText');
    
    //calculate next multiplier
    tenPower=tenPower*10;
    multiplier=multiplier + tenPower;

    //re-initialize pyramid positions
    pSpace=pSpace-2;
    pText='';
     
    
  }
  
}
