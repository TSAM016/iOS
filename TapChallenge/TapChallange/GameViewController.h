//
//  ViewController.h
//  TapChallange
//
//  Created by Gabriele Nardi on 13/01/17.
//  Copyright © tsam.gabrielenardi All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ScoreTableViewController.h"

@interface GameViewController : UIViewController <ScoreTableViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *tapsCountLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;

-(IBAction)buttonPressed:(id)sender;

-(IBAction)tapGestureRecognizerDidRecognizeTap:(id)sender;

@end
