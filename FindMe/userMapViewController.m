//
//  userMapViewController.m
//  FindMe
//
//  Created by Sergio Acosta on 05/07/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import "userMapViewController.h"
//#import <MessageUI/MessageUI.h>
//#import <MessageUI/MFMessageComposeViewController.h>
//#import <CFNetwork/CFNetwork.h>
//#import "SKPSMTPMessage.h"
//#import "NSData+Base64Additions.h"

@interface userMapViewController ()
//<SKPSMTPMessageDelegate>

@end

@implementation userMapViewController

@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	/*
	UILocalNotification* localNotification = [[UILocalNotification alloc] init];
	localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:0];
	localNotification.alertBody = @"Local Notification in iOS8";
	localNotification.timeZone = [NSTimeZone defaultTimeZone];
	[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
	 */
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

- (IBAction)showNotificationAction:(id)sender {
	[self setupLocalNotifications:@"Mensaje"];
}

- (IBAction)closeUserSesionButton:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setupLocalNotifications:(NSString*)notyMessage {
	[[UIApplication sharedApplication] cancelAllLocalNotifications];
	
	UILocalNotification *localNotification = [[UILocalNotification alloc] init];
	
	NSDate *now = [NSDate date];
	NSDate *dateToFire = [now dateByAddingTimeInterval:2];
	
	//NSLog(@"now time: %@", now);
	//NSLog(@"fire time: %@", dateToFire);
 
	localNotification.fireDate = dateToFire;
	localNotification.alertBody = notyMessage;
	localNotification.soundName = UILocalNotificationDefaultSoundName;
	//localNotification.applicationIconBadgeNumber = 1; // increment
	
	NSDictionary *infoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Object 1", @"Key 1", @"Object 2", @"Key 2", nil];
	localNotification.userInfo = infoDict;
	
	[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

@end
