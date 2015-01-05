//
//  ASAsteroid.h
//  Asteroids
//
//  Created by Larry Cao on 9/22/14.
//
//

#import "ASDrawable.h"

@interface ASAsteroid : ASDrawable

{
    NSArray *_smallerAsteroids;
}


- (id)initLarge;
- (id)initMedium;
- (id)initSmall;

@end
