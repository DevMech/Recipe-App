//
//  RARecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Austin Mecham on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RARecipesTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView: (UITableView *)tableView;

@end
