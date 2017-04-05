//
//  ProductTableViewController.h
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductDetailController.h"

@interface ProductTableViewController : UITableViewController {
    IBOutlet UITableView *productsTableView;
    NSArray *productsAllArray;
}
@property(nonatomic,strong) NSMutableArray *productsTitleArray;
@property(nonatomic,strong) NSMutableArray *productsDateArray;


@end
