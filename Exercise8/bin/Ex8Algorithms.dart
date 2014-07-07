import 'dart:math';

Sorting(){
  
  var associations, members;
  
  associations = [
    {"name": "IS", "description": "Information Systems"},
    {"name": "CS", "description": "Computer Science"}
  ];

  members = [
    {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
    {"associationName": "CS", "firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
    {"associationName": "IS", "firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"}
  ];

  
  members.sort((a,b) => a["lastName"].compareTo(b["lastName"]));
  
  
return members;
  
}

SpecificList(String init) {

  var associations, members;
  associations = [
    {"name": "IS", "description": "Information Systems"},
    {"name": "CS", "description": "Computer Science"}
  ];

  members = [
    {"associationName": "IS", "firstName": "Dzenan", "lastName": "Ridjanovic", "email": "dr@gmail.com"},
    {"associationName": "CS", "firstName": "David", "lastName": "Curtis", "email": "dc@gmail.com"},
    {"associationName": "IS", "firstName": "Robert", "lastName": "Nelson", "email": "rn@gmail.com"}
  ];
 
  var selected = new List();
    for (var i=0; i<members.length; i++) {
      if (members[i]["firstName"].toString().startsWith(init)){
        selected.add(members[i]);
      }  
    }
  
  
  return selected;
}


AnalyzeMaps(List<List<int>> matrix) {
  
  var mapCount=0;
  var tempMapCoordinates = new List();
  bool isMap=false;
  var Groups = new List();
  
    //Scan for all 1s and add their matrix coordinates to "tempMapCoordinates"
  
    for (var i = 0; i<matrix.length; i++) {
      for (var j=0; j<matrix[i].length; j++) {
         
        //If first "1" found, start adding coordinates
        if (matrix[i][j] == 1) {
          tempMapCoordinates.add([i, j]);

          }
        }               
      }
    
    //Calculate distances between all coordinates, Add connected coordinates to "Combinations"

    var n=0;
    var distance;
    var Combinations = new List();
    var iterationsLeft=tempMapCoordinates.length;
    
 //ITERATE MATRIX UNTIL ALL 1s ARE INSPECTED AND GROUPED
    
 while (iterationsLeft > 0) {  
   
    //Initialize
    Combinations.add(tempMapCoordinates[0]);

    //ITERATE FRONT TO BACK
    for (var i = 0; i<tempMapCoordinates.length; i++) {
      for (var j=i+1; j<tempMapCoordinates.length; j++) {

        //Calculate distances between "1" cells & add connected cells to Combinations
        //where distance^2 is less than or equal to 2.
        //Remove added connections from the general coordinate list "tempMapCoordinates"
        
          n=0;
          while (n<Combinations.length) {
             distance=pow(tempMapCoordinates[j][0]-Combinations[n][0],2)+pow(tempMapCoordinates[j][1]-Combinations[n][1],2); 
               if (distance<=2 && !Combinations.contains(tempMapCoordinates[j])){
                 Combinations.add(tempMapCoordinates[j]);
                 tempMapCoordinates.remove(tempMapCoordinates[j]);
                 break;
               }  
           n++;    
         } 
      } 
    }
    
    //ITERATE BACK TO FRONT
    
    for (var i = tempMapCoordinates.length-1; i>=0; i--) {
      for (var j = tempMapCoordinates.length-1; j>i; j--) {

         //Calculate distances between "1" cells & add connected cells to Combinations
         //where distance^2 is less than or equal to 2.
         //Remove added connections from the general coordinate list "tempMapCoordinates"
         
          n=0;
          while (n<Combinations.length) {
             distance=pow(tempMapCoordinates[j][0]-Combinations[n][0],2)+pow(tempMapCoordinates[j][1]-Combinations[n][1],2); 
               if (distance<=2 && !Combinations.contains(tempMapCoordinates[j])){
                 Combinations.add(tempMapCoordinates[j]);
                 tempMapCoordinates.remove(tempMapCoordinates[j]);                 
                 break;
               }  
           n++;    
         } 
      } 
    }

    //Add connected coordinates to "Groups" and clear Combinations
    if (Combinations.isNotEmpty) {
      var CString = Combinations.join('-');
      Groups.add('Group: $CString');
      Combinations.clear();
      }
    
    tempMapCoordinates.removeAt(0);
 
    iterationsLeft=tempMapCoordinates.length;
 } //End Of Complete tempMapCoordinates Iteration 
    return Groups;
}
