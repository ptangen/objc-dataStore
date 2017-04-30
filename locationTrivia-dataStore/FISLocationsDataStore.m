//
//  FISLocationsDataStore.m
//  locationTrivia-dataStore
//
//  Created by Joe Burgess on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsDataStore.h"

@implementation FISLocationsDataStore
+ (instancetype)sharedManager {
    static FISLocationsDataStore *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[FISLocationsDataStore alloc] init];
    });

    return _sharedManager;
}


-(instancetype)init {
    self = [super init];

    if (self) {
        _locations = [[NSMutableArray alloc] init];
    }
    return self;
}


@end
