//
//  ExcerciseViewController.m
//  TrioFit
//
//  Created by Наталья on 20.04.16.
//  Copyright © 2016 Наталья. All rights reserved.
//

#import "ExcerciseViewController.h"
#import "ExcerciseTableViewController.h"

@interface ExcerciseViewController ()

@end

@implementation ExcerciseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)powerButtonDidClick:(id)sender {
    [self performSegueWithIdentifier:@"excerciseSegue"  sender:@"power"];
}
- (IBAction)jogaButtonDidClick:(id)sender {
    [self performSegueWithIdentifier:@"excerciseSegue"  sender:@"yoga"];
}

- (IBAction)stretchingButtonDidClick:(id)sender {
    [self performSegueWithIdentifier:@"excerciseSegue"  sender:@"stretching"];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ExcerciseTableViewController *destViewController = segue.destinationViewController;
    destViewController.excerciseButtonString = sender;
    
}




@end
