//
//  userMapViewController.h
//  FindMe
//
//  Created by Sergio Acosta on 05/07/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MessageUI/MFMessageComposeViewController.h>

@interface userMapViewController : UIViewController {
	MKMapView * userMapView;
}

- (IBAction)closeUserSesionButton:(id)sender;

@property (strong, nonatomic) IBOutlet MKMapView * mapView;

@end
