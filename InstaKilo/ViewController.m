//
//  ViewController.m
//  InstaKilo
//
//  Created by Auston Salvana on 7/16/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"
#import "CollectionViewItems.h"

@interface ViewController () <UICollectionViewDataSource>

@property (nonatomic) CollectionViewItems *collectionViewItems;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionViewItems = [[CollectionViewItems alloc]init];
}

#pragma mark - collectionView datasource methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSArray *sectionImageArray = self.collectionViewItems.arrayOfSections[section];
    return sectionImageArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.collectionViewItems.arrayOfSections.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSArray *sectionsArray = self.collectionViewItems.arrayOfSections[indexPath.section];
    cell.cellPhoto.image = sectionsArray[indexPath.row];
    NSLog(@"current section: %d",indexPath.section);
    return cell;
}


@end
