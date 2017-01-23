//
//  ViewController.m
//  Username
//
//  Created by Nardi Gabriele on 23/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender {
}

- (IBAction)userNameTextFieldEditingDidEnd:(UITextField *)sender {
    NSLog(@"%@", sender.text);
    [self.usernameTextField setText:@"Log stored"];
}

@end
