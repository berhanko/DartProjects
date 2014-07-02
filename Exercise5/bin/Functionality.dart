
CheckIfLetter(String fString) {
  
  bool isString=true;
  final checkS=new RegExp('[A-Za-z ]');
  
  for (var i = 0; i<fString.length; i++) {
    
    if(fString[i].contains(checkS)==false) {
      isString=false;
      break;
    }
  
  } 
  return isString;
}

LongestSentence(String sentence) { //Also find longest word: change temp="." with temp=" "
  
  var startSentence, endSentence, lastBig, nextSentence=0;
  var posSentence = new List();
  var lenSentence = new List();
 // var longSentence = new List();
  var temp="."; //end of each sentence
   
    //End position of each sentence
    for (var i=0; i<temp.allMatches(sentence).length; i++) {
      nextSentence = sentence.indexOf(temp, nextSentence+1);
      posSentence.add(nextSentence);       
     }

    //Length of each sentence    
    lenSentence.add(posSentence[0]);
    for (var i=1; i<posSentence.length; i++) {
         lenSentence.add(posSentence[i]-posSentence[i-1]);       
     }
    
    //Find start pos of the longest sentence
    lastBig=lenSentence[0];
    startSentence=0;
    endSentence=lastBig;
    for (var i=1; i<lenSentence.length; i++) {
        if (lenSentence[i]>=lastBig) {
          startSentence=posSentence[i-1]+1;
          endSentence=posSentence[i]+1;
          lastBig=lenSentence[i];
        }
    }
   
    
    //Add list
   //longSentence.add(startSentence);  
   //longSentence.add(endSentence);  
    
    var longestSentence = sentence.substring(startSentence,endSentence);
    
  return longestSentence;
}