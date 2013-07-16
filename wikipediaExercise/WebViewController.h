//
//  WebViewController.h
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/20/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController:
UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *authorWeb1;
@property (strong, nonatomic) NSDictionary *tweetTextDictionary1;
@property (strong, nonatomic)
NSString *tweeterURL;
@end
