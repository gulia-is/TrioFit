//
//  MPMoviePlayerController (BackgroundPlayback).h
//  TrioFit
//
//  Created by Gulia_Is on 28.04.16.
//  Copyright © 2016 Наталья. All rights reserved.
//

#import <UIKit/UIKit.h>

@import MediaPlayer;

@interface MPMoviePlayerController (BackgroundPlayback)

/**
 *  When enabling background playback:
 *    - The `UIBackgroundModes` array (Required background modes) in the application Info.plist file must contain the `audio` element (App plays audio or streams audio/video using AirPlay).
 *    - The audio session category must be set to `AVAudioSessionCategoryPlayback`.
 *
 *  @discussion On iOS < 7, the `backgroundPlaybackEnabled` property does nothing. Instead, you must set the `PlayVideoInBackground` boolean user default used by the MediaPlayer framework. The `PlayVideoInBackground` user default must be set before a `MPMoviePlayerController` object is created.
 */
@property (nonatomic, assign, getter = isBackgroundPlaybackEnabled) BOOL backgroundPlaybackEnabled;

@end
