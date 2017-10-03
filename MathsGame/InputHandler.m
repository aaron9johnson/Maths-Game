//
//  InputHandler.m
//  MathsGame
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getUserInput
{
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    inputString = [inputString substringToIndex:(inputString.length-1)];
    return inputString;
}

@end
