//
//  WebViewController.m
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/20/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import "WebViewController.h"
#import "DetailViewController.h"
#import "ViewController.h"

@interface WebViewController ()


@end


@implementation WebViewController
@synthesize authorWeb1;
@synthesize tweeterURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  // NSString *tweeterURL =
//NSString *tweetURL =[NSString stringWithFormat:[tweetTextDictionary1 objectForKey:@"canonical_url"]];
    //NSString *fullURL = @http://conecode.com";
    
    
    NSURL *url = [NSURL URLWithString:tweeterURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [authorWeb1 loadRequest:requestObj];
   
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
