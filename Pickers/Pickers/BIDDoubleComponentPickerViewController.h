//
//  BIDDoubleComponentPickerViewController.h
//  Pickers
//
//  Created by Maria Alice C. Lim on 9/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//
#define kFillingComponent 0
#define kBreadComponent 1

#import <UIKit/UIKit.h>

@interface BIDDoubleComponentPickerViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIPickerView *doublePicker;
@property(strong,nonatomic) NSArray *fillingTypes;
@property(strong,nonatomic) NSArray *breadTypes;

-(IBAction)buttonPressed;

@end
