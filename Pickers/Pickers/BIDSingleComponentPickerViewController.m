//
//  BIDSingleComponentPickerViewController.m
//  Pickers
//
//  Created by Maria Alice C. Lim on 9/13/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDSingleComponentPickerViewController.h"

@implementation BIDSingleComponentPickerViewController
@synthesize  singlePicker;
@synthesize  pickerData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *array = [[NSArray alloc] initWithObjects:@"Luke",@"Leia",@"Han",@"Nico", @"Jessa", @"Mark",@"Junry", @"Gun", @"James", @"Kimson", @"Bryan", nil];
    pickerData = array;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.singlePicker = nil;
    self.pickerData = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)buttonPressed{
    NSInteger row = [singlePicker selectedRowInComponent:0];
    NSString *selected = [pickerData objectAtIndex:row];
    NSString *title = [[NSString alloc] initWithFormat:@"You selected %@", selected];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"Thank you for choosing." delegate:nil cancelButtonTitle:@"You're Welcome!" otherButtonTitles:nil];
    [alert show];
}
#pragma mark -
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [pickerData  count];
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [pickerData objectAtIndex:row];
}

@end
