//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Owner on 4/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "RARecipes.h"
static CGFloat topMargin = 20;
static CGFloat spacing = 15;
@interface RecipeDetailViewController ()


@end

@implementation RecipeDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   // Do any additional setup after loading the view.
    
    self.title = [RARecipes titleAtIndex:self.recipeIndex];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1000);
    
    [self.view addSubview: scrollView];
    
    CGFloat heightForDescription = [self heightForDescription:[RARecipes descriptionAtIndex:self.recipeIndex]];
    
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(30, spacing, self.view.frame.size.width - 2 * spacing, heightForDescription)];
    description.font = [UIFont systemFontOfSize:17];
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    description.numberOfLines = 0;
    description.backgroundColor = [UIColor purpleColor];
    
    //Is this a label?
    [scrollView addSubview:description];

    //CGFloat top =topMargin + heightForDescription + margin *2;
    
    spacing += description.frame.size.height +20;
    
    UILabel *ingredientsTitle = [[UILabel alloc] initWithFrame:CGRectMake(30, spacing, self.view.frame.size.width -2 * spacing, 20)];
    ingredientsTitle.backgroundColor = [UIColor greenColor];
    ingredientsTitle.text = @"Ingredients";
    ingredientsTitle.font =[UIFont systemFontOfSize:17];
    [scrollView addSubview:ingredientsTitle];
    
    spacing += ingredientsTitle.frame.size.height;
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i ++) {
        UILabel *ingredientsList = [[UILabel alloc]initWithFrame:CGRectMake(30, spacing, self.view.frame.size.width, 100)];
        ingredientsList.backgroundColor = [UIColor redColor];
        ingredientsList.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [ingredientsList sizeToFit];
        
        UILabel *ingredientsList = [[UILabel alloc]initWithFrame:CGRectMake(30, spacing, self.view.frame.size.width, 100)];
        ingredientsList.backgroundColor = [UIColor redColor];
        ingredientsList.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [ingredientsList sizeToFit];
        
        
        
        
        
        
        
        
        spacing += ingredientsList.frame.size.height;
        
        
        [scrollView addSubview:ingredientsList];
    }
    
    
    UILabel *directionsTitle = [[UILabel alloc] initWithFrame:CGRectMake(30, spacing, self.view.frame.size.width, 100)];
    directionsTitle.backgroundColor = [UIColor blueColor];
    directionsTitle.text = @"Directions";
    directionsTitle.font = [UIFont systemFontOfSize:17];
    [scrollView addSubview:directionsTitle];
    [directionsTitle sizeToFit];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (CGFloat)heightForDescription:(NSString *)description {
    
    CGRect bounding = [description boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * spacing, CGFLOAT_MAX)
                                                options:NSStringDrawingUsesLineFragmentOrigin
                                             attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]}
                                                context:nil];
    
    return bounding.size.height;
    
}

- (CGFloat)heightForDirections:(NSString *)description {
    
    CGRect bounding = [description boundingRectWithSize:CGSizeMake(self.view.frame.size.width - 2 * spacing - 40, CGFLOAT_MAX)
                                                options:NSStringDrawingUsesLineFragmentOrigin
                                             attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]}
                                                context:nil];
    
    return bounding.size.height;
    
}

@end
