//
//  ViewController.h
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/16/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *searchText;
- (IBAction)searchButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *ActivityWheel;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *ActivityWheel1;

@end
