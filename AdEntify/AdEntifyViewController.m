//
//  AdEntifyViewController.m
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import "AdEntifyViewController.h"
#import "InstagramPicture.h"
#import "DetailImageViewController.h"

@interface AdEntifyViewController ()

@property (nonatomic, strong) NSMutableArray* objects;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation AdEntifyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger number = [self.objects count];
    return number;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary* pictureDictionary = [self.objects objectAtIndex:indexPath.row];
    
    //InstagramPicture* picture = (InstagramPicture*)[self.objects objectAtIndex:indexPath.row]; // should be if time
    
    UIImageView* imageView = [[UIImageView alloc] init];
    NSString* imageURL = [[[pictureDictionary objectForKey:@"images"] objectForKey:@"thumbnail"] objectForKey:@"url"];
    imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]]];
    
    CGFloat width = [[[[pictureDictionary objectForKey:@"images"] objectForKey:@"thumbnail"] objectForKey:@"width"] floatValue];
    CGFloat height = [[[[pictureDictionary objectForKey:@"images"] objectForKey:@"thumbnail"] objectForKey:@"height"] floatValue];
    
    CGRect frame = CGRectMake(0, 0, width, height);
    imageView.frame = frame;
    
    cell.backgroundView = imageView;
    NSLog(@"%@", imageURL);
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"ImageSegue"]) {
        DetailImageViewController* detail = [segue destinationViewController];
        detail.pictureDictionary = [self.objects objectAtIndex:((NSIndexPath*)([self.collectionView indexPathsForSelectedItems][0])).row];
    }
}

#pragma mark - loading instagram

- (NSMutableArray*)loadPictures
{
    NSURLResponse *response;
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://api.instagram.com/v1/media/popular?access_token=18452965.f59def8.7edcadb656104122a92c0693f8ee9333"]];
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    NSInteger statusCode = [(NSHTTPURLResponse*)response statusCode];
    
    if(statusCode == 200) {
        
        NSDictionary *dictionaryPictures = [[NSDictionary alloc] initWithDictionary:[NSJSONSerialization JSONObjectWithData:data options:0 error:nil]];
        NSMutableArray *listInstagramPictures = [[NSMutableArray alloc] init];
        
        
        for (NSDictionary *dict in [dictionaryPictures objectForKey:@"data"]) {
            [listInstagramPictures addObject:dict];
        }
        
        return listInstagramPictures;
    }
    else
        return nil;
}

#pragma mark - getter

- (NSMutableArray *)objects
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] initWithArray:[self loadPictures]];
    }
    return _objects;
}

@end
