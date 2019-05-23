.class public Landroidx/mediarouter/media/RemotePlaybackClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;,
        Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;,
        Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "RemotePlaybackClient"


# instance fields
.field private final mActionReceiver:Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mItemStatusPendingIntent:Landroid/app/PendingIntent;

.field private final mMessagePendingIntent:Landroid/app/PendingIntent;

.field mOnMessageReceivedListener:Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;

.field private final mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mRouteSupportsMessaging:Z

.field private mRouteSupportsQueuing:Z

.field private mRouteSupportsRemotePlayback:Z

.field private mRouteSupportsSessionManagement:Z

.field mSessionId:Ljava/lang/String;

.field private final mSessionStatusPendingIntent:Landroid/app/PendingIntent;

.field mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "RemotePlaybackClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 73
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string v0, "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v0, "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v0, "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;-><init>(Landroidx/mediarouter/media/RemotePlaybackClient;)V

    iput-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mActionReceiver:Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;

    .line 78
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mActionReceiver:Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    new-instance p2, Landroid/content/Intent;

    const-string v0, "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mItemStatusPendingIntent:Landroid/app/PendingIntent;

    .line 85
    new-instance p2, Landroid/content/Intent;

    const-string v0, "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionStatusPendingIntent:Landroid/app/PendingIntent;

    .line 90
    new-instance p2, Landroid/content/Intent;

    const-string v0, "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mMessagePendingIntent:Landroid/app/PendingIntent;

    .line 94
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->detectFeatures()V

    .line 95
    return-void
.end method

.method static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 862
    if-eqz p0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    .line 864
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 866
    :cond_0
    const-string v0, "null"

    return-object v0
.end method

