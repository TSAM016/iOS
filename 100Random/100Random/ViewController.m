//
//  ViewController.m
//  100Random
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *myArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self fillTheArray];
    int s = 0;
    for(int i = 0; i<100;i++){
        s = s + [myArray[i] intValue];
        NSLog(@"pos %i = %@",i,myArray[i]);
    }
    NSLog(@"Somma = %i",s);
    NSLog(@"%@",[self sortAscendingMyArray:myArray]);
    NSLog(@"%@",[self sortDiscendingMyArray:myArray]);
    [self.sumArray setText:[NSString stringWithFormat:@"%i",s]];
}
-(void)fillTheArray{
    myArray = [NSMutableArray array];
    for(int i = 0; i < 100; i++) {
        [myArray addObject:[NSNumber numberWithInt:[self getRandomNumberBetween:1 to:100]]];
    }
}
-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}
-(NSArray*)sortAscendingMyArray:(NSMutableArray *)mioarray{
    NSArray *array = [mioarray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2){
            return NSOrderedSame;
        }
        if(value1 < value2){
            return NSOrderedAscending;
        }
        return NSOrderedDescending;
    }];
    return array;
}
-(NSArray*)sortDiscendingMyArray:(NSMutableArray *)mioarray{
    NSArray *array = [mioarray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2){
            return NSOrderedSame;
        }
        if(value1 > value2){
            return NSOrderedAscending;
        }
        return NSOrderedDescending;
    }];
    return array;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
