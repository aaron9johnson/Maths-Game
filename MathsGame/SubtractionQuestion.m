//
//  SubtractionQuestion.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.num1 - super.num2;
    super.question = [NSString stringWithFormat:@"%d - %d = ", super.num1, super.num2];
}
@end
