#include <iostream>
#include "Dice.h"

int main() {
    std::cout << "Hello, World!" << std::endl;
    Dice game = Dice();

    int wins = 0;
    int losses = 0;

    std::string continuePlaying = "yes";

    while (wins + losses < 100000000){ // this will exit when the user decides to stop playing
        unsigned int gameState = 0; // 0 = ongoing, 1 = win, 2 = lose
        int currRoll;
        int point;

        currRoll = game.rollDiceSum(2);
       // std::cout << "You rolled a " << currRoll << std::endl;

        if (currRoll == 7 || currRoll == 11){
            gameState = 1;
         //   std::cout << "You rolled a 7 or 10 on your first roll!" << std::endl;
        }
        else if (currRoll == 2 || currRoll == 3 || currRoll == 12){
            gameState = 2;
        //    std::cout << "You rolled a 2, 3, or 10 on your first roll!" << std::endl;
        }
        else{
            point = currRoll;
        }

        while (gameState == 0){ // while the game is ongoing (not won or lost)
            currRoll = game.rollDiceSum(2);
            //std::cout << "Point: " << point << std::endl;
           // std::cout << "You rolled a " << currRoll << std::endl;

            if (currRoll == point){
                gameState = 1;
             //   std::cout << "You rolled your point, " << point << "!" << std::endl;
            }
            else if(currRoll == 7){
                gameState = 2;
           //     std::cout << "You rolled a 7!" << std::endl;
            }
        }

        if (gameState == 1){
         //   std::cout << "Congratulations! You Win!" << std::endl;
            wins++;
        }
        else{
        //    std::cout << "Too Bad! You Lose!" << std::endl;
            losses++;
        }

      // std::cout << "Wins: " << wins << std::endl;
      //  std::cout << "Losses: " << losses << std::endl;
      //  std::cout << "Would you like to play again? \nIf you do not, type \"no\" (without quotation marks)" << std::endl;
        //std::cin >> continuePlaying;
/*
        if (continuePlaying == "no"){

            if (wins > losses){
                std::cout << "Quitting while your ahead, eh?"<< std::endl;
            }
            else if(losses > wins){
                std::cout << "Gotta know when to fold 'em..." << std::endl;
            }
            else {
                std::cout << "At least you didn't lose anything, but then again, you didn't win anything either..." << std::endl;
            }
            std::cout << "Thanks for playing! Come Again!" << std::endl;
            break;
        }
        */
    }
    std::cout << "Wins: " << wins << std::endl;
    std::cout << "Losses: " << losses << std::endl;

    return 0;
}
