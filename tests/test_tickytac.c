#include "tickytac.h"
#include <assert.h>
#include <stdio.h>

void testInitializeBoard() {
    char board[3][3];
    initializeBoard(board);

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            assert(board[i][j] == ' ');
        }
    }
    printf("testInitializeBoard passed.\n");
}

void testCheckWinner() {
    char board[3][3] = {
        {'X', 'X', 'X'},
        {' ', 'O', 'O'},
        {' ', ' ', ' '}
    };
    assert(checkWinner(board) == 1);
    printf("testCheckWinner passed.\n");
}

int main() {
    testInitializeBoard();
    testCheckWinner();
    return 0;
}
