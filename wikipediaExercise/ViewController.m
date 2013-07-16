//
//  ViewController.m
//  App.Net Exercise
//
//  Created by MasterRyuX on 5/16/13.
//  Copyright (c) 2013 MasterRyuX. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize searchText;
@synthesize tableView;
//@synthesize ActivityWheel;
//@synthesize ActivityWheel1;

NSArray *data1;
NSDictionary *tweetSource;
NSDictionary *itemDictionary;
NSDictionary *tweetHolderDictionary;
NSDictionary *tweetAuthor;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    itemDictionary = [[NSDictionary alloc]init];
    


}

-(IBAction)searchButton:(id)sender {

//[searchText resignFirstResponder];
//[ActivityWheel startAnimating];
    NSString *urlString = [NSString stringWithFormat:@"https://alpha-api.app.net/stream/0/posts/stream/global"];
    
    NSURL *url = [NSURL URLWithString: urlString];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:urlRequest
                                       queue: [NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *urlResponse, NSData *data, NSError *error)
     {
         
    
         
         NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
         
         
        
         data1 =[responseDictionary objectForKey:@"data"];
         
         tweetSource = [responseDictionary objectForKey:@"source"];
        
         
         tweetHolderDictionary = [data1 objectAtIndex:0];
         tweetAuthor = [tweetSource objectForKey:@"name"];
         
         [tableView reloadData];
         
     }];

 //   [ActivityWheel1 startAnimating];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return data1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"results";
   // cell = [[UITableViewCell alloc]initwithStyle:UITableViewCellStyleSubtitle;
    UITableViewCell *cell =
    [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
   if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: @"cell"];
    }
    itemDictionary = data1[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    //cell.textLabel.font = [UIFont fontWithName:@"Optima" size:16.0];
    

cell.textLabel.text = [itemDictionary objectForKey:@"text"];
cell.detailTextLabel.text = itemDictionary[@"user"][@"username"];
 

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *selectedItem = data1[indexPath.row];
    
 //   [ActivityWheel1 stopAnimating];
                                    
[self performSegueWithIdentifier:@"detailSegue" sender:selectedItem];
                            
                                
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    ((DetailViewController*)segue.destinationViewController).tweetTextDictionary = sender;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
