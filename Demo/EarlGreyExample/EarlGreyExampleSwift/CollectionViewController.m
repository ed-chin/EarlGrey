#import "CollectionViewController.h"

#import "CollectionViewCell.h"

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.button.accessibilityIdentifier = [NSString stringWithFormat:@"cell_%ld", indexPath.item];
    return cell;
}

@end
