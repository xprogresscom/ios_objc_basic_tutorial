//
//  ViewController.m
//  BasicTutorial
//
//  Created by Ondrej Rafaj on 27/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

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
    NSString *text = [NSString stringWithFormat:@"Number of taps: %ld", (long)self.tapCount];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)didChangeMySwitch:(UISwitch *)sender {
    // Create string
    NSString *text = [NSString stringWithFormat:@"My switch is: %@", (sender.isOn ? @"On" : @"Off")];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)valueChangedOnMySlider:(UISlider *)sender {
    // Create string
    NSString *text = [NSString stringWithFormat:@"My slider value: %.3f", sender.value];
    // Assign string to the label
    [self.myResultLabel setText:text];
}

- (IBAction)didChangeControlsEnabledSwitch:(UISwitch *)sender {
    BOOL enable = sender.isOn;
    [self.myIncrementalButton setEnabled:enable];
    [self.mySlider setEnabled:enable];
    [self.mySwitch setEnabled:enable];
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


@end
