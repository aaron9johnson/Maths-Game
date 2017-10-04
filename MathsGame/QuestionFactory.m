//
//  QuestionFactory.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory
-(instancetype)init{
    if(self = [super init]){
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion"];
    }
    return self;
}
-(Question *)generateRandomQuestion{
    int random = arc4random_uniform(2);
    return [[NSClassFromString(_questionSubclassNames[random]) alloc]init];
}
@end
