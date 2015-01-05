//
//  FCStackCalculatorController.h
//  FractionCalculator
//
//  Created by Erick Andres on 11/6/14.
//
//

#import <Foundation/Foundation.h>
#import "FCStack.h"
#import "FCConsole.h"

@interface FCStackCalculatorController : NSObject
{
    FCStack *stack;
}
- (void) respondToInput: (NSString *) input;

@end
