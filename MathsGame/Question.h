//
//  Question.h
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"

@interface Question : NSObject
@property NSInteger num1;
@property NSInteger num2;

-(BOOL)checkAnswer:(NSInteger)answer score:(ScoreKeeper*)score;
-(instancetype)init;
@end
