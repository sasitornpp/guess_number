import 'dart:io' show stdin, stdout;
import 'game.dart';
import 'dart:io';

void main() {

  print('┎────────────────────────────────────────────');
  print('┃               Guess The Number              ');
  print('┃────────────────────────────────────────────');
  dynamic check;


    for (;;) {
      var game = Game();
      while (true) {
        stdout.write(' ┃ Guess The Number Between 1 To 100 : ');
        var input = stdin.readLineSync();
        var guess = int.tryParse(input!);
        if (guess == null) {
          continue;
        }

        game.addcount();

        var ans = game.doguess(guess);
        if (ans == 1) {
          print('┃ ➾ $guess is TOO HIGH! ⇑');

          print('┃────────────────────────────────────────────');
        } else if (ans == -1) {
          print('┃ ➾ $guess is TOO LOW! ⇓');

          print('┃────────────────────────────────────────────');
        } else {
          var count = game.getcount();
          print('┃➾ $guess is CORRECT ✨ , Total guesses : $count');

          print('┃────────────────────────────────────────────');
          break;
        }
      }
      while (true) {
        stdout.write('┃ PLay Again ? (Y/N) :');
        check = stdin.readLineSync();
        if (check == 'n' || check == 'N') {
          break;
        } else if (check == 'y' || check == 'Y') {
          break;
        } else {
          continue;
        }
      }
      if (check == 'n' || check == 'N') {
        break;
      } else if (check == 'y' || check == 'Y') {
        continue;
      }
    }


    print('┃                 THE END                    ');
    print('┃────────────────────────────────────────────');
  }
  Game() {
}
