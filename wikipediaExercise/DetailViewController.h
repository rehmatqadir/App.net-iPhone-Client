//
//  DetailViewController.h
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/16/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *detailText;
@property (strong, nonatomic) IBOutlet UITextView *usernameText;
@property (strong, nonatomic) NSDictionary *tweetTextDictionary;
- (IBAction)moreFromTweeter:(id)sender;


@property (strong, nonatomic)NSDictionary* tweetName;


@end
