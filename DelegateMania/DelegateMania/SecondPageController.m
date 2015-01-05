//
//  SecondPageController.m
//  DelegateMania
//
//  Created by Kevin Jorgensen on 9/29/11.
//  Copyright 2011 Kevin Jorgensen. All rights reserved.
//

#import "SecondPageController.h"

@implementation SecondPageController

@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Two";
    }
    return self;
}

- (void) dealloc
{
    [label release];
    
    [super dealloc];
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


@end
