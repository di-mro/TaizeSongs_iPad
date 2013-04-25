//
//  SingleSheetViewController.m
//  TaizeSongs_iPad
//
//  Created by Mary Rose Oh on 4/25/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

/* Displays the song sheet image from Taize based on the selected song title */

#import "SingleSheetViewController.h"

@interface SingleSheetViewController ()

@end

@implementation SingleSheetViewController

@synthesize songSheetScroller;
@synthesize songSheetImageDisplay;
@synthesize selectedSongSheet;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  NSLog(@"Taize Songs - Song Sheet Image Page View");
  NSLog(@"selectedSongSheet: %@", selectedSongSheet);
  
  [self.navigationItem setHidesBackButton:YES animated:NO];
  
  //Initialize frame for the song sheet image
  CGRect imageFrame = songSheetImageDisplay.frame; //CGRectMake(0, 0, 320, 720);
  imageFrame.size.height = 1136;
  imageFrame.size.width = 640;
  
  songSheetImageDisplay = [[UIImageView alloc] initWithFrame:imageFrame];
  songSheetImageDisplay.image = selectedSongSheet;
  
  //Configure Scroller size
  self.songSheetScroller.contentSize = CGSizeMake(704, 1424);
  [songSheetScroller addSubview:songSheetImageDisplay];
  [self.view addSubview:songSheetScroller];
  
  //Pinch-to-zoom
  self.songSheetScroller.minimumZoomScale = 0.5;
  self.songSheetScroller.maximumZoomScale = 6.0;
  
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Delegate method for pinch-to-zoom in UIScrollView
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
  return self.songSheetImageDisplay;
}


@end
