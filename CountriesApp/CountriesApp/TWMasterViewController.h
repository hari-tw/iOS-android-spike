//
//  TWMasterViewController.h
//  CountriesApp
//
//  Created by Hari Balamani on 5/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TWDetailViewController;

@interface TWMasterViewController : UITableViewController

@property (strong, nonatomic) TWDetailViewController *detailViewController;

@end
