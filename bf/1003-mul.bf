# BrainF*ck Script to multiply two numbers
# Result has to be less than 10 (a single digit number)
# given example 42: 4 will be in block #1 2 will be in block #2
# block 0 will store the result
# block 1 will hold the value to multiply
# block 2 will hold the amount of times to multiply
# the result of an input of 42 will output the result of 4*2
# read into block 1 and 2
# subtract 48 from each: '0'
# loop while block 2 != 0 adding the value of block 1 to block 0 every time
# BLOCK 0	BLOCK 1		BLOCK 2		BLOCK 3 	BLOCK4
# 0		4		1		0 		
,[>,]   Read two digits from stdin and store them in cells 1 and 2
<       Move to cell 1
[       Loop while cell 1 is not zero
    >   Move to cell 2
    [   Loop while cell 2 is not zero
        -   Subtract 1 from cell 2
        >   Move to cell 3
        +   Add 1 to cell 3
        <<  Move to cell 2
    ]
    >   Move to cell 1
    -   Subtract 1 from cell 1
    <<  Move to cell 2
]
>       Move to cell 3
.       Print the result
