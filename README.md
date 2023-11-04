# Assignment - Elapsed Time

For this assignment, you will write a program that takes a start time (in seconds) and an end time (in seconds) and computes the elapsed time. The program will display the elapsed time in `HH:MM:SS` format.

This assignment highlights the use of integer arithmetic using `SUB` and `DIV` instructions.

## Requirements

Given a start time (in seconds) and an end time (in seconds), compute the elapsed time.

Program input is simulated with hard-coded variables. At the beginning of the program, there are two lines that set the input variables to an initial value. These values can be changed to test the program using different input combinations.

```
; Simulated program input
mov [startTimeInSeconds], 10
mov [endTimeInSeconds], 72
```

The elapsed time is the difference between the end time and the start time. For example:

```
                  < elapsed time >
          |------|----------------|-----------|
seconds         10               72
```

- The start time is 10 seconds.
- The end time is 72 seconds.
- The elapsed time is 62 seconds.

After computing the elapsed time, calculate the individual hours, minutes, and seconds components of the elapsed time. Store the component values in the variables named `hours`, `minutes`, and `seconds`. These variables are already defined for you.

For the example above:
- The hours component is `0`.
- The minutes component is `1`.
- The seconds component is `2`.

At the end of the program, the following code has been provided for you. It will print the elapsed time to the console in the correct format.

```
; Display output
lea rcx, elapsedOutputFormat
mov rdx, [hours]
mov r8, [minutes]
mov r9, [seconds]
call PrintString
```

The console output of the example given above would be:

```
Elapsed: 00:01:02
```

## Constraints

- You can assume the inputs (start time and end time) will be valid integer values.
- You can assume the inputs (start time and end time) will be greater than `0`.
- You can assume the start time will be **less than or equal to** the end time.
- You can store the time values and the elapsed time components as 64-bit values. The predefined variables are set as QWORDs.

## Notes

There is a useful time calculator at https://www.calculator.net/time-calculator.html. The `Time Calculator in Expression` section of that page is useful for testing different time inputs. You can use it to verify the accuracy of your program.
