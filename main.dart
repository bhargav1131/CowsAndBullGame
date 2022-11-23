import 'dart:math';
import 'dart:io';

void main()
{
final random = new Random();
dynamic randomNumber = random.nextInt(100).toString(); // from 0 to 99 included
// print("Generated Random Number Between 0 to 99: $randomNumber");

var cow = 0, bull = 0;
int attempts = 0;


while(true){
    stdout.writeln("\nGuess a number between 0-100 and get a cow, otherwise a healthy bull :)");
    dynamic input = stdin.readLineSync();
    attempts++;

    // conditions to check if game is over
    if (randomNumber == input){
      print('Perfect ! You took $attempts attempts to complete the game');
      break;
    }
    else if(input.length != randomNumber.length){
      print("Wrong input. Please enter a valid 2-digit number");
      continue;
    }
    
  /* increases the cow if a digit is in the same index, otherwise increass the bull*/
    for(var i=0; i<randomNumber.length; i++){
      if(input[i] == randomNumber[i]){
        cow++;
      }
      else if(randomNumber.contains(input[i])){
        bull ++;
      }
    }

  print("\nAttempts: $attempts \nCows gained: $cow \nBulls gained: $bull");  
  }

}