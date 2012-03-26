//
//  DetailViewController.h
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"
@interface DetailViewController : UIViewController{
    
    IBOutlet UITableView *tableView;

}


@property (nonatomic, retain) List *theList;
@end
