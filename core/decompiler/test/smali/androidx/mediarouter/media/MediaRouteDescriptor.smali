.class public final Landroidx/mediarouter/media/MediaRouteDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;
    }
.end annotation


# static fields
.field static final KEY_CAN_DISCONNECT:Ljava/lang/String; = "canDisconnect"

.field static final KEY_CONNECTING:Ljava/lang/String; = "connecting"

.field static final KEY_CONNECTION_STATE:Ljava/lang/String; = "connectionState"

.field static final KEY_CONTROL_FILTERS:Ljava/lang/String; = "controlFilters"

.field static final KEY_DESCRIPTION:Ljava/lang/String; = "status"

.field static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field static final KEY_GROUP_MEMBER_IDS:Ljava/lang/String; = "groupMemberIds"

.field static final KEY_ICON_URI:Ljava/lang/String; = "iconUri"

.field static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_MAX_CLIENT_VERSION:Ljava/lang/String; = "maxClientVersion"

.field static final KEY_MIN_CLIENT_VERSION:Ljava/lang/String; = "minClientVersion"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_PLAYBACK_STREAM:Ljava/lang/String; = "playbackStream"

.field static final KEY_PLAYBACK_TYPE:Ljava/lang/String; = "playbackType"

.field static final KEY_PRESENTATION_DISPLAY_ID:Ljava/lang/String; = "presentationDisplayId"

.field static final KEY_SETTINGS_INTENT:Ljava/lang/String; = "settingsIntent"

.field static final KEY_VOLUME:Ljava/lang/String; = "volume"

.field static final KEY_VOLUME_HANDLING:Ljava/lang/String; = "volumeHandling"

.field static final KEY_VOLUME_MAX:Ljava/lang/String; = "volumeMax"


# instance fields
.field final mBundle:Landroid/os/Bundle;

.field mControlFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/content/IntentFilter;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/os/Bundle;Ljava/util/List<Landroid/content/IntentFilter;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    .line 71
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 72
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 2

    .line 354
    if-eqz p0, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouteDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final asBundle()Landroid/os/Bundle;
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final canDisconnectAndKeepPlaying()Z
    .locals 3

    .line 175
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "canDisconnect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final ensureControlFilters()V
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "controlFilters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 200
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 204
    :cond_0
    return-void
.end method

.method public final getConnectionState()I
    .locals 3

    .line 157
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "connectionState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getControlFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Landroid/content/IntentFilter;>;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 194
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceType()I
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupMemberIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "groupMemberIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconUri()Landroid/net/Uri;
    .locals 3

    .line 128
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "iconUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxClientVersion()I
    .locals 3

    .line 294
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "maxClientVersion"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getMinClientVersion()I
    .locals 3

    .line 284
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "minClientVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaybackStream()I
    .locals 3

    .line 221
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackStream"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPlaybackType()I
    .locals 3

    .line 214
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPresentationDisplayId()I
    .locals 3

    .line 265
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "presentationDisplayId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSettingsActivity()Landroid/content/IntentSender;
    .locals 2

    .line 186
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "settingsIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    return-object v0
.end method

.method public final getVolume()I
    .locals 2

    .line 239
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getVolumeHandling()I
    .locals 3

    .line 257
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "volumeHandling"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getVolumeMax()I
    .locals 2

    .line 246
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "volumeMax"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final isConnecting()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "connecting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 3

    .line 136
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 2

    .line 301
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->ensureControlFilters()V

    .line 302
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDescriptor;->mControlFilters:Ljava/util/List;

    .line 304
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string v0, "MediaRouteDescriptor{ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, "id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, ", groupMemberIds="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getGroupMemberIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, ", name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, ", description="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, ", iconUri="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, ", isEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, ", isConnecting="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, ", connectionState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, ", controlFilters="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, ", playbackType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, ", playbackStream="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, ", deviceType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, ", volume="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, ", volumeMax="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string v0, ", volumeHandling="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string v0, ", presentationDisplayId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, ", extras="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    const-string v0, ", isValid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 332
    const-string v0, ", minClientVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getMinClientVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    const-string v0, ", maxClientVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getMaxClientVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
