//
//  ViewController.m
//  SimpleIO
//
//  Created by Len Payne on 2014-10-14.
//  Copyright (c) 2014 Len Payne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
// Synthesized Outlets are Available Anywhere
@synthesize label;
@synthesize textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Sets the Initial Text to Hello World!
    [label setText:@"Hello World!"];
    
    // Attaches an Event Listener for when Editing is Changed
    [textField addTarget:self
                  action:@selector(textFieldDidChange)
        forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// New Method - Called by Event Listener
- (void)textFieldDidChange {
    // Sets the Text of the Label, from the Text of the Text Field
    [label setText:[textField text]];
}

@end
