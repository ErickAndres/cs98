//
//  EAChatBot.m
//  ChatBot
//
//  Created by Erick Andres on 11/27/14.
//
//

#import "EAChatBot.h"
#import "CBChatBot.h"

@implementation EAChatBot
+ (NSString *)screenName
{
    return @"Beast bot";
}
- (void) respondToChatMessage: (NSString *) chatMessage
{
    if ([chatMessage isEqual: @"hello"]) {
        [self sendMessage: @"hello"];
    } else if ([chatMessage isEqual: @"date"]) {
        [self sendMessage: [[NSDate date] description]];
    } else if ([chatMessage hasPrefix: @"remember"]) {
        rememberedString = [chatMessage retain];
    } else if ([chatMessage hasPrefix: @"recall"]) {
        [self sendMessage: rememberedString];
    } else if ([chatMessage hasPrefix: @"timer"]) {
         NSString *num = [chatMessage substringFromIndex:6];
        [NSTimer scheduledTimerWithTimeInterval: [num floatValue]
                                         target: self
                                       selector: @selector(timerTriggered:)
                                       userInfo: nil
                                        repeats: NO];
    }
}
- (void) timerTriggered: (NSTimer *) timer
{
    [self sendMessage: @"ding"];
}
@end
