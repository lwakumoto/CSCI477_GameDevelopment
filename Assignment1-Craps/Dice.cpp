//
// Created by Luke Wakumoto on 1/15/2022.
//

#include <string>
#include <iostream>
#include <ctime>
#include "Dice.h"

Dice::Dice() {
    srand(std::time(0));

}

int Dice::rollDiceSum(int numDice) {

    int sum = 0;
    for (int i = 0; i < numDice; i ++){
        int randNum = rand()%6 + 1;
       // _drawDice(randNum);
        sum += randNum;
    }

    return sum;
}

void Dice::_drawDice(int numPips) {
    std::cout << "+---+---+---+" << std::endl;
    for(int i = 0; i < 9; i ++){
        if (_diceFormat(numPips)[i] == '0'){
            std::cout << "| " << ' ' << " ";
        }
        else{
            std::cout << "| " << 'O' << " ";
        }

        if ((i+1)%3 == 0 && i != 0){
            std::cout << "|" << std::endl;
            std::cout << "+---+---+---+" << std::endl;
        }

    }
}

std::string Dice::_diceFormat(int numPips) {

    switch(numPips){
        case 1:
            return "000"
                   "010"
                   "000";
        case 2:
            return "001"
                   "000"
                   "100";
        case 3:
            return "001"
                   "010"
                   "100";
        case 4:
            return "101"
                   "000"
                   "101";
        case 5:
            return "101"
                   "010"
                   "101";
        case 6:
            return "101"
                   "101"
                   "101";
        default:
            return "111"
                   "111"
                   "111";
    }
}
