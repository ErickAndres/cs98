//
//  ASAsteroid.m
//  Asteroids
//
//  Created by Larry Cao on 9/22/14.
//
//

#import "ASAsteroid.h"
#import "ASShip.h"
#import "ASBullet.h"

@implementation ASAsteroid

- (id)initLarge
{

    self = [super initWithImage:[NSImage imageNamed:@"asteroidLarge.png"]];
    if (self) {
        _smallerAsteroids = [@[[[[ASAsteroid alloc] initMedium] autorelease],
                              [[[ASAsteroid alloc] initMedium] autorelease]] retain];
    }
    return self;
}
- (id)initMedium
{
    self = [super initWithImage:[NSImage imageNamed:@"asteroidMedium.png"]];
    if (self) {
        _smallerAsteroids = [@[[[[ASAsteroid alloc] initSmall] autorelease],
                              [[[ASAsteroid alloc] initSmall] autorelease],
                              [[[ASAsteroid alloc] initSmall] autorelease]] retain];
    }
    return self;
}
- (id)initSmall
{
    self = [super initWithImage:[NSImage imageNamed:@"asteroidSmall.png"]];
    if (self) {
        _smallerAsteroids = [@[] retain];
    }
    return self;
}

- (void)update
{
    for (ASDrawable *drawable in self.view.drawables) {
        if ([drawable isKindOfClass:[ASShip class]] && [drawable collidesWith:self]) {
            if ([drawable shield] == nil) {
                [drawable die];
            }
        } else if ([drawable isKindOfClass:[ASBullet class]] && [drawable collidesWith:self]) {
            [drawable die];
            for (ASAsteroid *smallerAsteroid in _smallerAsteroids) {
                [self.view addDrawable:smallerAsteroid];
                smallerAsteroid.x = self.x;
                smallerAsteroid.y = self.y;
                smallerAsteroid.xVelocity = self.xVelocity + (rand() % 7) - 3;
                smallerAsteroid.yVelocity = self.yVelocity + (rand() % 7) - 3;
            }
            [self die];
        }
    }
}

- (void)dealloc
{
    [_smallerAsteroids release];
    [super dealloc];
}



@end
