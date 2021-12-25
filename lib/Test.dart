import 'dart:io';
import 'dart:math';
void main(){
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  var guesses = 0;
  stdout.write('\n');
  stdout.write('╔▲▼▲▼▲▼▲▼▲▼▲▼▲▼GUESS THE NUMBER▼▲▼▲▼▲▼▲▼▲▼▲▼▲\n');
  stdout.write('╟────────────────────────────────────────────\n');
  do{
    stdout.write('║Please guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer){
      guesses+=1;
      print('║ ➜ ' + guess.toString() + ' is CORRECT ✔, total guesses: ' + guesses.toString() + " ✔");
      stdout.write('╟────────────────────────────────────────────\n');
      print('╚═❤❤❤❤❤❤❤❤❤❤THE END❤❤❤❤❤❤❤❤❤❤═══');
      break;
    }
    else {
      if (guess != null) {
        if (guess < answer) {
          print('║ ➜ ' + guess.toString() + ' is TOO LOW!' + ' ▼');
          stdout.write('╟────────────────────────────────────────────\n');
          guesses += 1;
        }
        else if (guess > answer) {
          print('║ ➜ ' + guess.toString() + ' is TOO HIGH!' + ' ▲');
          stdout.write('╟────────────────────────────────────────────\n');
          guesses += 1;
        }
      }
    }
  }while(true);
}