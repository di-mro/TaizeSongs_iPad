//
//  SongSheetViewController.h
//  TaizeSongs_iPad
//
//  Created by Mary Rose Oh on 4/25/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongSheetViewController : UIViewController

@property int index;
@property (nonatomic, retain) NSMutableArray *songEntries;
@property (nonatomic, retain) NSMutableArray *songImages;
@property (nonatomic, retain) UIImage *songSheetImage;


@end
