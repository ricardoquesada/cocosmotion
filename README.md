Cocomotion
==

## Example project for [RubyMotion](http://rubymotion.com) and [Cocos2d](cocos2d-iphone.org)

## This is probably not a best practice. 

The first thing I noticed was that the bridge compiler for MacRuby/RubyMotion wouldn't traverse the subfolders for Platform/Support in Cocos2d. My banging-two-rocks together solution for now was to fork Cocos2d 2.0rc1 and move all iOS specific header files to the root lib folder. I also removed iOS-excluding #defines in case that was part of the problem too.

My fork that's currently vendored is [here](https://github.com/anydiem/cocos2d-iphone/tree/gles20)

Enjoy!

## WHO IS RESPONSIBLE FOR THIS ATROCITY?

Sean Scally
[twitter](http://twitter.com/s_scally)
[github](http://github.com/anydiem)

The fine folks at Cocos2d-iPhone and RubyMotion!

## Discomfortingly Optimistic To-Do List

* Find a way to not have to move header files to root
* Create CocoaPod

