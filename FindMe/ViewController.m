//
//  ViewController.m
//  FindMe
//
//  Created by Sergio Acosta on 05/07/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	
	//self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"homeBg3.jpg"]];
	/*UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"homeBg3.jpg"]];
	[self.view addSubview:backgroundView];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    return YES;
	if ([_usernameTextBox.text isEqualToString:@"user"] && [_passwordTextBox.text isEqual:@"1234"]) {
		return YES;
	} else if ([_usernameTextBox.text isEqualToString:@"admin"] && [_passwordTextBox.text isEqual:@"1234"]) {
		//[self performSegueWithIdentifier:@"MySegueName" sender:sender];
		return NO;
	} else {
		UIAlertView * loginError = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Usuario o contraseña invalido" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
		[loginError show];
		return NO;
	}
}

-(IBAction)prepareForUserUnwind:(UIStoryboardSegue *)segue {
	// Custom Administrator segue
}

// Hide keyboard
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
