//
//  ProductTableViewController.h
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductTableViewController : UITableViewController {
    IBOutlet UITableView *productsTableView;
    NSArray *productsAllArray;
    NSArray *productsTitleArray;
    NSArray *productsDateArray;
    
}

@end
