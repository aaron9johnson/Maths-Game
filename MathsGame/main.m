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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL doContinue = true;
        ScoreKeeper* score = [ScoreKeeper new];
        while(doContinue){
            Question* currentQ = [Question new];
            NSLog(@"%d + %d = ",currentQ.num1,currentQ.num2);
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString substringToIndex:(inputString.length-1)];
            if([currentQ checkAnswer:(int)[inputString integerValue] score:score]){
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            NSLog(@"Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
            NSLog(@"More Maths? y/n: ");
            fgets(inputChars, 255, stdin);
            if (strncmp("n", inputChars, 1) == 0) {
                doContinue = false;
            }
        }
        NSLog(@"Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
    }
    return 0;
}
