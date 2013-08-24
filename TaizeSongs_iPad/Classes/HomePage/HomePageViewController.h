//
//  MasterViewController.h
//  TaizeSongs_iPad
//
//  Created by Mary Rose Oh on 4/25/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

#import <CoreData/CoreData.h>

@interface HomePageViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (nonatomic, retain) NSArray *homePageEntries;
@property (nonatomic, retain) NSArray *homePageIcons;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end
