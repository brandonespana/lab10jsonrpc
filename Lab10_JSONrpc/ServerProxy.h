//
//  ServerProxy.h
//  Lab10_JSONrpc
//
//  Created by biespana on 4/6/15.
//  Copyright (c) 2015 biespana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Waypoint.h"
@interface ServerProxy : NSObject

-(id) initWithTarget: (id)target action: (SEL) action;
-(NSArray*) getNames;
-(NSArray*) getCategories;
-(NSArray*) getNamesInCategory: (NSString*) category;
-(Waypoint*) getWPnamed: (NSString*) wpName;
-(BOOL) removeWPNamed: (NSString*) wpName;
-(BOOL) addWaypoint: (Waypoint*) waypoint;
-(double) calculateDistanceFrom:(Waypoint*)fromWP to:(Waypoint*)toWP;
-(double) calculateBearingFrom:(Waypoint*)fromWP to:(Waypoint*)toWP;


@end
