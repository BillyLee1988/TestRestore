//
//  TabBarViewController.m
//  TestRestore
//
//  Created by Lee Billy on 12年10月15日.
//  Copyright (c) 2012年 Lee Billy. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.restorationIdentifier = @"TabBarViewController";
    self.restorationClass = [UITabBarController class];
}

+(UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    TabBarViewController * myViewController = [[TabBarViewController alloc] initWithNibName:nil bundle:nil];
    
    return myViewController;
}

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder {
    [coder encodeObject:[NSString stringWithFormat:@"%d", self.selectedIndex] forKey:@"UnsavedText"];
    [super encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(NSCoder *)coder {
    
    NSLog(@"%@",[coder decodeObjectForKey:@"UnsavedText"]);
    self.selectedIndex = [[coder decodeObjectForKey:@"UnsavedText"] integerValue];
    [super decodeRestorableStateWithCoder:coder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
