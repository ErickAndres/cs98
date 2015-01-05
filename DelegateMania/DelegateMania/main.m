//
//  main.m
//  DelegateMania
//
//  Created by Kevin Jorgensen on 9/29/11.
//  Copyright 2011 Kevin Jorgensen. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DelegateManiaAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([DelegateManiaAppDelegate class]));
    
    [pool drain];
    
    return retVal;
}
