

void main() {
  
  int n =10;
  int multiplier=1;
  var mResult, tenPower=1, pSpace=18;
  String pText='';
  
  
  for (var i = 1; i<n; i++) {
    
    //calculate x-pos on pyramid & print spaces
    for (var j = 1; j<pSpace; j++){
      pText='$pText' + ' ';
    }
    
    mResult = multiplier * multiplier;
    pText = '$pText' + '$multiplier x $multiplier = $mResult';
    print('$pText');
    //print('$multiplier x $multiplier = $mResult');
    
    //calculate next multiplier
    tenPower=tenPower*10;
    multiplier=multiplier + tenPower;

    //re-initialize pyramid positions
    pSpace=pSpace-2;
    pText='';
     
    
  }
  
}
