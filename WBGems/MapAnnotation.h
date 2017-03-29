//
//  MapAnnotation.h
//  WBGems
//
//  Created by Remotetiger_User on 3/29/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MapAnnotation : NSObject <MKAnnotation>
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@end
