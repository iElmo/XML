//
//  MasterViewController.h
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "List.h"
@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, retain) AppDelegate *app;
@property (nonatomic, retain) List *theList;

@end
