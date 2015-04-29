//
//  RARecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Austin Mecham on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RARecipesTableViewDataSource.h"
#import "RARecipes.h"

@implementation RARecipesTableViewDataSource

- (void)registerTableView: (UITableView *)tableView
{
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"identifier"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // [self methodCall] <--- method call on own class
    return [RARecipes count];
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return cell;
}
@end
