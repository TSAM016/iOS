//
//  ViewController.m
//  EvenOdd
//
//  Created by Nardi Gabriele on 23/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)isEven: (int)number{
    if(number % 2 == 0){
        NSLog(@"The number you insert is even");
        [self.numberTextField setText:@"The number you insert is even"];
    }else{
         NSLog(@"The number you insert is odd");
        [self.numberTextField setText:@"The number you insert is odd"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender {
}

- (IBAction)userNameTextFieldEditingDidEnd:(UITextField *)sender {
    NSLog(@"%@", sender.text);
    [self isEven:sender.text.intValue];
}

@end
