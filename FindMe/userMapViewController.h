//
//  userMapViewController.h
//  FindMe
//
//  Created by Sergio Acosta on 05/07/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface userMapViewController : UIViewController {
	MKMapView * userMapView;
}

- (IBAction)showNotificationAction:(id)sender;
- (IBAction)closeUserSesionButton:(id)sender;

@property (strong, nonatomic) IBOutlet MKMapView * mapView;

@end
