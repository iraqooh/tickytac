#ifndef TIC_TAC_TOE_H
#define TIC_TAC_TOE_H

typedef enum {
    X, O
} Player;

void initializeBoard(char board[3][3]);
void printBoard(char board[3][3]);
void playerMove(char board[3][3], Player player);
int checkWinner(char board[3][3]);

#endif