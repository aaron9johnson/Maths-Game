//
//  QuestionManager.h
//  MathsGame
//
//  Created by Aaron Johnson on 2017-10-04.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject
@property NSMutableArray *questions;
-(instancetype)init;
-(NSString *)timeOutput;
@end
