//
//  CondocsViewController.m
//  CondorCondocs
//
//  Created by Lauren Jaramillo on 9/12/13.
//  Copyright (c) 2013 CS193p. All rights reserved.
//

#import "CondocsViewController.h"

@interface CondocsViewController ()

@end

@implementation CondocsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [self performSegueWithIdentifier:@"Start Screen" sender:self];
}

- (NSMutableDictionary*)allUsers {
    if(!_allUsers) {
        _allUsers = [[NSMutableDictionary alloc] init];
    }
    return _allUsers;
}

- (void)addUser:(NSString*)name :(NSString*)password {
    [self.allUsers setValue:password forKey:name];
}

@end
