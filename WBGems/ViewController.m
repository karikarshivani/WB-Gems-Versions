//
//  ViewController.m
//  WBGems
//
//  Created by Remotetiger_User on 3/23/17.
//  Copyright © 2017 Remote Tiger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
#pragma mark Copied Code Start
    
    /* NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://wbgems.online/api/get_posts/?post_type=product/", (unsigned long)page]]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                
                // handle response
                NSError *jsonError = nil;
                id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
                
                if (!jsonError) {
                    if ([jsonObject isKindOfClass:[NSDictionary class]]) {
                        
                        // fill datastore
                        [self newsIntoDataStore:(NSDictionary *)jsonObject forPage:page];
                    }
                    else {
                        NSLog(@"returned jsonObject is not a dictionary!");
                    }
                } else {
                    NSLog(@"jsonError, news: %@", jsonError);
                }
                
            }] resume];
}

- (void)newsIntoDataStore:(NSDictionary *)news forPage:(NSUInteger)page
{
    if ([[news objectForKey:@"status"] isEqualToString:@"ok"]) {
        
        self.newsPages = [[news objectForKey:@"pages"] integerValue];
        NSArray *posts = [news objectForKey:@"posts"];
        
        if (posts.count > 0) {
            // store individual posts
            
            for (NSDictionary *post in posts) {
                
                // determine post slug
                NSArray *categoriesArray = [post objectForKey:@"categories"];
                NSString *postSlug = nil;
                NSString *desiredSlug = @"news";
                
                if (categoriesArray.count > 0) {
                    for (NSDictionary *category in categoriesArray) {
                        if ([[category objectForKey:@"slug"] isEqualToString:desiredSlug]) {
                            postSlug = desiredSlug;
                        }
                    }
                }
                
                NSString *title = [post objectForKey:@"title"];
                
                NSDate *dateFromAPI = [self.dateFormatterFromAPI dateFromString:[post objectForKey:@"date"]];
                NSString *date = [self.dateFormatterForCell stringFromDate:dateFromAPI];
                
                NSString *imageURLStringOrg = [[[post objectForKey:@"thumbnail_images"] objectForKey:@"full"] objectForKey:@"url"];
                NSString *imageURLStringConverted = [imageURLStringOrg stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
                
                NSAttributedString *attributedContentString = [[NSAttributedString alloc] initWithData:[[post objectForKey:@"excerpt"] dataUsingEncoding:NSUTF8StringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: [NSNumber numberWithInt:NSUTF8StringEncoding]} documentAttributes:nil error:nil];
                NSString *content = [attributedContentString string];
                
                NSString *url = [post objectForKey:@"url"];
                
                if (title && date && imageURLStringConverted && content && url) {
                    
                    NSDictionary *postDictionary = @{@"title" : title, @"date" : date, @"imageURL" : imageURLStringConverted, @"content" : content, @"url" : url};
                    
                    [self.newsArray addObject:postDictionary];
                    
                } else {
                    NSLog(@"some post item empty, skipping this post: %lu", (unsigned long)[posts indexOfObject:post]);
                }
            }
            
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            if (self.pageLoaded < self.newsPages) {
                [self loadNewsForPage:self.pageLoaded + 1];
            } else {
                
                [self.delegate newsFetchingCompleted];
            }
        });
        
    } else {
        NSLog(@"no objects in the array");
    }
} else {
    NSLog(@"returned status NOT OK");
}


    
*/
    
    
    
#pragma mark Copied Code End
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
