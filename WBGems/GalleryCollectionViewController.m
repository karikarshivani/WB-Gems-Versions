//
//  GalleryCollectionViewController.m
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import "GalleryCollectionViewController.h"
#import "GalleryCollectionViewCell.h"

@interface GalleryCollectionViewController ()

@end

@implementation GalleryCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Gallery";
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[GalleryCollectionViewCell class] forCellWithReuseIdentifier:@"Cell"]; //CAUSED A BLANK SCREEN
    
    // Do any additional setup after loading the view.
    galleryArray = [[NSMutableArray alloc] initWithObjects:
        [UIImage imageNamed:@"GSERR160101"],
        [UIImage imageNamed:@"GSERR160102"],
        [UIImage imageNamed:@"GSERR160103"],
        [UIImage imageNamed:@"GSERR160104"],
        [UIImage imageNamed:@"GSERR160105"],
        [UIImage imageNamed:@"GSERR160106"],
        [UIImage imageNamed:@"GSERR160609"],
        [UIImage imageNamed:@"GSNEC160101C"],
        [UIImage imageNamed:@"GSNEC160102"],
        [UIImage imageNamed:@"GSNES160101"],
        [UIImage imageNamed:@"GSNES160102"],
        [UIImage imageNamed:@"GSNES160103"],
        [UIImage imageNamed:@"GSPNS160101"],
        [UIImage imageNamed:@"GSPNS160102"],
        [UIImage imageNamed:@"GSRNG160101"],
        [UIImage imageNamed:@"GSRNG160102"],
        nil];
    
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return galleryArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
 
//    UIImage *galleryImage = (UIImage *) [cell viewWithTag:42];
//    UIImageView *galleryImageView = [[UIImageView alloc] initWithImage:galleryImage];
//    UILabel *galleryLabel = (UILabel *)  [cell viewWithTag:88];
//    // Configure the cell
//    [cell addSubview:galleryImageView];
//    [cell addSubview:galleryLabel];
    
//    cell.detailTextLabel.text = [self.productsDateArray objectAtIndex:indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:@"Gemstone"];

    UIImage *currentImage = [galleryArray objectAtIndex:indexPath.row];
    cell.galleryImages.image = currentImage;
    cell.galleryLabels.text = [NSString stringWithFormat:@"%li", indexPath.row+1];
//    cell.galleryImages.image = [UIImage imageNamed:[galleryArray objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>
// /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/PrivateFrameworks/AssetsLibraryServices.framework/AssetsLibraryServices (0x123c3bcc0)
// /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/System/Library/PrivateFrameworks/PhotoLibraryServices.framework/PhotoLibraryServices (0x123a526f0)
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
