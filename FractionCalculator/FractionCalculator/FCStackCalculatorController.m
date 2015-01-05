//
//  FCStackCalculatorController.m
//  FractionCalculator
//
//  Created by Erick Andres on 11/6/14.
//
//

#import "FCStackCalculatorController.h"
#import "Fraction.h"

@implementation FCStackCalculatorController

- (id) init
{
    self = [super init];
    if (self) {
        stack = [[FCStack alloc] init];
    }
    return self;
}
- (void) respondToInput: (NSString *) input
{
    [FCConsole writeLine: input];
    if ([input hasPrefix: @"push"]) {
        NSString *fractionString = [input substringFromIndex: 5];
        NSUInteger slash = [fractionString rangeOfString: @"/"].location;
        int numer = [[fractionString substringToIndex: slash] intValue];
        int denom = [[fractionString substringFromIndex: slash + 1] intValue];
        Fraction *fraction = [[Fraction alloc] initWithNumerator: numer
                              andDenominator: denom];
        [stack push: fraction];
        [stack print];
    } else if ([input hasPrefix: @"pop"]) {
        [stack pop];
        [stack print];
    } else if ([input isEqualToString: @"+"]) {
        Fraction *fraction1 = [stack firstOperand];
        Fraction *fraction2 = [stack secondOperand];
        Fraction *result =  [fraction1 add: fraction2];
        [stack pop];
        [stack pop];
        [stack push: result];
        [stack print];
    } else if ([input isEqualToString: @"-"]) {
        Fraction *fraction1 = [stack firstOperand];
        Fraction *fraction2 = [stack secondOperand];
        Fraction *result =  [fraction1 subtract: fraction2];
        [stack pop];
        [stack pop];
        [stack push: result];
        [stack print];
    } else if ([input isEqualToString: @"*"]) {
        Fraction *fraction1 = [stack firstOperand];
        Fraction *fraction2 = [stack secondOperand];
        Fraction *result =  [fraction1 multiply: fraction2];
        [stack pop];
        [stack pop];
        [stack push: result];
        [stack print];
    } else if ([input isEqualToString: @"/"]) {
        Fraction *fraction1 = [stack firstOperand];
        Fraction *fraction2 = [stack secondOperand];
        Fraction *result =  [fraction1 divide: fraction2];
        [stack pop];
        [stack pop];
        [stack push: result];
        [stack print];
    } else if ([input isEqualToString: @"invert"]) {
        Fraction *fraction = [stack topOperand];
        Fraction *result = [fraction inverse];
        [stack pop];
        [stack push: result];
        [stack print];
    } else if ([input isEqualToString: @"clear"]) {
        [stack clear];
        [stack print];
    }
}

@end
