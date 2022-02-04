//
// Created by Luke Wakumoto on 1/15/2022.
//

#ifndef CSCI447_GAMEDEVELOPMENT_DICE_H
#define CSCI447_GAMEDEVELOPMENT_DICE_H
class Dice{
public:
    Dice();
    int rollDiceSum(int numDice);

private:
    void _drawDice(int numPips);
    std::string _diceFormat(int numPips); // returns the format of a die number, dictating how it should be printed
};
#endif //CSCI447_GAMEDEVELOPMENT_DICE_H
