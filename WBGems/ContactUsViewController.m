//
//  ContactUsViewController.m
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import "ContactUsViewController.h"

@interface ContactUsViewController ()

@end

@implementation ContactUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Contact Us";
    // Do any additional setup after loading the view.
    self.userLocationManager = [[CLLocationManager alloc] init];
    if ([self.userLocationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [[UIApplication sharedApplication] sendAction:@selector(requestWhenInUseAuthorization) to:self.userLocationManager from:self forEvent:nil];
    }
    CLLocationCoordinate2D locationCoordinates;
    locationCoordinates.latitude = 38.925098;
    locationCoordinates.longitude = -77.520050;
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = 0.005;
    zoomSpan.longitudeDelta = 0.005;
    
    MKCoordinateRegion region;
    region.center = locationCoordinates;
    region.span = zoomSpan;
    
    [mapView setRegion:region];
    
    MapAnnotation *annotation = [[MapAnnotation alloc] init];
    annotation.coordinate = locationCoordinates;
    annotation.title = @"WB Gems LLC";
    annotation.subtitle = @"Address: 25050 South Riding, Aldie, VA";
    [mapView addAnnotation:annotation];
    
    
    
    
    NSURL *WBContact = [[NSURL alloc] initWithString:@"http://wbgems.online/contact/"];
    NSURLRequest *requestContactInfo = [NSURLRequest requestWithURL:WBContact];
    [_webView loadRequest:requestContactInfo];
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

@end
