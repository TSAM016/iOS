//
//  ViewController.h
//  Username
//
//  Created by Nardi Gabriele on 23/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *usernameTextField;

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender;

-(IBAction)userNameTextFieldEditingDidEnd:(id)sender;


@end

