//
//  BIDSingleComponentPickerViewController.h
//  Pickers
//
//  Created by Maria Alice C. Lim on 9/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSingleComponentPickerViewController : UIViewController
@property(strong, nonatomic) IBOutlet UIPickerView *singlePicker;
@property(strong,nonatomic) NSArray *pickerData;
-(IBAction)buttonPressed;


@end
