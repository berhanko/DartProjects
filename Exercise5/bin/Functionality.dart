
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

palindrome(String text) {
  
  String reverseNakedText=''; 
  bool isPalindrome=false;
  
  String nakedText = text.replaceAll(new RegExp(r'\W+'), '');
  
    for (var i=nakedText.length-1; i>=0; i--) {
      reverseNakedText='${reverseNakedText}${nakedText[i]}';
    }
    
  if(reverseNakedText.toUpperCase() == nakedText.toUpperCase()) isPalindrome=true;
  
  return isPalindrome;
  
}

ConvertGrade(num grade) {
  
  String tGrade;
  var gMin, gMax;
  var gMap = new Map();
  
  gMap[[0,15]] = 'F';
  gMap[[16,24]] = 'D';
  gMap[[25,50]] = 'C';
  gMap[[51,75]] = 'B';
  gMap[[76,100]] = 'A';
  
  List gradeList = gMap.keys.toList();
  List letterGradeList = gMap.values.toList();
  
    for(var i = 0; i<gradeList.length; i++) {
      gMin = gradeList[i][0];
      gMax = gradeList[i][1];
        
        if (grade>=gMin && grade<= gMax) { 
          tGrade = letterGradeList[i];
          break;
        }
    }
  
   return tGrade;
    
}

SplitNames(List nameList) {
  
  var namesLessEight = new List();
  var namesEight = new List();
  var namesMoreEight = new List();
  
  String name;
  
    for(var i = 0; i<nameList.length; i++) {
      name=nameList[i].toString();
       
       if (name.length>8) namesMoreEight.add(name);
       if (name.length==8) namesEight.add(name);
       if (name.length<8) namesLessEight.add(name);
       
    }
    
  var nMap = new Map();
  nMap['Names with more than 8 letters'] = namesMoreEight;
  nMap['Names with 8 letters'] = namesEight;
  nMap['Names with less than 8 letters'] = namesLessEight;
  
    
  return nMap;
  
}

MatchTeamsPlayers(Map players) {
  
  int n=0;
  var teamList = players.keys.toList();
  teamList.sort((a,b) => a.compareTo(b));
  
  var newList= new List();
    
    for (var i=0; i<teamList.length; i++) {
      newList.add(teamList[i]);     
      newList.add(players[newList[n]].toString());
      n=n+2;
    }
  
   return newList;
}














