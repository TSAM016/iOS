//
//  ViewController.m
//  Chronometer
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

int _sec;
int _min;
int _hour;
NSTimer *_timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeFormatted) userInfo:nil repeats:true];
    
    
}

-(int)myTimer{
    return _sec++;
    
}
- (void)timeFormatted
{
    if(_sec < 60){
        _sec++;
    }else{
        _sec = 0;
        _min++;
    }
    if(_min > 59){
        _min=0;
        _hour++;
        
    }
    [self.timeLabel setText:[NSString stringWithFormat:@"%02dh : %02dm : %02ds",_hour, _min, _sec]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
