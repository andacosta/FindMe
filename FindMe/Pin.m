//
//  Pin.m
//  FindMe
//
//  Created by Ekoomedia Ltda. on 5/8/15.
//  Copyright (c) 2015 Cappacitate. All rights reserved.
//

#import "Pin.h"

@implementation Pin


-(id)init{
    _coordinates = [[NSMutableArray alloc] init];
    return self;
}

-(void)addCoordinate:(CLLocationCoordinate2D)coord {
    
    MKPointAnnotation *pointPin = [[MKPointAnnotation alloc] init];
    pointPin.coordinate = coord;
    
    [_coordinates addObject:pointPin];
    
    
    
    /*
    self = [super init];
    if (self) {
        _coordinate = newCoordinate;
        _title = @"Hello";
        _subtitle = @"Are you still there?";
    }
    return self;*/
}

@end