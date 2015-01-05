//
//  ThirdPageController.m
//  DelegateMania
//
//  Created by Kevin Jorgensen on 9/29/11.
//  Copyright 2011 Kevin Jorgensen. All rights reserved.
//

#import "ThirdPageController.h"

@interface UIColor (Random)
+ (UIColor *) randomColor;
@end

@implementation UIColor (Random)

+ (UIColor *) randomColor
{
    return [UIColor colorWithRed: (random() % 256) / 256.0f green: (random() % 256) / 256.0f blue: (random() % 256) / 256.0f alpha: 1];
}

@end

@implementation ThirdPageController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Three";
        
        srandom(time(NULL));
    }
    return self;
}

#pragma mark - View lifecycle

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    
    /* Custom view loading goes here */
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

@end
