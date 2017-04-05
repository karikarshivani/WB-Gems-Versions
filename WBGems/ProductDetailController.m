//
//  ProductDetailController.m
//  WBGems
//
//  Created by Remotetiger_User on 3/29/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import "ProductDetailController.h"

@interface ProductDetailController ()
@property (weak, nonatomic) IBOutlet UIImageView *currentImageView;

@end

@implementation ProductDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *current = self.detailImage;
    [self.currentImageView setImage:current];
    
    
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
