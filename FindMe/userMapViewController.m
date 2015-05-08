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
    _mapView.delegate = self;
    _locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    [_mapView setShowsUserLocation:YES];
    
    _pins = [[Pin alloc] init];
    
    // add a long press gesture
    UILongPressGestureRecognizer *recognizer = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(addPin:)];
    recognizer.minimumPressDuration = 0.2;
    [self.mapView addGestureRecognizer:recognizer];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion zonaZoom = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 300, 300);
    [_mapView setRegion:zonaZoom animated:YES];
}

- (void)addPin:(UIGestureRecognizer *)recognizer {
    
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        return;
    }
    
    // convert touched position to map coordinate
    CGPoint userTouch = [recognizer locationInView:self.mapView];
    
    CLLocationCoordinate2D mapPoint = [self.mapView convertPoint:userTouch toCoordinateFromView:self.mapView];
    
    [_pins addCoordinate:mapPoint];
    
    for (NSInteger i=0; i < [_pins.coordinates count]; i++) {
      [self.mapView addAnnotation:_pins.coordinates[i]];
    }
    
    if([_pins.coordinates count]>1){
        MKPolyline *polyline = [MKPolyline polylineWithCoordinates:(__bridge CLLocationCoordinate2D *)([_pins coordinates]) count:[[_pins coordinates] count]];
        
        free((__bridge void *)(_pins.coordinates));
        
        [self.mapView addOverlay:polyline];
    }
    
    
    
    //[self.mapView addAnnotation:_pins.coordinates[0]];
    
    /*
    // and add it to our view
    Pin *newPin = [[Pin alloc]initWithCoordinate:mapPoint];
    [self.mapView addAnnotation:newPin];
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

- (IBAction)closeUserSesionButton:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

/*

- (void)viewWillAppear:(BOOL)animated {
	[self setupLocalNotifications];
}

- (void)setupLocalNotifications {
	[[UIApplication sharedApplication] cancelAllLocalNotifications];
	
	UILocalNotification *localNotification = [[UILocalNotification alloc] init];
	
	// current time plus 10 secs
	NSDate *now = [NSDate date];
	NSDate *dateToFire = [now dateByAddingTimeInterval:5];
	
	NSLog(@"now time: %@", now);
	NSLog(@"fire time: %@", dateToFire);
 
	localNotification.fireDate = dateToFire;
	localNotification.alertBody = @"Time to get up!";
	localNotification.soundName = UILocalNotificationDefaultSoundName;
	localNotification.applicationIconBadgeNumber = 1; // increment
	
	NSDictionary *infoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Object 1", @"Key 1", @"Object 2", @"Key 2", nil];
	localNotification.userInfo = infoDict;
	
	[[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}*/

@end
