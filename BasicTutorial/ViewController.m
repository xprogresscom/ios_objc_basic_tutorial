//
//  ViewController.m
//  BasicTutorial
//
//  Created by Ondrej Rafaj on 27/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *myResultLabel;
@property (nonatomic, weak) IBOutlet UIButton *myIncrementalButton;
@property (nonatomic, weak) IBOutlet UISlider *mySlider;
@property (nonatomic, weak) IBOutlet UISwitch *mySwitch ;
@property (nonatomic, weak) IBOutlet UISwitch *controlsEnabledSwitch;

@property (nonatomic) NSInteger tapCount;

@end


@implementation ViewController


#pragma mark Actions

- (IBAction)didTapMyActionButton:(UIButton *)sender {
    // Add count
    self.tapCount++;
    
    // Create string
    NSString *text = [NSString stringWithFormat:NSLocalizedString(@"Number of taps: %ld", @"Number of taps title"), (long)self.tapCount];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)didChangeMySwitch:(UISwitch *)sender {
    BOOL enabled = sender.isOn;
    
    // Create string
    NSString *onOff = (enabled ? NSLocalizedString(@"On", @"On") : NSLocalizedString(@"Off", @"Off"));
    NSString *localizedString = NSLocalizedString(@"My switch is: %@", @"Switch statement");
    NSString *text = [NSString stringWithFormat:localizedString, onOff];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)valueChangedOnMySlider:(UISlider *)sender {
    // Create string
    NSString *text = [NSString stringWithFormat:NSLocalizedString(@"My slider value: %.3f", @"Slider value string"), sender.value];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)didChangeControlsEnabledSwitch:(UISwitch *)sender {
    NSString *message = (sender.isOn ? @"Would you like to enable controls?" : @"Would you like to disable controls?");
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Confirmation", @"Confirmation") message:NSLocalizedString(message, @"Confirm message") delegate:self cancelButtonTitle:NSLocalizedString(@"No", @"No") otherButtonTitles:NSLocalizedString(@"Yes", @"Yes"), nil];
    [alert show];
}

#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tapCount = 0;
}

#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Alert view delegate methods

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        self.controlsEnabledSwitch.on = !self.controlsEnabledSwitch.isOn;
    }
    else {
        BOOL enable = self.controlsEnabledSwitch.isOn;
        [self.myIncrementalButton setEnabled:enable];
        [self.mySlider setEnabled:enable];
        [self.mySwitch setEnabled:enable];
    }
}


@end
