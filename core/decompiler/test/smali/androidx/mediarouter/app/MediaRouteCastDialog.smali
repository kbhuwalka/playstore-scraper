.class public Landroidx/mediarouter/app/MediaRouteCastDialog;
.super Lo/AUX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;
    }
.end annotation


# static fields
.field static final CONNECTION_TIMEOUT_MILLIS:I

.field static final MSG_UPDATE_ROUTES:I = 0x1

.field static final TAG:Ljava/lang/String; = "MediaRouteCastDialog"

.field private static final UPDATE_ROUTES_DELAY_MS:J = 0x12cL


# instance fields
.field private mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

.field private mCreated:Z

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMetadataLayout:Landroid/widget/RelativeLayout;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;"
        }
    .end annotation
.end field

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitlePlaceholder:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

.field mVolumeSliderColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;-><init>(Landroid/content/Context;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 142
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result v1

    .line 142
    invoke-direct {p0, v0, v1}, Lo/AUX;-><init>(Landroid/content/Context;I)V

    .line 94
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    .line 102
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 147
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    .line 148
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 149
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    .line 150
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 151
    return-void
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 366
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIconChanged()Z
    .locals 5

    .line 401
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->ˊ()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 402
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->ˋ()Landroid/net/Uri;

    move-result-object v2

    .line 403
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v0, :cond_2

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 404
    :goto_2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-nez v0, :cond_3

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    .line 405
    :goto_3
    if-eq v3, v1, :cond_4

    .line 406
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_4
    if-nez v3, :cond_5

    invoke-static {v4, v2}, Lo/ᴷ;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2

    .line 161
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->ˋ(Landroid/support/v4/media/session/MediaControllerCompat$iF;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 166
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    .line 169
    return-void

    .line 172
    :cond_2
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 173
    .line 176
    :catch_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->ˏ(Landroid/support/v4/media/session/MediaControllerCompat$iF;)V

    .line 179
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 180
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->ˊ()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 181
    :goto_0
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->ˊ()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 182
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 183
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    .line 184
    return-void
.end method

.method private updateMetadataLayout()V
    .locals 6

    .line 414
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->ˎ()Ljava/lang/CharSequence;

    move-result-object v2

    .line 415
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 417
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->ॱ()Ljava/lang/CharSequence;

    move-result-object v4

    .line 418
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 420
    :goto_3
    if-eqz v3, :cond_4

    .line 421
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 423
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :goto_4
    if-eqz v5, :cond_5

    .line 426
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 429
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method


# virtual methods
.method clearLoadedBitmap()V
    .locals 1

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    .line 393
    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->ˋ()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 318
    invoke-super {p0}, Lo/AUX;->onAttachedToWindow()V

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 321
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 322
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->refreshRoutes()V

    .line 323
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 324
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 261
    invoke-super {p0, p1}, Lo/AUX;->onCreate(Landroid/os/Bundle;)V

    .line 263
    sget v0, Landroidx/mediarouter/R$layout;->mr_cast_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 265
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_close_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 266
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteCastDialog$2;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_stop_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mStopCastingButton:Landroid/widget/Button;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteCastDialog$3;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$3;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    .line 284
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$if;)V

    .line 286
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$ˏ;)V

    .line 287
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeChangeListener:Landroidx/mediarouter/app/MediaRouteCastDialog$VolumeChangeListener;

    .line 288
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getControllerColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mVolumeSliderColor:I

    .line 290
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataLayout:Landroid/widget/RelativeLayout;

    .line 291
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_art:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    .line 292
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitleView:Landroid/widget/TextView;

    .line 293
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_meta_subtitle:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 295
    sget v0, Landroidx/mediarouter/R$string;->mr_cast_dialog_title_view_placeholder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mTitlePlaceholder:Ljava/lang/String;

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCreated:Z

    .line 298
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateLayout()V

    .line 299
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 328
    invoke-super {p0}, Lo/AUX;->onDetachedFromWindow()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    .line 331
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 332
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 334
    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 255
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 256
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;)V"
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 237
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 236
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 7

    .line 455
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 456
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 457
    invoke-virtual {p0, v6}, Landroidx/mediarouter/app/MediaRouteCastDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 458
    sget-object v0, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 460
    invoke-virtual {p0, v6}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateRoutes(Ljava/util/List;)V

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 467
    :cond_1
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 218
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 220
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->refreshRoutes()V

    .line 225
    :cond_2
    return-void
.end method

.method update()V
    .locals 3

    .line 337
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 339
    return-void

    .line 341
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mCreated:Z

    if-nez v0, :cond_2

    .line 342
    return-void

    .line 345
    :cond_2
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconIsLoaded:Z

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    iget v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMetadataLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->clearLoadedBitmap()V

    goto :goto_1

    .line 359
    :cond_4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    :goto_1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateMetadataLayout()V

    .line 362
    return-void
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    .line 375
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 381
    :cond_1
    new-instance v0, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    .line 382
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteCastDialog$FetchArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 383
    return-void
.end method

.method updateLayout()V
    .locals 3

    .line 307
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mArtIconUri:Landroid/net/Uri;

    .line 312
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 313
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    .line 314
    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroidx/mediarouter/media/MediaRouter$RouteInfo;>;)V"
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mLastUpdateTime:J

    .line 471
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;->setItems()V

    .line 474
    return-void
.end method
