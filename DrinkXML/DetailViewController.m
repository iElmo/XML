//
//  DetailViewController.m
//  DrinkXML
//
//  Created by Dan on 17/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"

@implementation DetailViewController
@synthesize theList;

AppDelegate *app;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = theList.name;

    app = [[UIApplication sharedApplication] delegate];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [app.listArray count];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
	
	switch(indexPath.section)
	{
		case 0:
			cell.textLabel.text = theList.name;
			break;
		case 1:
			cell.textLabel.text = theList.beer;
			break;
		case 2:
			cell.textLabel.text = theList.cider;
			break;
        case 3:
			cell.textLabel.text = theList.guinness;
			break;
	}
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	NSString *sectionName = nil;
	
	switch(section)
	{
		case 0:
			sectionName = [NSString stringWithString:@"Name"];
			break;
		case 1:
			sectionName = [NSString stringWithString:@"Beer"];
			break;
		case 2:
			sectionName = [NSString stringWithString:@"Cider"];
			break;
        case 3:
			sectionName = [NSString stringWithString:@"Guiness"];
			break;
	}
	
	return sectionName;
}							
@end
