//
//  ViewController.m
//  BasicTutorial
//
//  Created by Ondrej Rafaj on 27/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic) NSInteger tapCount;

@end


@implementation ViewController


#pragma mark Actions

- (void)didTapMyActionButton:(UIButton *)sender {
    self.tapCount++;
    
    NSString *text = [NSString stringWithFormat:@"Number of taps: %ld", (long)self.tapCount];
    [self.myResultLabel setText:text];
}

#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tapCount = 0;
}

#pragma mark memory management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
