
CheckIfLetter(String fString) {
  
  bool isString=true;
  final checkS=new RegExp('[A-Za-z]');
  
  for (var i = 0; i<fString.length; i++) {
    
    if(fString[i].contains(checkS)==false && fString[i] != " ") {
      isString=false;
      break;
    }
  
  } 
  return isString;
}