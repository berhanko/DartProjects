

EmailValidation(String email){
  bool validation=false;  
  
    for(var i = 0; i<email.length; i++) {
      if (email[i]=="@") {
        for(var j=i; j<email.length; j++){
          if (email[j]==".") {
            validation=true;
            break;
          }
        }
      }
    }

 return validation;   
}

class TextEncoder {
  final String text;
  static final Map _newLMatrix = {};
      
     TextEncoder(this.text);

    //Encode-Decode Matrix is built:
    _BuildCodePage() {
    
    var nakedText = text.replaceAll(new RegExp(r'\W+'), '');
    nakedText = nakedText.replaceAll(new RegExp(r'\d+'), '');
    var lMatrix = new Map();
      
      //Find Letter Count

    var nakedTextList = nakedText.split('');
    nakedTextList.sort((a,b) => a.compareTo(b));
      
      for (var char in nakedTextList) {
        lMatrix[char]=lMatrix.putIfAbsent(char, () => 0) +1;
      }
      
      //Discard letters with count>9

    var letterIndex = lMatrix.keys.toList();
    var countIndex = lMatrix.values.toList();

      for(var i=0; i<countIndex.length; i++) {
        if (countIndex[i]>9) {
          lMatrix.remove(letterIndex[i]);
        }   
      }
   
    letterIndex = lMatrix.keys.toList();
    countIndex = lMatrix.values.toList();

    //Discard letters with non-unique counts & Finalize Matrix

 
      for (var i=0; i<countIndex.length; i++) {
        _newLMatrix[countIndex[i]]=_newLMatrix.putIfAbsent(countIndex[i], () => letterIndex[i]);
      }
   
   return _newLMatrix;
  }
   
   Encode() {
     
     _BuildCodePage();
     var encodeIntegers = _newLMatrix.keys.toList();
     var encodeLetters = _newLMatrix.values.toList();
     
     //Convert Integers to Strings For Easy Comparison
     
       for (var i=0; i<encodeIntegers.length; i++){
         encodeIntegers[i]=encodeIntegers[i].toString();
       }
       var tempTextList = text.split('');
       var changePos, changePosText;
         for (var char in tempTextList) {
           if (encodeLetters.contains(char)){
             changePos = encodeLetters.indexOf(char);
             changePosText = tempTextList.indexOf(char);
             tempTextList[changePosText] = encodeIntegers[changePos];
           }
         }
    
    var encodedText = tempTextList.join();
    
    return encodedText;
   }
      
   Decode(){
     
     //Encode must be run before Decode
       if(_newLMatrix.length==0) return 'You must run encode first to build the encode/decode matrix';
          
     var encodeIntegers = _newLMatrix.keys.toList();
     var encodeLetters = _newLMatrix.values.toList();
     
     //Convert Integers to Strings For Easy Comparison
     
       for (var i=0; i<encodeIntegers.length; i++){
         encodeIntegers[i]=encodeIntegers[i].toString();
       }
       var tempDecodeText = text.split('');
        var retPos, retPosText;
          for (var char in tempDecodeText) {
            if(encodeIntegers.contains(char)) {
              retPos=encodeIntegers.indexOf(char);
              retPosText=tempDecodeText.indexOf(char);
              tempDecodeText[retPosText]=encodeLetters[retPos];
            }
          }
      
     var decodedText = tempDecodeText.join();
     
     return decodedText;
   }
      
}
