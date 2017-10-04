//
//  main.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL doContinue = true;
        ScoreKeeper* score = [ScoreKeeper new];
        QuestionManager *qManager = [QuestionManager new];
        QuestionFactory *qFactory = [QuestionFactory new];
        
        while(doContinue){
            //random question
            Question* currentQ = [qFactory generateRandomQuestion];
            [qManager.questions addObject:currentQ];
            NSLog(@"%@",currentQ.question);
            
            //user answer to question
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            
            //check answer
            if([currentQ checkAnswer:(int)[inputString integerValue] score:score]){
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            NSLog(@"Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
            NSLog(@"%@",[qManager timeOutput]);
            
            //ask to play again
            NSLog(@"More Maths? y/n: ");
            fgets(inputChars, 255, stdin);
            if (strncmp("n", inputChars, 1) == 0) {
                doContinue = false;
            }
        }
        //Outputs Score and Time after quitting game
        NSLog(@"Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
        NSLog(@"%@",[qManager timeOutput]);
    }
    return 0;
}
