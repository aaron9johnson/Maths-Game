//
//  Question.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "Question.h"

@implementation Question
-(instancetype)init{
    if(self = [super init]){
        _num1 = arc4random_uniform(90) + 10;
        _num2 = arc4random_uniform(90) + 10;
    }
    return self;
}
-(BOOL)checkAnswer:(NSInteger)answer score:(ScoreKeeper *)score{
    if(self.num1 + self.num2 == answer){
        [score correct];
        return true;
    }
    [score inCorrect];
    return false;
}
@end
