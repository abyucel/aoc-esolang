# Ya like jazz?

See [BeeScript](https://esolangs.org/wiki/BeeScript).

I ignored the whole deal with the `AVIATE` instruction and the interaction with the movie script. I don't like jazz that much anyway.

This solution is by no means optimized. It works and that's enough for me.

## How to run

Create your `input.txt`. The makefile will set up everything else.

```sh
make part1
make part2
```

## Language reference

| Instruction | Description                                                                         |
| ----------- | ----------------------------------------------------------------------------------- |
| AVIATE n    | Pushes the ascii code of the nth character of the bee movie script                  |
| BEE         | Duplicates the top value of the stack                                               |
| BLACK       | Pops the top value of the stack and prints it as an ascii character                 |
| BARRY       | Pops A and then B from the stack and pushes B - A to the stack                      |
| FLY n       | Pops the top of the stack, if it is non-zero this instruction jumps to the nth line |
| ROTATE      | Removes the bottom value of the stack and pushes it to the top                      |
| ROTAT       | Pops the top of the stack and pushes it to the bottom                               |
| YELLOW      | Takes one character of input and pushes it's ascii code to the stack                |

### Extra instruction

I didn't want to implement a bunch of math and string utilities from scratch, so I cheated a little by implementing a `STK` instruction instead.

| Instruction | Description              |
| ----------- | ------------------------ |
| STK         | Prints the current stack |

## Snippets

```beescript
# Push 0
AVIATE 0
BEE
BARRY

# Push 1
AVIATE 59
AVIATE 13
BARRY

# Push -1
AVIATE 13
AVIATE 59
BARRY
```
