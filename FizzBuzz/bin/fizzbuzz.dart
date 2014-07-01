void main() {
var mod3, mod5, mod15;
  
  for (var i = 1; i<=100; i++) {
    mod3 = i % 3;
    mod5 = i % 5;
    mod15 = i % 15;
      if(mod15==0) {
        print('FizzBuzz');
      
      }else if(mod5==0) {
        print('Buzz');        
      
      }else if(mod3==0) {
        print('Fizz');
      
      }else {
        print(i);
      }
    
  }

}
