//
//  ViewController.h
//  BasicTutorial
//
//  Created by Ondrej Rafaj on 27/10/2015.
//  Copyright © 2015 Ridiculous Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController


@property (nonatomic, weak) IBOutlet UILabel *myResultLabel;

- (IBAction)didTapMyActionButton:(UIButton *)sender;


@end

