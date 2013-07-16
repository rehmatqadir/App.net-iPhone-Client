//
//  DetailViewController.m
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/16/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"
#import "WebViewController.h"


@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize tweetTextDictionary;
@synthesize detailText;
@synthesize usernameText;

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
	// Do any additional setup after loading the view.
    
    detailText.text = [tweetTextDictionary objectForKey:@"text"];
    usernameText.text = tweetTextDictionary [@"user"][@"username"];
}

- (IBAction)moreFromTweeter:(id)sender
{
        
    NSString *shortURL = [NSString stringWithFormat:tweetTextDictionary [@"user"][@"username"]];
    
    NSString *tweetURL = [NSString stringWithFormat:@"https://alpha.app.net/%@", shortURL];

[self performSegueWithIdentifier:@"authorWebSegue" sender:tweetURL];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    ((WebViewController*)segue.destinationViewController).tweeterURL = sender;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
