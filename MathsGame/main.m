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
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper* score = [ScoreKeeper new];
        while(TRUE){
            Question* currentQ = [Question new];
            NSLog(@"%ld + %ld = ",(long)currentQ.num1,(long)currentQ.num2);
            
            NSString *inputString = [InputHandler getUserInput];
            
            if([currentQ checkAnswer:(NSInteger)[inputString integerValue] score:score]){
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            NSLog(@"Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
            NSLog(@"More Maths? y/n: ");
            
            inputString = [InputHandler getUserInput];

            if ([@"n" isEqualToString:inputString]) {
                break;
            }
            
        }
        NSLog(@"Final Score - Right: %d, Wrong: %d, Percentage: %.2f",score.right, score.wrong, [score percentage]);
    }
    return 0;
}
