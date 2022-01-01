// ignore_for_file: avoid_print

import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;
  int _guessCount = 0;

  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }

  int get guessCount {
    return _guessCount;
  }

}



