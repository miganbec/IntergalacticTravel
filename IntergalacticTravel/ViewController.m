//
//  ViewController.m
//  IntergalacticTravel
//
//  Created by miganbec on 28/10/14.
//  Copyright (c) 2014 miganbec. All rights reserved.
//

#import "ViewController.h"
#import "VacationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    VacationViewController *vacationViewController = segue.destinationViewController;
    vacationViewController.title = [sender currentTitle];
    if ([segue.identifier isEqualToString: @"RedDwarfSegue"]) {
        vacationViewController.starImage = [UIImage imageNamed: @"RedSwarfStar"];
        vacationViewController.view.backgroundColor = [UIColor redColor];
    } else {
        vacationViewController.starImage = [UIImage imageNamed: @"BlueStar"];
        vacationViewController.view.backgroundColor = [UIColor blueColor];
    }
}

@end
