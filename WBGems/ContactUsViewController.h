//
//  ContactUsViewController.h
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapAnnotation.h"

@interface ContactUsViewController : UIViewController{
//    MKMapView *mapView;
    __weak IBOutlet MKMapView *mapView;
}

@property (strong, nonatomic) UIWindow *contactWindow;
@property (strong, nonatomic) CLLocationManager *userLocationManager;
@property (weak, nonatomic) IBOutlet UIWebView *webView;



@end
