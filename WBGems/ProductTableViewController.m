//
//  ProductTableViewController.m
//  WBGems
//
//  Created by Remotetiger_User on 3/28/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import "ProductTableViewController.h"
#import "GalleryCollectionViewController.h"

@interface ProductTableViewController () {
    NSMutableArray *galleryArray;
}

@end

@implementation ProductTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Products";
    self.productsTitleArray = [[NSMutableArray alloc] init];
    self.productsDateArray = [[NSMutableArray alloc] init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://wbgems.online/api/get_posts/?post_type=product/"]]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
              
                NSDictionary *jsonEntireDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
                
//                NSLog(@"%@", jsonEntireDictionary);
                
//                for (NSDictionary *temp in jsonEntireDictionary) {
//                    productsAllArray = temp[@"posts" ];
//                }
                
//                
//                NSLog(@"%@", productsAllArray);
                NSDictionary *productDictionary = [jsonEntireDictionary objectForKey:@"posts"];
//                NSLog(@"%@", productDictionary);
                
             //   productsTitleArray = [productDictionary objectForKey:@"title"];
                
               for (NSDictionary *temp in productDictionary) {
                   [self.productsTitleArray addObject:temp[@"title"]];
               }
                NSLog(@"Array is %@", self.productsTitleArray);
             
                for (NSDictionary *tempb in productDictionary) {
                    [self.productsDateArray addObject:tempb[@"date"]];
                }
                NSLog(@"Dates are %@", self.productsDateArray);
                
             
                
    
                dispatch_async(dispatch_get_main_queue(), ^{
                     [productsTableView reloadData];
                });
            }] resume];
    
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.productsTitleArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"pCell" forIndexPath:indexPath];
    
    // Configure the cell...
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"pCell"];
    }
    
    cell.textLabel.text = [self.productsTitleArray objectAtIndex:indexPath.row];
    
    cell.detailTextLabel.text = [self.productsDateArray objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"Gemstone"];
    
//    UIImage *current = [galleryArray objectAtIndex:indexPath.row];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    ProductDetailController *PDC = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    UIImage *current = galleryArray[path.row];
    [PDC setDetailImage:current];
    
}


@end
