import 'zero_number_class.dart';

List<List<ZeroNumberGame>> levelsHints = [
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 1,
      m: 3,
      board: [
        [0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 1,
      m: 3,
      board: [
        [0, 3, 3]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 1,
      m: 3,
      board: [
        [1, 2, 3],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      n: 2,
      parent: null,
      m: 3,
      board: [
        [0, 0, 0],
        [-1, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 2,
      parent: null,
      m: 3,
      board: [
        [0, 4, 4],
        [-1, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 2,
      parent: null,
      m: 3,
      board: [
        [1, 3, 4],
        [-1, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 2,
      parent: null,
      m: 3,
      board: [
        [1, 1, 4],
        [-1, 2, -1]
      ],
    ),
  ],
  [
    ZeroNumberGame(
      parent: null,
      cost: 0,
      n: 3,
      m: 3,
      board: [
        [-1, 0, -1],
        [0, 0, 0],
        [-1, 0, -1]
      ],
    ),
    ZeroNumberGame(
      parent: null,
      cost: 0,
      n: 3,
      m: 3,
      board: [
        [-1, 0, -1],
        [0, 5, 0],
        [-1, 5, -1]
      ],
    ),
    ZeroNumberGame(
      parent: null,
      cost: 0,
      n: 3,
      m: 3,
      board: [
        [-1, 1, -1],
        [0, 4, 0],
        [-1, 5, -1]
      ],
    ),
    ZeroNumberGame(
      parent: null,
      cost: 0,
      n: 3,
      m: 3,
      board: [
        [-1, 1, -1],
        [1, 3, 0],
        [-1, 5, -1]
      ],
    ),
    ZeroNumberGame(
      parent: null,
      cost: 0,
      n: 3,
      m: 3,
      board: [
        [-1, 1, -1],
        [1, 2, 1],
        [-1, 5, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [0, 0],
        [0, -1],
        [0, 0],
        [0, -1],
        [0, 0],
        [0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [3, 0],
        [3, -1],
        [0, 0],
        [0, -1],
        [0, 0],
        [0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [2, 1],
        [3, -1],
        [0, 0],
        [0, -1],
        [0, 0],
        [0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [2, 1],
        [3, -1],
        [9, 0],
        [9, -1],
        [0, 0],
        [0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [2, 1],
        [3, -1],
        [5, 4],
        [9, -1],
        [0, 0],
        [0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [2, 1],
        [3, -1],
        [5, 4],
        [9, -1],
        [8, 0],
        [8, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      n: 6,
      m: 2,
      parent: null,
      board: [
        [2, 1],
        [3, -1],
        [5, 4],
        [9, -1],
        [1, 7],
        [8, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 0, 0, 0, -1],
        [0, 0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 12, 0, 0, -1],
        [0, 12, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 1, 11, 0, -1],
        [0, 12, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 1, 10, 0, -1],
        [0, 12, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 1, 1, 9, -1],
        [0, 12, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 1, 1, 9, -1],
        [1, 11, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 1, 1, 9, -1],
        [1, 5, 6, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 1, 1, 9, -1],
        [1, 5, 6, 1, 1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [0, 0, 0, 0],
        [-1, 0, 0, -1],
        [-1, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [0, 0, 0, 0],
        [-1, 0, 0, -1],
        [-1, 22, 22, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [0, 0, 0, 0],
        [-1, 16, 0, -1],
        [-1, 6, 22, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [0, 10, 0, 0],
        [-1, 6, 0, -1],
        [-1, 6, 22, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [4, 6, 0, 0],
        [-1, 6, 0, -1],
        [-1, 6, 22, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [4, 6, 0, 0],
        [-1, 6, 0, -1],
        [-1, 6, 18, 4]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [4, 6, 0, 0],
        [-1, 6, 14, -1],
        [-1, 6, 4, 4]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [4, 6, 8, 0],
        [-1, 6, 6, -1],
        [-1, 6, 4, 4]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 4,
      board: [
        [4, 6, 7, 1],
        [-1, 6, 6, -1],
        [-1, 6, 4, 4],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [0, -1, -1, -1],
        [0, 0, -1, -1],
        [0, 0, 0, -1],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 0, -1, -1],
        [0, 0, 0, -1],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 0, -1, -1],
        [7, 7, 0, -1],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 1, -1, -1],
        [7, 6, 0, -1],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 1, -1, -1],
        [7, 1, 5, -1],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 1, -1, -1],
        [3, 1, 5, -1],
        [4, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 1, -1, -1],
        [3, 1, 5, -1],
        [3, 1, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [1, -1, -1, -1],
        [1, 1, -1, -1],
        [3, 1, 5, -1],
        [3, 1, 1, 1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [0, 0, 0],
        [0, -1, 0],
        [0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [0, 0, 0],
        [9, -1, 0],
        [9, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [5, 0, 0],
        [4, -1, 0],
        [9, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [5, 5, 5],
        [4, -1, 0],
        [9, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [5, 5, 3],
        [4, -1, 2],
        [9, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 3,
      board: [
        [5, 5, 3],
        [4, -1, 2],
        [9, 2, 2],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 0, 0, 0, -1],
        [0, 0, -1, 0, 0],
        [-1, 0, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 0, 0, 0, -1],
        [0, 14, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 0, 0, 0, -1],
        [2, 12, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 10, 0, 0, -1],
        [2, 2, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 0, -1, -1],
        [-1, 2, 8, 0, -1],
        [2, 2, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 7, 0, -1],
        [2, 2, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 7, 0, -1],
        [2, 2, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 0, 0],
        [-1, 14, 0, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 0, 0],
        [-1, 2, 12, 0, -1],
        [-1, -1, 0, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 0, 0],
        [-1, 2, 7, 0, -1],
        [-1, -1, 5, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 0, 0],
        [-1, 2, 1, 6, -1],
        [-1, -1, 5, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 5, 0],
        [-1, 2, 1, 1, -1],
        [-1, -1, 5, -1, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [-1, -1, 1, -1, -1],
        [-1, 2, 1, 6, -1],
        [2, 2, -1, 4, 1],
        [-1, 2, 1, 1, -1],
        [-1, -1, 5, -1, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [0, 0, 0, 0],
        [0, 0, -1, 0],
        [0, -1, -1, 0],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 8, 0, 0],
        [0, 0, -1, 0],
        [0, -1, -1, 0],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 8, 0, 0],
        [0, 0, -1, 16],
        [0, -1, -1, 16],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 8, 0, 11],
        [0, 0, -1, 5],
        [0, -1, -1, 16],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 8, 3, 8],
        [0, 0, -1, 5],
        [0, -1, -1, 16],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [0, 7, -1, 5],
        [0, -1, -1, 16],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [0, -1, -1, 16],
        [0, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [0, -1, -1, 3],
        [0, 0, 0, 13]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [0, -1, -1, 3],
        [0, 0, 11, 2]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [0, -1, -1, 3],
        [0, 9, 2, 2]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [0, -1, -1, 3],
        [7, 2, 2, 2]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [8, 1, 3, 8],
        [4, 3, -1, 5],
        [4, -1, -1, 3],
        [3, 2, 2, 2],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 0, -1, 0, -1],
        [0, 0, -1, 0, 0],
        [0, 0, -1, 0, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 0, -1, 0, -1],
        [0, 19, -1, 0, 0],
        [0, 19, -1, 0, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 0, -1, 0, -1],
        [9, 10, -1, 0, 0],
        [0, 19, -1, 0, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 0, -1],
        [9, 9, -1, 0, 0],
        [0, 19, -1, 0, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 0, -1],
        [9, 9, -1, 8, 0],
        [0, 19, -1, 8, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 6, 0],
        [0, 19, -1, 8, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 4],
        [0, 19, -1, 8, 0],
        [-1, 0, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 4],
        [0, 11, -1, 8, 0],
        [-1, 8, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 4],
        [3, 8, -1, 8, 0],
        [-1, 8, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 1],
        [3, 8, -1, 8, 3],
        [-1, 8, 0, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 1],
        [3, 8, -1, 8, 3],
        [-1, 3, 5, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 5,
      board: [
        [-1, 1, -1, 2, -1],
        [9, 9, -1, 2, 1],
        [3, 8, -1, 1, 3],
        [-1, 3, 5, 7, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [0, 0, 0, -1],
        [0, -1, 0, 0],
        [0, 0, -1, 0],
        [-1, 0, 0, 0],
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 4,
      board: [
        [17, 17, 0, -1],
        [0, -1, 0, 0],
        [0, 0, -1, 0],
        [-1, 0, 0, 0]
      ],
    ),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [17, 1, 16, -1],
      [0, -1, 0, 0],
      [0, 0, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 16, -1],
      [15, -1, 0, 0],
      [0, 0, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [15, -1, 14, 0],
      [0, 0, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [15, -1, 5, 9],
      [0, 0, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [2, -1, 5, 9],
      [13, 0, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [2, -1, 5, 9],
      [5, 8, -1, 0],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [2, -1, 5, 8],
      [5, 8, -1, 1],
      [-1, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [2, -1, 5, 8],
      [5, 1, -1, 1],
      [-1, 7, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 4, board: [
      [2, 1, 2, -1],
      [2, -1, 5, 8],
      [5, 1, -1, 1],
      [-1, 2, 5, 0]
    ]),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 6,
      board: [
        [0, 0, -1, -1, -1, -1],
        [0, 0, 0, 0, -1, -1],
        [-1, -1, 0, 0, 0, 0],
        [-1, -1, -1, -1, 0, 0]
      ],
    ),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 9, -1, -1, -1, -1],
      [0, 0, 0, 0, -1, -1],
      [-1, -1, 0, 0, 0, 0],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [0, 8, 0, 0, -1, -1],
      [-1, -1, 0, 0, 0, 0],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 0, 0, -1, -1],
      [-1, -1, 0, 0, 0, 0],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 7, 7, -1, -1],
      [-1, -1, 0, 0, 0, 0],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 3, 7, -1, -1],
      [-1, -1, 4, 0, 0, 0],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 3, 7, -1, -1],
      [-1, -1, 4, 0, 10, 10],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 3, 7, -1, -1],
      [-1, -1, 4, 9, 1, 10],
      [-1, -1, -1, -1, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 4, m: 6, board: [
      [9, 1, -1, -1, -1, -1],
      [7, 1, 3, 7, -1, -1],
      [-1, -1, 4, 9, 1, 4],
      [-1, -1, -1, -1, 0, 6]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 4,
      m: 6,
      board: [
        [9, 1, -1, -1, -1, -1],
        [7, 1, 3, 7, -1, -1],
        [-1, -1, 4, 9, 1, 4],
        [-1, -1, -1, -1, 2, 4],
      ],
    ),
  ],
  [
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 7,
      m: 4,
      board: [
        [-1, -1, 0, -1],
        [-1, -1, 0, -1],
        [0, -1, 0, -1],
        [0, 0, 0, 0],
        [0, -1, 0, -1],
        [-1, -1, 0, -1],
        [-1, -1, 0, -1]
      ],
    ),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 7,
      m: 4,
      board: [
        [-1, -1, 0, -1],
        [-1, -1, 0, -1],
        [0, -1, 0, -1],
        [0, 22, 22, 0],
        [0, -1, 0, -1],
        [-1, -1, 0, -1],
        [-1, -1, 0, -1]
      ],
    ),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 0, -1],
      [-1, -1, 0, -1],
      [0, -1, 0, -1],
      [0, 22, 13, 9],
      [0, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 0, -1],
      [-1, -1, 0, -1],
      [0, -1, 4, -1],
      [0, 22, 9, 9],
      [0, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 0, -1],
      [-1, -1, 3, -1],
      [0, -1, 1, -1],
      [0, 22, 9, 9],
      [0, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 1, -1],
      [-1, -1, 2, -1],
      [0, -1, 1, -1],
      [0, 22, 9, 9],
      [0, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 1, -1],
      [-1, -1, 2, -1],
      [0, -1, 1, -1],
      [14, 8, 9, 9],
      [0, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 1, -1],
      [-1, -1, 2, -1],
      [0, -1, 1, -1],
      [13, 8, 9, 9],
      [1, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 1, -1],
      [-1, -1, 2, -1],
      [7, -1, 1, -1],
      [6, 8, 9, 9],
      [1, -1, 0, -1],
      [-1, -1, 0, -1],
      [-1, -1, 0, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 7, m: 4, board: [
      [-1, -1, 1, -1],
      [-1, -1, 2, -1],
      [7, -1, 1, -1],
      [6, 8, 9, 9],
      [1, -1, 0, -1],
      [-1, -1, 5, -1],
      [-1, -1, 5, -1]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 7,
      m: 4,
      board: [
        [-1, -1, 1, -1],
        [-1, -1, 2, -1],
        [7, -1, 1, -1],
        [6, 8, 9, 9],
        [1, -1, 4, -1],
        [-1, -1, 1, -1],
        [-1, -1, 5, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 0, -1, 0],
      [0, 0, 0, 0, 0, 0],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 0, -1, 0],
      [0, 0, 26, 26, 0, 0],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 0],
      [0, 0, 26, 21, 0, 0],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 0],
      [0, 0, 26, 12, 9, 0],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 0],
      [0, 0, 26, 12, 2, 7],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [0, 0, 26, 12, 2, 3],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [0, 17, 9, 12, 2, 3],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [9, 8, 9, 12, 2, 3],
      [-1, -1, -1, 0, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [9, 8, 9, 5, 2, 3],
      [-1, -1, -1, 7, 0, -1],
      [-1, -1, -1, 0, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [9, 8, 9, 5, 2, 3],
      [-1, -1, -1, 4, 0, -1],
      [-1, -1, -1, 3, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 6, board: [
      [-1, -1, -1, 5, -1, 4],
      [9, 8, 9, 5, 2, 3],
      [-1, -1, -1, 3, 1, -1],
      [-1, -1, -1, 3, -1, -1],
      [-1, -1, -1, 0, -1, -1]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 6,
      board: [
        [-1, -1, -1, 5, -1, 4],
        [9, 8, 9, 5, 2, 3],
        [-1, -1, -1, 3, 1, -1],
        [-1, -1, -1, 2, -1, -1],
        [-1, -1, -1, 1, -1, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [0, -1, 0, -1, -1],
      [0, -1, 0, 0, 0],
      [0, -1, -1, -1, 0],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [0, -1, 0, -1, -1],
      [0, -1, 0, 0, 0],
      [12, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [0, -1, 0, -1, -1],
      [11, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [10, -1, 0, -1, -1],
      [1, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [9, 0, 0, 0, 0],
      [1, -1, 0, -1, -1],
      [1, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 0, 0, 0],
      [1, -1, 0, -1, -1],
      [1, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 5, 0],
      [1, -1, 0, -1, -1],
      [1, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 0, -1, -1],
      [1, -1, 0, 0, 0],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 0, -1, -1],
      [1, -1, 0, 11, 11],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 0, -1, -1],
      [1, -1, 10, 1, 11],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 1, -1, -1],
      [1, -1, 9, 1, 11],
      [1, -1, -1, -1, 0],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 1, -1, -1],
      [1, -1, 9, 1, 6],
      [1, -1, -1, -1, 5],
      [12, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 1, -1, -1],
      [1, -1, 9, 1, 6],
      [1, -1, -1, -1, 5],
      [1, 11, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 1, -1, -1],
      [1, -1, 9, 1, 6],
      [1, -1, -1, -1, 5],
      [1, 1, 10, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [4, 5, 5, 4, 1],
      [1, -1, 1, -1, -1],
      [1, -1, 9, 1, 6],
      [1, -1, -1, -1, 5],
      [1, 1, 1, 9, 0]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [4, 5, 5, 4, 1],
        [1, -1, 1, -1, -1],
        [1, -1, 9, 1, 6],
        [1, -1, -1, -1, 5],
        [1, 1, 1, 5, 4],
      ],
    ),
  ],
  [
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 0, 0, -1],
      [0, 0, 0, 0, 0],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 0, 0, -1],
      [0, 18, 18, 0, 0],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 0, -1],
      [0, 18, 14, 0, 0],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 0, -1],
      [0, 18, 4, 10, 0],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 0, -1],
      [0, 18, 4, 7, 3],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 4, -1],
      [0, 18, 4, 3, 3],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 4, -1],
      [4, 14, 4, 3, 3],
      [-1, 0, 0, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 3, m: 5, board: [
      [-1, -1, 4, 4, -1],
      [4, 4, 4, 3, 3],
      [-1, 10, 0, -1, -1]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 3,
      m: 5,
      board: [
        [-1, -1, 4, 4, -1],
        [4, 4, 4, 3, 3],
        [-1, 6, 4, -1, -1],
      ],
    ),
  ],
  [
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [-1, 0, 0, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 0, 0, 0, 0],
      [-1, 13, 13, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [0, 8, 0, 0, 0],
      [-1, 5, 13, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 6, 0, 0, 0],
      [-1, 5, 13, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 0, 0],
      [-1, 5, 13, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 3, 3],
      [-1, 5, 13, 0, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 13, 1, -1],
      [-1, -1, 0, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 12, -1, -1],
      [-1, 0, 0, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 0, 7, 0, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 0, 6, 1, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 5, 1, 1, -1],
      [0, 0, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 1, 1, 1, -1],
      [0, 4, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 1, 1, 1, -1],
      [1, 3, 0, 0, 0]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 5, m: 5, board: [
      [2, 5, 1, 2, 3],
      [-1, 5, 1, 1, -1],
      [-1, -1, 5, -1, -1],
      [-1, 1, 1, 1, -1],
      [1, 1, 2, 0, 0]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 5,
      m: 5,
      board: [
        [2, 5, 1, 2, 3],
        [-1, 5, 1, 1, -1],
        [-1, -1, 5, -1, -1],
        [-1, 1, 1, 1, -1],
        [1, 1, 2, 1, 1],
      ],
    ),
  ],
  [
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 0, -1, -1],
      [-1, 0, -1, 0, -1, -1],
      [0, 0, 0, 0, 0, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 0, -1, -1],
      [-1, 0, -1, 0, -1, -1],
      [0, 0, 0, 12, 12, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 0, -1, -1],
      [-1, 0, -1, 5, -1, -1],
      [0, 0, 0, 7, 12, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 0, -1, 1, -1, -1],
      [0, 0, 0, 7, 12, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 0, -1, 1, -1, -1],
      [11, 0, 0, 7, 12, 0],
      [11, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 0, -1, 1, -1, -1],
      [1, 10, 0, 7, 12, 0],
      [11, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 0, -1, 1, -1, -1],
      [1, 7, 3, 7, 12, 0],
      [11, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 7, 12, 0],
      [11, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 7, 1, 11],
      [11, -1, -1, 0, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 1, 1, 11],
      [11, -1, -1, 6, -1, 0],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 1, 1, 1],
      [11, -1, -1, 6, -1, 10],
      [0, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 1, 1, 1],
      [1, -1, -1, 6, -1, 10],
      [10, -1, -1, 0, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 1, 1, 1],
      [1, -1, -1, 1, -1, 10],
      [10, -1, -1, 5, -1, 0],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(cost: 0, parent: null, n: 6, m: 6, board: [
      [-1, -1, -1, 4, -1, -1],
      [-1, 4, -1, 1, -1, -1],
      [1, 3, 3, 1, 1, 1],
      [1, -1, -1, 1, -1, 4],
      [10, -1, -1, 5, -1, 6],
      [0, -1, -1, -1, -1, -1]
    ]),
    ZeroNumberGame(
      cost: 0,
      parent: null,
      n: 6,
      m: 6,
      board: [
        [-1, -1, -1, 4, -1, -1],
        [-1, 4, -1, 1, -1, -1],
        [1, 3, 3, 1, 1, 1],
        [1, -1, -1, 1, -1, 4],
        [9, -1, -1, 5, -1, 6],
        [1, -1, -1, -1, -1, -1],
      ],
    ),
  ],
];
