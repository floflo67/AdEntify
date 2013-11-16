//
//  InstagramPicture.m
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import "InstagramPicture.h"

@interface InstagramPicture ()

@property (nonatomic, strong) NSString* type;
@property (nonatomic, strong) NSArray* usersInPhoto; // of Users
@property (nonatomic, strong) NSArray* tags; // of NSString
@property (nonatomic, strong) NSArray* comments; // of Comments
@property (nonatomic, strong) NSString* caption;
@property (nonatomic, strong) NSArray* likes; // of Users
@property (nonatomic, strong) NSString* link;
@property (nonatomic, strong) NSString* user;
@property (nonatomic, strong) NSString* createdTime;

@property (nonatomic, strong) InstagramImage* images;
@property (nonatomic, strong) InstagramVideo* videos;

@property (nonatomic, strong) NSString* identifier;
@property (nonatomic, strong) NSString* location;

@end

@implementation InstagramPicture

@end
