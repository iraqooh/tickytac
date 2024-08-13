# Tic-Tac-Toe Game

## Features

- 3x3 Game Board: The game board is represented by a 2D array (`char board[3][3]`).
- Player Selection: Two players (X and O) are represented using an enum (`Player { X, O }`).
- Turn-based Gameplay: Players alternate turns, with the current player tracked by a variable (`currentPlayer`).
- Win/Loss/Draw Detection: The game checks for a winner or a draw after each move by evaluating rows, columns, and diagonals.
- User Input: Players make moves by entering row and column numbers via the command line.
- Game Restart: Players have the option to restart the game, which resets the board and starts a new game.

## How to Play

1. Clone the repository:
    ```git clone https://github.com/iraqooh/tickytac.git```

2. Navigate to the project directory:
    ```cd tickytac```

3. Compile the game using the following GCC commands:

    ### For Unix-like systems (Linux/MacOS):
    ```
    # Create necessary directories
    mkdir -p obj, bin

    # Compile the source files into object files
    gcc -Wall -Isrc -c src/tickytac.c -o obj/tickytac.o
    gcc -Wall -Isrc -c src/main.c -o obj/main.o

    # Link the object files to create the executable
    gcc obj/tickytac.o obj/main.o -o bin/tickytac
    ```

    ### For Windows (Git Bash, Cygwin, or similar):
    ```bash
    # Create necessary directories
    mkdir -p obj, bin

    # Compile the source files into object files
    gcc -Wall -Isrc -c src/tickytac.c -o obj/tickytac.o
    gcc -Wall -Isrc -c src/main.c -o obj/main.o

    # Link the object files to create the executable
    gcc obj/tickytac.o obj/main.o -o bin/tickytac.exe
    ```

4. Run the game: ```./bin/tickytac``` on Linux/MacOS or ```bin\tickytac``` on Windows.

5. Follow the on-screen instructions to play the game. Enter the row and column numbers to make a move.

## Running Unit Tests

1. Compile the unit tests using the following GCC commands:
    ```bash
    # Create necessary directories
    mkdir -p tests/obj tests/bin

    # Compile the test source file into an object file
    gcc -Wall -Isrc -c tests/src/test_tickytac.c -o tests/obj/test_tickytac.o

    # Link the object files to create the test executable
    gcc obj/tickytac.o tests/obj/test_tickytac.o -o tests/bin/test_tickytac
    ```

2. Run the unit tests:
    ```bash
    ./tests/bin/test_tickytac
    ```

## Future Enhancements

- Implement an AI player to play against the computer.
- Add a graphical user interface (GUI) version of the game.
- Add more customization options for the game board size.

## License

This project is licensed under the GNU Public License.

#### [More Projects Like This](https://github.com/iraqooh?tab=repositories)
