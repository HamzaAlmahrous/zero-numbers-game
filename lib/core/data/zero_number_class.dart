import 'dart:io';
import 'directions.dart';

class ZeroNumberGame {
  int n, m;
  int cost;
  List<List<dynamic>> board;
  List<List<dynamic>>? boardR;
  ZeroNumberGame? parent;

  ZeroNumberGame(
      {required this.n,
      required this.m,
      required this.board,
      required this.cost,
      required this.parent}) {
        boardR = board.map((element) => List.from(element)).toList();
      }

  int getHashCode() {
    return board.toString().hashCode;
  }

  bool equals(ZeroNumberGame zeroNumberGame) {
    if (getHashCode() == zeroNumberGame.getHashCode()) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    board = boardR!.map((element) => List.from(element)).toList();
  }

  factory ZeroNumberGame.copy({required ZeroNumberGame game}) {
    var boardCopy = game.board.map((element) => List.from(element)).toList();
    return ZeroNumberGame(
        n: game.n,
        m: game.m,
        board: boardCopy,
        cost: game.cost,
        parent: game.parent);
  }

  bool move(int i, int j, Directions d) {
    late int toI, toJ;
    switch (d) {
      case Directions.down:
        {
          toI = i + 1;
          toJ = j;
        }
        break;
      case Directions.top:
        {
          toI = i - 1;
          toJ = j;
        }
        break;
      case Directions.left:
        {
          toI = i;
          toJ = j - 1;
        }
        break;
      case Directions.right:
        {
          toI = i;
          toJ = j + 1;
        }
        break;
    }
    if (checkCeil(toI, toJ)) {
      if (board[i][j] == board[toI][toJ]) {
        board[toI][toJ] = 0;
      } else {
        board[toI][toJ] += board[i][j];
      }
      board[i][j] = 0;
      return true;
    } else {
      return false;
    }
  }

  bool canMove(int i, int j, Directions d) {
    late int toI, toJ;
    switch (d) {
      case Directions.down:
        {
          toI = i + 1;
          toJ = j;
        }
        break;
      case Directions.top:
        {
          toI = i - 1;
          toJ = j;
        }
        break;
      case Directions.left:
        {
          toI = i;
          toJ = j - 1;
        }
        break;
      case Directions.right:
        {
          toI = i;
          toJ = j + 1;
        }
        break;
    }
    if (checkCeil(toI, toJ)) {
      return true;
    } else {
      return false;
    }
  }

  bool checkCeil(int i, int j) {
    if (i <= -1 ||
        j <= -1 ||
        i >= n ||
        j >= m ||
        board[i][j] == 0 ||
        board[i][j] == -1) {
      //print("you can't make this move");
      return false;
    } else {
      return true;
    }
  }

  void showZeroNumberGame() {
    // print("ZeroNumberGame Board");
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        stdout.write(board[i][j]);
        stdout.write(" ");
      }
      stdout.write("\n");
    }
  }

  bool checkWin() {
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        if (board[i][j] != 0 && board[i][j] != -1) {
          return false;
        }
      }
    }
    return true;
  }

  bool checkLose() {
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        if (board[i][j] != 0 && board[i][j] != -1) {
          int zero = 0, canBeZero = 0;
          if (i - 1 >= 0) {
            canBeZero++;
            if (board[i - 1][j] == 0 || board[i - 1][j] == -1) zero++;
          }
          if (i + 1 < n) {
            canBeZero++;
            if (board[i + 1][j] == 0 || board[i + 1][j] == -1) zero++;
          }
          if (j - 1 >= 0) {
            canBeZero++;
            if (board[i][j - 1] == 0 || board[i][j-1] == -1) zero++;
          }
          if (j + 1 < m) {
            canBeZero++;
            if (board[i][j + 1] == 0 || board[i][j+1] == -1) zero++;
          }
          if (zero == canBeZero) return true;
        }
      }
    }
    return false;
  }

  List<ZeroNumberGame> getStates() {
    List<ZeroNumberGame> newStates = [];
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        if (board[i][j] == -1) continue;
        for (var d in Directions.values) {
          //print("dd $i $j $d");
          var currentZeroNumberGame = ZeroNumberGame.copy(game: this);
          // currentZeroNumberGame.showZeroNumberGame();
          if (currentZeroNumberGame.move(i, j, d)) {
            currentZeroNumberGame.cost += 1;
            //a*
            currentZeroNumberGame.cost +=
                currentZeroNumberGame.numbersOfTheSameBlockAndDis();
            currentZeroNumberGame.parent = this;
            newStates.add(currentZeroNumberGame);
          }
        }
      }
    }
    return newStates;
  }

  int numbersOfTheSameBlockAndDis() {
    int count = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        int x = board[i][j];
        for (var d in Directions.values) {
          //showZeroNumberGame();
          if (canMove(i, j, d)) {
            late int toI, toJ;
            switch (d) {
              case Directions.down:
                {
                  toI = i + 1;
                  toJ = j;
                }
                break;
              case Directions.top:
                {
                  toI = i - 1;
                  toJ = j;
                }
                break;
              case Directions.left:
                {
                  toI = i;
                  toJ = j - 1;
                }
                break;
              case Directions.right:
                {
                  toI = i;
                  toJ = j + 1;
                }
                break;
            }
            if (x == board[toI][toJ]) {
              count++;
            }
          }
        }
      }
    }
    int result = n * m;
    double f = count / 2;
    result -= f.toInt();
    return result;
  }
}

void playTheGame(ZeroNumberGame game) {
  while (true) {
    game.showZeroNumberGame();
    // print("enter ceil index and the direction you want to move it to:");
    // print("enter i:");
    int? i = int.parse(stdin.readLineSync()!);
    // print("enter j:");
    int? j = int.parse(stdin.readLineSync()!);
    // print("enter direction (t for top) (d for down) (l for left) (r for right):");
    String? dInput = stdin.readLineSync();
    Directions d;
    if (dInput == 't') {
      d = Directions.top;
    } else if (dInput == 'd') {
      d = Directions.down;
    } else if (dInput == 'l') {
      d = Directions.left;
    } else if (dInput == 'r') {
      d = Directions.right;
    } else {
      continue;
    }
    game.move(i, j, d);
    if (game.checkWin()) {
      // print("you win");
      break;
    }
    if (game.checkLose()) {
      // print("LOSER");
      break;
    }
  }
}
