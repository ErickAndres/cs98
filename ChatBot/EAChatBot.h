//
//  EAChatBot.h
//  ChatBot
//
//  Created by Erick Andres on 11/27/14.
//
//

#import "CBChatBot.h"

@interface EAChatBot : CBChatBot
{
    NSString* rememberedString;
}
+ (NSString *)screenName;
- (void) respondToChatMessage: (NSString *) chatMessage;
- (void) timerTriggered: (NSTimer *) timer;
@end
