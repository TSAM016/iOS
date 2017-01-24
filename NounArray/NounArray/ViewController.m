//
//  ViewController.m
//  NounArray
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *myMutableArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myMutableArray = [NSMutableArray array];
    [myMutableArray addObject:@"Freddie Campbell"];
    [myMutableArray addObject:@"Krista Kim"];
    [myMutableArray addObject:@"Merle Hubbard"];
    [myMutableArray addObject:@"Lorraine Weber"];
    [myMutableArray addObject:@"Lorenzo Greene"];
    [myMutableArray addObject:@"Sandra Brock"];
    [myMutableArray addObject:@"Nichole Hines"];
    [myMutableArray addObject:@"Floyd Clarke"];
    [myMutableArray addObject:@"Andrea Ramsey"];
    [myMutableArray addObject:@"FMarcus Reid"];
    [myMutableArray addObject:@"Jacob Garza"];
    [myMutableArray addObject:@"Peter Herrera"];
    [myMutableArray addObject:@"Glenn Horton"];
    [myMutableArray addObject:@"Francis Mack"];
    [myMutableArray addObject:@"Yvette Farmer"];
    [myMutableArray addObject:@"Evan Hughes"];
    [myMutableArray addObject:@"Shelley Lane"];
    [myMutableArray addObject:@"Gladys Carroll"];
    [myMutableArray addObject:@"Stella Thornton"];
    [myMutableArray addObject:@"Mindy Wilkerson"];
    [myMutableArray addObject:@"Beth Diaz"];
    [myMutableArray addObject:@"Everett Mckinney"];
    [myMutableArray addObject:@"Audrey Cooper"];
    [myMutableArray addObject:@"Christie Sutton"];
    [myMutableArray addObject:@"Timothy Walters"];
    
    
    NSArray *sortedArray = [myMutableArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    
    NSLog(@"%@",sortedArray);
    
    NSArray *array =@[];
    NSMutableArray *name=[NSMutableArray array];
    NSMutableArray *surname=[NSMutableArray array];
    for(int i = 0;i<myMutableArray.count;i++) {
        array =    [myMutableArray[i] componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        array = [array filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
        [name addObject:array[0]];
        [surname addObject:array[1]];
    }
    NSLog(@"%@",name);
    NSLog(@"%@",surname);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
