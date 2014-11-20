+>+>+>+>+>+>+>+>>+  Create this memory layout:
                      1 1 1 1 1 1 1 1 0 (1)
[                   Start endless loop
    <,              Read a char to empty field
    [               As long as it is not 0
        <
        -[<-]       As long as the pointer is
                      on a 2: decrement and
                      move left
        ++          On the first 1: increment
        [>]<<-      Go back to our number and
                    decrement it
    ]
    <[<]>           Seek to the first digit
    [
        +++++ +++++ Increase the digit by 47
        +++++ +++++   and print it's ASCII
        +++++ +++++   value
        +++++ +++++
        +++++ ++.
        [-]+>       Restore the cell to 1
                      and go to the next digit
    ]
    >               Go to the last 1
]
