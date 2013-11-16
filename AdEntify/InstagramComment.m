//
//  InstagramComment.m
//  AdEntify
//
//  Created by Florian Reiss on 05/11/2013.
//  Copyright (c) 2013 Florian Reiss. All rights reserved.
//

#import "InstagramComment.h"
#import "InstagramUser.h"

@interface InstagramComment ()

@property (nonatomic, strong) NSString* createdTime;
@property (nonatomic, strong) NSString* text;
@property (nonatomic, weak) InstagramUser* from;
@property (nonatomic, strong) NSString* identifier;

@end

@implementation InstagramComment

@end
