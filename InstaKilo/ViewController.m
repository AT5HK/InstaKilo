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
#import "HeaderView.h"

@interface ViewController () <UICollectionViewDataSource>

@property (nonatomic) CollectionViewItems *collectionViewItems;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedContorl;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) BOOL subjectOrLocation;
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
    cell.cellPhoto.image = sectionsArray[indexPath.row][@"image"];
    

    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath{
//    NSLog(@"indexpath section: %@", indexPath);
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        HeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                                    withReuseIdentifier:@"Header" forIndexPath:indexPath];
        headerView.headerTitle.text = [self.collectionViewItems headerSubject:indexPath.section];
        return headerView;
    }
    return nil;
}

#pragma mark - UISegemented Control

-(IBAction)locationOrSubject:(id)sender {
    NSInteger selectedSegment = self.segmentedContorl.selectedSegmentIndex;
    NSLog(@"sd");
    if (selectedSegment) {
        NSLog(@"by subject");
        self.collectionViewItems.arrayOfSections = [self.collectionViewItems reorderBySubject:self.collectionViewItems.arrayOfSections];
        self.subjectOrLocation = YES;
    }
    else{
        NSLog(@"by location");
        self.collectionViewItems.arrayOfSections = [self.collectionViewItems reorderByLocation:self.collectionViewItems.arrayOfSections];
        self.subjectOrLocation = NO;
    }
    [self.collectionView reloadData];
}


@end
