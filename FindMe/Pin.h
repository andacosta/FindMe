//
//  Pin.h
//  FindMe
//
//  Created by Ekoomedia Ltda. on 5/8/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface Pin : NSObject

@property NSMutableArray* coordinates;


-(id)init;
-(void)addCoordinate:(CLLocationCoordinate2D)coord;
@end
