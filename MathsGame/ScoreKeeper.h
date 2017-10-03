//
//  ScoreKeeper.h
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property int right;
@property int wrong;
-(void)correct;
-(void)inCorrect;
-(float)percentage;
@end
