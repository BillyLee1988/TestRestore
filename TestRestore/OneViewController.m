//
//  OneViewController.m
//  TestRestore
//
//  Created by Lee Billy on 12年10月15日.
//  Copyright (c) 2012年 Lee Billy. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"One";
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.restorationIdentifier = @"StateOneViewController";
    self.restorationClass = [self class];
}

+(UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    NSLog(@"%@",[identifierComponents lastObject]);

    OneViewController * myViewController = [[OneViewController alloc] initWithNibName:nil bundle:nil];
    
    return myViewController;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
