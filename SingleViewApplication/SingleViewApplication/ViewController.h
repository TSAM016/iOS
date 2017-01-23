//
//  ViewController.h
//  SingleViewApplication
//
//  Created by Nardi Gabriele on 11/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *helloWorldLabel;

@property (nonatomic, weak) IBOutlet UITextField *userNameTextField;

-(IBAction)userNameTextFieldDidEndOnExit:(id)sender;
-(IBAction)userNameTextFieldEditingDidEnd:(id)sender;
-(IBAction)buttonPressed:(id)sender;

@end