.method private detectFeatures()V
    .locals 1

    .line 782
    const-string v0, "android.media.intent.action.PLAY"

    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.SEEK"

    .line 783
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.GET_STATUS"

    .line 784
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.PAUSE"

    .line 785
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.RESUME"

    .line 786
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.action.STOP"

    .line 787
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    .line 788
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.action.ENQUEUE"

    .line 789
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.media.intent.action.REMOVE"

    .line 790
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    .line 791
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.START_SESSION"

    .line 792
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.GET_SESSION_STATUS"

    .line 793
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.intent.action.END_SESSION"

    .line 794
    invoke-direct {p0, v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->routeSupportsAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    .line 795
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->doesRouteSupportMessaging()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsMessaging:Z

    .line 796
    return-void
.end method

.method private doesRouteSupportMessaging()Z
    .locals 3

    .line 803
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getControlFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 804
    const-string v1, "android.media.intent.action.SEND_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    return v0

    .line 807
    :cond_0
    goto :goto_0

    .line 808
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 843
    if-nez p1, :cond_0

    .line 845
    return-object p0

    .line 847
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    :cond_1
    return-object p1

    .line 852
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logRequest(Landroid/content/Intent;)V
    .locals 0

    .line 859
    return-void
.end method

.method private performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 7

    .line 655
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    if-eqz p2, :cond_0

    .line 657
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    :cond_0
    if-eqz p3, :cond_1

    .line 660
    const-string v0, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    :cond_1
    if-eqz p4, :cond_2

    .line 663
    invoke-virtual {p1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 665
    :cond_2
    invoke-static {p1}, Landroidx/mediarouter/media/RemotePlaybackClient;->logRequest(Landroid/content/Intent;)V

    .line 666
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    new-instance v1, Landroidx/mediarouter/media/RemotePlaybackClient$1;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RemotePlaybackClient$1;-><init>(Landroidx/mediarouter/media/RemotePlaybackClient;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->sendControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    .line 701
    return-void
.end method

.method private performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 705
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    if-eqz p2, :cond_0

    .line 707
    const-string v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :cond_0
    if-eqz p3, :cond_1

    .line 710
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 712
    :cond_1
    invoke-static {p1}, Landroidx/mediarouter/media/RemotePlaybackClient;->logRequest(Landroid/content/Intent;)V

    .line 713
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    new-instance v1, Landroidx/mediarouter/media/RemotePlaybackClient$2;

    invoke-direct {v1, p0, p2, p1, p4}, Landroidx/mediarouter/media/RemotePlaybackClient$2;-><init>(Landroidx/mediarouter/media/RemotePlaybackClient;Ljava/lang/String;Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    invoke-virtual {v0, p1, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->sendControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)V

    .line 748
    return-void
.end method

.method private playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V
    .locals 6

    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentUri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfRemotePlaybackNotSupported()V

    .line 334
    const-string v0, "android.media.intent.action.ENQUEUE"

    invoke-virtual {p8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfQueuingNotSupported()V

    .line 338
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    move-object p8, v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v0, "android.media.intent.extra.ITEM_STATUS_UPDATE_RECEIVER"

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mItemStatusPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    if-eqz p3, :cond_2

    .line 343
    const-string v0, "android.media.intent.extra.ITEM_METADATA"

    invoke-virtual {p8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_3

    .line 346
    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {p8, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 348
    :cond_3
    move-object v0, p0

    move-object v1, p8

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v4, p6

    move-object v5, p7

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 349
    return-void
.end method

.method private routeSupportsAction(Ljava/lang/String;)Z
    .locals 2

    .line 799
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const-string v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->supportsControlAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private throwIfMessageNotSupported()V
    .locals 2

    .line 831
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsMessaging:Z

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support message."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    return-void
.end method

.method private throwIfNoCurrentSession()V
    .locals 2

    .line 837
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no current session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    return-void
.end method

.method private throwIfQueuingNotSupported()V
    .locals 2

    .line 818
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support queuing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    return-void
.end method

.method private throwIfRemotePlaybackNotSupported()V
    .locals 2

    .line 812
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support remote playback."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_0
    return-void
.end method

.method private throwIfSessionManagementNotSupported()V
    .locals 2

    .line 824
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The route does not support session management."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    return-void
.end method


# virtual methods
.method adoptSession(Ljava/lang/String;)V
    .locals 0

    .line 751
    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/RemotePlaybackClient;->setSessionId(Ljava/lang/String;)V

    .line 754
    :cond_0
    return-void
.end method

.method public endSession(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 645
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 646
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.END_SESSION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 650
    return-void
.end method

.method public enqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 9

    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    const-string v8, "android.media.intent.action.ENQUEUE"

    invoke-direct/range {v0 .. v8}, Landroidx/mediarouter/media/RemotePlaybackClient;->playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStatus(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 614
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 615
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 617
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.GET_SESSION_STATUS"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 619
    return-void
.end method

.method public getStatus(Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 7

    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 414
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.GET_STATUS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    move-object v0, p0

    move-object v1, v6

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 416
    return-void
.end method

.method handleError(Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 766
    if-eqz p4, :cond_0

    .line 767
    const-string v0, "android.media.intent.extra.ERROR_CODE"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 770
    :cond_0
    const/4 v2, 0x0

    .line 772
    :goto_0
    sget-boolean v0, Landroidx/mediarouter/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 776
    invoke-static {p4}, Landroidx/mediarouter/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 778
    :cond_1
    invoke-virtual {p2, p3, v2, p4}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 779
    return-void
.end method

.method handleInvalidResult(Landroid/content/Intent;Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V
    .locals 2

    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 759
    invoke-static {p3}, Landroidx/mediarouter/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 760
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroidx/mediarouter/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 761
    return-void
.end method

.method public hasSession()Z
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMessagingSupported()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsMessaging:Z

    return v0
.end method

.method public isQueuingSupported()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsQueuing:Z

    return v0
.end method

.method public isRemotePlaybackSupported()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsRemotePlayback:Z

    return v0
.end method

.method public isSessionManagementSupported()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsSessionManagement:Z

    return v0
.end method

.method public pause(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 472
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 474
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.PAUSE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 476
    return-void
.end method

.method public play(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 9

    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    const-string v8, "android.media.intent.action.PLAY"

    invoke-direct/range {v0 .. v8}, Landroidx/mediarouter/media/RemotePlaybackClient;->playOrEnqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public release()V
    .locals 2

    .line 101
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mActionReceiver:Landroidx/mediarouter/media/RemotePlaybackClient$ActionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    return-void
.end method

.method public remove(Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 7

    .line 441
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfQueuingNotSupported()V

    .line 445
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 447
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.REMOVE"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    move-object v0, p0

    move-object v1, v6

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 449
    return-void
.end method

.method public resume(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 499
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 501
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.RESUME"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 503
    return-void
.end method

.method public seek(Ljava/lang/String;JLandroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V
    .locals 7

    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 383
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.SEEK"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v0, "android.media.intent.extra.ITEM_POSITION"

    invoke-virtual {v6, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    move-object v0, p0

    move-object v1, v6

    iget-object v2, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RemotePlaybackClient;->performItemAction(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$ItemActionCallback;)V

    .line 386
    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 585
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 586
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfMessageNotSupported()V

    .line 588
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.SEND_MESSAGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 590
    return-void
.end method

.method public setOnMessageReceivedListener(Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;)V
    .locals 0

    .line 255
    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroidx/mediarouter/media/RemotePlaybackClient$OnMessageReceivedListener;

    .line 256
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/ᴷ;->ˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;->onSessionChanged(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setStatusCallback(Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;)V
    .locals 0

    .line 242
    iput-object p1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mStatusCallback:Landroidx/mediarouter/media/RemotePlaybackClient$StatusCallback;

    .line 243
    return-void
.end method

.method public startSession(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 3

    .line 555
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfSessionManagementNotSupported()V

    .line 557
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.START_SESSION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    const-string v0, "android.media.intent.extra.SESSION_STATUS_UPDATE_RECEIVER"

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionStatusPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 560
    iget-boolean v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mRouteSupportsMessaging:Z

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "android.media.intent.extra.MESSAGE_RECEIVER"

    iget-object v1, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mMessagePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 564
    return-void
.end method

.method public stop(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V
    .locals 2

    .line 526
    invoke-direct {p0}, Landroidx/mediarouter/media/RemotePlaybackClient;->throwIfNoCurrentSession()V

    .line 528
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.intent.action.STOP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Landroidx/mediarouter/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/mediarouter/media/RemotePlaybackClient;->performSessionAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 530
    return-void
.end method
