#include "tickytac.h"
#include <stdio.h>

int main() {
    Player currentPlayer = X;
    char board[3][3];
    int gameStatus;

    initializeBoard(board);

    do {
        printBoard(board);
        playerMove(board, currentPlayer);
        gameStatus = checkWinner(board);

        if (gameStatus == 0) {
            currentPlayer = (currentPlayer == X) ? O : X;
        }
    } while (gameStatus == 0);

    printBoard(board);

    if (gameStatus == 1) {
        printf("Player %c wins!\n", (currentPlayer == X) ? 'X' : 'O');
    } else {
        printf("The game is a draw!\n");
    }

    return 0;
}
