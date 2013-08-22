//
//  MasterViewController.m
//  TaizeSongs_iPad
//
//  Created by Mary Rose Oh on 4/25/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import "HomePageViewController.h"

#import "DetailViewController.h"


@implementation HomePageViewController

@synthesize homePageEntries;
@synthesize homePageIcons;

- (void)awakeFromNib
{
  self.clearsSelectionOnViewWillAppear = NO;
  self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
  NSLog(@"Taize Songs - Home Page View");
  
  //Initialize display entries in Home Page
  homePageEntries = [[NSArray alloc]
                     initWithObjects: @"Song Listing"
                     , @"About"
                     , nil];
  
  homePageIcons = [[NSArray alloc]
                   initWithObjects: @"songsheet_icon.png"
                   , @"dungeon_icon.png"
                   , nil];

  
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source implementation
- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableView
{
  //Return the number of sections.
  return 1;
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section
{
  NSString *myTitle = [[NSString alloc] initWithFormat:@"Menu"];
  return myTitle;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  //Return the number of rows in the section
  return [homePageEntries count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"homePageCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  //configure the cell
  cell.textLabel.text = [self.homePageEntries objectAtIndex:indexPath.row];
  cell.imageView.image = [UIImage imageNamed:@"taize_cross_yellow.png"];
  //cell.imageView.image = [UIImage imageNamed:(NSString *)[self.homePageIcons objectAtIndex:indexPath.row]];
  
  cell.textLabel.numberOfLines = 0;
  return cell;
}


//Change the Height of the Cell [Default is 45]:
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
  return 70;
}


#pragma mark - Segue
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  switch (indexPath.row)
  {
      //Song Listing Page
    case 0: [self performSegueWithIdentifier:@"homeToSongListing" sender:self];
      break;
      //About Page
    case 1: [self performSegueWithIdentifier:@"homeToAbout" sender:self];
      break;
    default: break;
  }
}


@end
