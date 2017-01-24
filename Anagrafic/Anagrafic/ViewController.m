//
//  ViewController.m
//  Anagrafic
//
//  Created by Nardi Gabriele on 24/01/17.
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

-(IBAction)saveButtonPressed:(id)sender {
    NSString *name = [_nameTextField text];
    NSString *surname = [_surnameTextField text];
    NSString *age = [_ageTextField text];
    
    NSLog(@"Nome: %@",name);
    NSLog(@"Cognome: %@",surname);
    NSLog(@"Età: %@",age);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
