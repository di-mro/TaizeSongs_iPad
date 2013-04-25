//
//  SingleSheetViewController.h
//  TaizeSongs_iPad
//
//  Created by Mary Rose Oh on 4/25/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleSheetViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *songSheetScroller;
@property (strong, nonatomic) IBOutlet UIImageView *songSheetImageDisplay;
@property (strong, nonatomic) UIImage *selectedSongSheet;

@end
