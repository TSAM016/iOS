//
//  ViewController.h
//  Random
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UILabel *randomLabel;

-(IBAction)buttonYesPressed:(id)sender;
-(IBAction)buttonNoPressed:(id)sender;

@end

