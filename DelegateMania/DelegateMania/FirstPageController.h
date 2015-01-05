//
//  FirstPageController.h
//  DelegateMania
//
//  Created by Kevin Jorgensen on 9/29/11.
//  Copyright 2011 Kevin Jorgensen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstPageController : UIViewController
{
    UIPickerView *picker;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;

- (IBAction) actionSheetButtonTapped;

@end
