//
//  ASAsteroid.m
//  Asteroids
//
//  Created by Erick Andres on 11/9/14.
//
//

#import "ASAsteroid.h"
#import "ASDrawable.h"
#import "ASShip.h"
#import "ASBullet.h"

@implementation ASAsteroid

- (id) initSmall
{
    self = [super initWithImage: [NSImage imageNamed: @"asteroidSmall.png"]];
    smallerAsteroids = [[NSArray alloc] init]; //this makes an empty array
    return self;
}

- (id) initMedium
{
    self = [super initWithImage: [NSImage imageNamed: @"asteroidMedium.png"]];
    ASAsteroid *asteroid1 = [[ASAsteroid alloc] initSmall];
    ASAsteroid *asteroid2 = [[ASAsteroid alloc] initSmall];
    ASAsteroid *asteroid3 = [[ASAsteroid alloc] initSmall];
    smallerAsteroids = [[NSArray alloc] initWithObjects: asteroid1, asteroid2, asteroid3, nil];
    [asteroid1 release];
    [asteroid2 release];
    [asteroid3 release];
    return self;
}

- (id) initLarge
{
    self = [super initWithImage: [NSImage imageNamed: @"asteroidLarge.png"]];
    ASAsteroid *asteriod1 = [[ASAsteroid alloc] initMedium]; //creating 2 asteriod objects
    ASAsteroid *asteriod2 = [[ASAsteroid alloc] initMedium];
    smallerAsteroids = [[NSArray alloc] initWithObjects: asteriod1, asteriod2, nil];
    [asteriod1 release];
    [asteriod2 release];
    return self;
}

 - (void) update
{
    for (ASDrawable *drawable in self.view.drawables) {
        if ([drawable isKindOfClass: [ASShip class]] && [drawable collidesWith: self]) {
            ASShip *ship = (ASShip *) drawable;
            if (![ship shield]) {
                [ship die];
            }
        } else if ([drawable isKindOfClass: [ASBullet class]] && [drawable collidesWith: self]) {
            [drawable die]; //put ASBullet in [] since it uses method class I think
            for (ASDrawable *smallerAsteroid in smallerAsteroids) {
                [self.view addDrawable:smallerAsteroid];
                smallerAsteroid.x = self.x; //initial positions small asteriods located at
                smallerAsteroid.y = self.y;
                smallerAsteroid.xVelocity = self.xVelocity + (rand() % 7) - 3;  //random angle in which
                smallerAsteroid.yVelocity = self.yVelocity + (rand() % 7) - 3; //they appear
            }
            [self die];
        }
    }
}

- (void) dealloc
{
    [smallerAsteroids release];
    [super dealloc];
}

@end
