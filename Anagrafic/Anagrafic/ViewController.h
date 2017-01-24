//
//  ViewController.h
//  Anagrafic
//
//  Created by Nardi Gabriele on 24/01/17.
//  Copyright © 2017 Nardi Gabriele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *nameTextField;
@property (nonatomic,weak) IBOutlet UITextField *surnameTextField;
@property (nonatomic,weak) IBOutlet UITextField *ageTextField;

-(IBAction)saveButtonPressed:(id)sender;

@end

