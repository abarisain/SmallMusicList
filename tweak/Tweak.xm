#import <substrate.h>
#import <Foundation/Foundation.h>

%hook MusicStandardMediaTableViewCellContentView

+ (struct CGSize)artworkSize
{
    return (CGSize){50,50};
}

%end

// For prosperity, here is the iOS 7 hook.

/*%hook _MusicArtistTableViewCellContentView

-(void)layoutSubviewsPhone {
    UIImageView* _artworkImageView = MSHookIvar<UIImageView *>(self, "_artworkImageView");
    UILabel* _titleLabel = MSHookIvar<UILabel *>(self, "_titleLabel");
    UILabel* _detailLabel = MSHookIvar<UILabel *>(self, "_detailLabel");
    
    CGRect newRect = _titleLabel.frame;
    newRect.origin.x = 55.0f;
    newRect.origin.y = 0.0f;
    newRect.size.height = 25.0f;
    _titleLabel.frame = newRect;
    
    CGRect newDetailRect = _detailLabel.frame;
    newDetailRect.origin.x = 55.0f;
    newDetailRect.origin.y = 25.0f;
    newDetailRect.size.height = 25.0f;
    _detailLabel.frame = newDetailRect;
    
    CGRect newImageRect = _artworkImageView.frame;
    newImageRect.origin.x = 0.0f;
    newImageRect.origin.y = 0.0f;
    newImageRect.size.width = 50.0f;
    newImageRect.size.height = 50.0f;
    _artworkImageView.frame = newImageRect;
}

%end

%hook MusicArtistCellConfiguration

+(float)tableViewCellHeight {
    return 50.0f;
}

%end*/