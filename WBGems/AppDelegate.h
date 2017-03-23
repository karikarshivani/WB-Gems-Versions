//
//  AppDelegate.h
//  WBGems
//
//  Created by Remotetiger_User on 3/23/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

