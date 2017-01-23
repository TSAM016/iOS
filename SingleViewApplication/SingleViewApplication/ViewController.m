//
//  ViewController.m
//  SingleViewApplication
//
//  Created by Nardi Gabriele on 11/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int _tapCount;
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"2");
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.helloWorldLabel setText:@"Ciao Mamma"];
    
    //NSArray *arrayStatico2 = [[NSArray alloc] initWithObjects:@"Prima Stringa", @"Seconda Stringa", @1, nil];
    
    [self.userNameTextField setText:@"Username"];
    
    //[self aggiornaTesto:@"%@"];
    
    _tapCount = 0;
    [self.helloWorldLabel setTextColor:[UIColor blackColor]];
    
}

-(void)aggiornaTesto:(NSString *)nuovoTesto{
    [self.helloWorldLabel setText:@"Testo da Codice"];
    [self aggiornaTesto :@"Testo"];
}



-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"4");
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"3");
    
}

-(void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"1");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender{
    NSLog(@"userNameTextFieldDidEndOnExit");
}
-(IBAction)userNameTextFieldEditingDidEnd:(UITextField *)sender{
    NSLog(@"userNameTextFieldEditingDidEnd");
    
    NSLog(@"\ntesto digitato dall'utente: %@", sender.text);
}

-(IBAction)buttonPressed:(id)sender{
    NSLog(@"button correctly pressed");
    
    _tapCount++;
    
    NSLog(@"\ntap Count: %i\n", _tapCount);
    
    [self.helloWorldLabel setText:[NSString stringWithFormat:@"%i", _tapCount]];
}


@end
