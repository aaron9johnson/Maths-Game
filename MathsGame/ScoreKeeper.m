//
//  ScoreKeeper.m
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(void)correct{
    self.right = self.right + 1;
}
-(void)inCorrect{
    self.wrong = self.wrong + 1;
}
-(float)percentage{
    return (float)self.right / (float)(self.right + self.wrong) * 100;
}
@end
