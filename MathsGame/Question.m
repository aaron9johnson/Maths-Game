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
        _startTime = [NSDate date];
        _question = [NSString stringWithFormat:@"%d + %d = ",_num1,_num2];
        _answer = _num1 + _num2;
    }
    return self;
}
-(BOOL)checkAnswer:(int)answer score:(ScoreKeeper *)score{
    _endTime = [NSDate date];
    if(_answer == answer){
        [score correct];
        return true;
    }
    [score inCorrect];
    return false;
}
-(NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}
-(void)generateQuestion{
    //empty
}
@end
