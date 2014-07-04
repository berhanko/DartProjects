
import 'FunctionBase.dart';

void main() {
  
  //print(EmailValidation("deneme@berhan.com"));

  var encodeText = """ Count the number of occurrences of letters in a given sentence. 
                        Discard letters that have counts greater than nine. Discard also 
                        letters that do not have unique counts for the sentence. Use the 
                        rest of letters to encode, with their counts, a given text 
                        (for example, a paragraph) and decode the text back to the 
                        readable version. This may be done for security reasons. """;
  
  var letterText = """Liverpool forward Luis Suarez is a wonderful player but fitting 
in at Barcelona is still far from straightforward. If he does move to Spain, 
do you think he'll fit in seamlessly?""";

 // print(EncodeText(encodeText));

 /*var letsEncode = new TextEncoder(encodeText).Encode();
 print(letsEncode);
 print('\n');
 
 var letsDecode = new TextEncoder(letsEncode).Decode();
  
 print(letsDecode);*/
  
 print(LetterUsage(letterText));
 
  
}
