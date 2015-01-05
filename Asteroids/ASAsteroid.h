//
//  ASAsteroid.h
//  Asteroids
//
//  Created by Erick Andres on 11/9/14.
//
//

#import "ASDrawable.h"

@interface ASAsteroid : ASDrawable
{
    NSArray *smallerAsteroids;
}

- (id) initSmall;

- (id) initMedium;

- (id) initLarge;

- (void) update;

- (void) dealloc;

@end
