//
//  ViewController.m
//  Random
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int _num;
    BOOL _answer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _num =[self getRandomNumberBetween:0 to:10];
    [self.randomLabel setText:[NSString stringWithFormat:@"%i",_num]];
    
    _answer =[self check:_num];
    
    
}


-(IBAction)buttonYesPressed:(id)sender{
    if([self check:_num]){
        NSString *message = [NSString stringWithFormat:@"Corret"];
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
            
        }];
        [alertcontroller addAction:okAction];
        [self presentViewController:alertcontroller animated:true completion:nil];
    }else {
        NSString *message = [NSString stringWithFormat:@"Wrong"];
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
            
        }];
        
        [alertcontroller addAction:okAction];
        [self presentViewController:alertcontroller animated:true completion:nil];
    }
}
-(IBAction)buttonNoPressed:(id)sender{
    if(![self check:_num]){
        NSString *message = [NSString stringWithFormat:@"Correct"];
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
            
        }];
        
        [alertcontroller addAction:okAction];
        [self presentViewController:alertcontroller animated:true completion:nil];
    }else {
        NSString *message = [NSString stringWithFormat:@"Wrong"];
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction=[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
            
        }];
        
        [alertcontroller addAction:okAction];
        [self presentViewController:alertcontroller animated:true completion:nil];
    }
}
-(BOOL)check:(int)valore{
    if(valore%2==0){
        return true; //il numero è pari
    }else{
        return false; // il numero è dispari
    }
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
