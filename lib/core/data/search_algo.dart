// ignore_for_file: unused_local_variable

import 'dart:collection';
import 'stack_impl.dart';
import 'zero_number_class.dart';
// ignore: depend_on_referenced_packages, deprecated_member_use
import 'package:collection/priority_queue.dart';

class SearchAlgo {
  // get path

  static void printPath(ZeroNumberGame game, int num) {
    // ignore: unnecessary_null_comparison
    if (game.parent == null) {
      // print("number of stat in path: $num");
      return;
    } else {
      game.showZeroNumberGame();
      // printPath(game.parent!, num + 1);
    }
  }

  // DFS

  static void dfs(ZeroNumberGame game) {
    HashSet visited = HashSet();
    Stack<ZeroNumberGame> stack = Stack();
    stack.push(game);

    int numberOfStates = 0;
    while (stack.isNotEmpty) {
      numberOfStates++;
      ZeroNumberGame topGame = stack.pop();

      if (!visited.contains(topGame.getHashCode())) {
        visited.add(topGame.getHashCode());
      }

      for (var x in topGame.getStates()) {
        if (x.checkWin()) {
          // print("win");
          x.showZeroNumberGame();

          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // print("number of state: $numberOfStates");
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // printPath(x, 0);
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          
          return;
        } else if (x.checkLose()) {
          continue;
        }
        if (!visited.contains(x.getHashCode())) {
          stack.push(x);
        }
      }
    }
  }

  // BFS

  static void bfs(ZeroNumberGame game) {
    HashSet visited = HashSet();
    Queue<ZeroNumberGame> queue = Queue<ZeroNumberGame>();
    queue.add(game);

    int numberOfStates = 0;

    while (queue.isNotEmpty) {
      numberOfStates++;
      var parent = queue.removeFirst();

      if (!visited.contains(parent.getHashCode())) {
        visited.add(parent.getHashCode());
      }

      for (var x in parent.getStates()) {
        if (x.checkWin()) {
          // print("win");
          x.showZeroNumberGame();

          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // print("number of state: $numberOfStates");
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // printPath(x, 0);
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');

          return;
        } else if (x.checkLose()) {
          continue;
        } else {
          if (!visited.contains(x.getHashCode())) {
            queue.add(x);
          }
        }
      }
    }
  }

  // Dijkstra UCS

  static void uniformCostSearch(ZeroNumberGame game) {
    HashSet visited = HashSet();
    HeapPriorityQueue<ZeroNumberGame> queue = HeapPriorityQueue((a, b) {
      if (a.cost > b.cost) {
        return 1;
      }
      return -1;
    });
    queue.add(game);

    int numberOfStates = 0;

    while (queue.isNotEmpty) {
      numberOfStates++;
      var parent = queue.removeFirst();
      if (!visited.contains(parent.getHashCode())) {
        visited.add(parent.getHashCode());
      }

      for (var x in parent.getStates()) {
        if (x.checkWin()) {
          // print("win");
          x.showZeroNumberGame();

          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // print("number of state: $numberOfStates");
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // printPath(x, 0);
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');

          return;
        } else if (x.checkLose()) {
          continue;
        } else {
          if (!visited.contains(x.getHashCode())) {
            queue.add(x);
          }
        }
      }
    }
  }
  
  // A Star

  static void aStarSearch(ZeroNumberGame game) {
    HashSet visited = HashSet();
    HeapPriorityQueue<ZeroNumberGame> queue = HeapPriorityQueue((a, b) {
      if (a.cost > b.cost) {
        return 1;
      }
      return -1;
    });
    queue.add(game);

    int numberOfStates = 0;

    while (queue.isNotEmpty) {
      numberOfStates++;
      var parent = queue.removeFirst();
      if (!visited.contains(parent.getHashCode())) {
        visited.add(parent.getHashCode());
      }

      for (var x in parent.getStates()) {
        if (x.checkWin()) {
          // print("win");
          x.showZeroNumberGame();

          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // print("number of state: $numberOfStates");
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
          // printPath(x, 0);
          // print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');

          return;
        } else if (x.checkLose()) {
          continue;
        } else {
          if (!visited.contains(x.getHashCode())) {
            queue.add(x);
          }
        }
      }
    }
  }
}
