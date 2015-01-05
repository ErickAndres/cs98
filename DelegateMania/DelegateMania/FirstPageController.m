//
//  FirstPageController.m
//  DelegateMania
//
//  Created by Kevin Jorgensen on 9/29/11.
//  Copyright 2011 Kevin Jorgensen. All rights reserved.
//

#import "FirstPageController.h"

@implementation FirstPageController

@synthesize picker;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"One";
    }
    return self;
}

- (void) dealloc
{
    [picker release];
    
    [super dealloc];
}

- (void) actionSheetButtonTapped
{
    
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void) viewDidUnload
{
    [super viewDidUnload];
}

@end
