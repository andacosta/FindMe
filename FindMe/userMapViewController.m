//
//  userMapViewController.m
//  FindMe
//
//  Created by Sergio Acosta on 05/07/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import "userMapViewController.h"

@interface userMapViewController ()

@end

@implementation userMapViewController

@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closeUserSesionButton:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end