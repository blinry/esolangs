-              Memory layout:
               0 0 0 0 0 0 0 0 (255) 0
               \_____ a _____/   b   c

               a: bits to be calculated
               b: sentinel
               c: cell for user input

[              In an endless loop:
  >,           Read a char to c
  [            As long as it is not 0:
    <<         Move to the leftmost bit
    [-<]       As long as the head is on a 1:
                 Set to 0 and move left
    +          On the first 0: Set to 1
    +[->+]-    Go back to the sentinel
    >-         Decrement our number
  ]
  <<<<<<<<<    Seek to the first digit
  +[-          Until we're back at 255:
               Increment the cell by 48, by
    <++++++++    putting an 8 in the prev. cell
    [            and decrementing our cell by 6
      -          that many times
      >++++++<
    ]
    >.         Print its ASCII value
    [-]        Restore the cell to 0
    >          And go to the next digit
  +]-
]
