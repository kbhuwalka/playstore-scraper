.class final Lo/เ$ˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/เ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Collection<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic ˏ:Lo/เ;


# direct methods
.method constructor <init>(Lo/เ;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<+TV;>;)Z"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    .line 371
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0}, Lo/เ;->ˏ()V

    .line 372
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 376
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0, p1}, Lo/เ;->ˊ(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<*>;)Z"
        }
    .end annotation

    .line 381
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/เ$ˋ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0}, Lo/เ;->ˊ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Iterator<TV;>;"
        }
    .end annotation

    .line 397
    new-instance v0, Lo/เ$If;

    iget-object v1, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/เ$If;-><init>(Lo/เ;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 402
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0, p1}, Lo/เ;->ˊ(Ljava/lang/Object;)I

    move-result v0

    .line 403
    move p1, v0

    if-ltz v0, :cond_0

    .line 404
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0, p1}, Lo/เ;->ˏ(I)V

    .line 405
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<*>;)Z"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0}, Lo/เ;->ˊ()I

    move-result v2

    .line 413
    const/4 v3, 0x0

    .line 414
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 415
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lo/เ;->ˊ(II)Ljava/lang/Object;

    move-result-object v5

    .line 416
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0, v4}, Lo/เ;->ˏ(I)V

    .line 418
    add-int/lit8 v4, v4, -0x1

    .line 419
    add-int/lit8 v2, v2, -0x1

    .line 420
    const/4 v3, 0x1

    .line 414
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return v3
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<*>;)Z"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0}, Lo/เ;->ˊ()I

    move-result v2

    .line 429
    const/4 v3, 0x0

    .line 430
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 431
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lo/เ;->ˊ(II)Ljava/lang/Object;

    move-result-object v5

    .line 432
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0, v4}, Lo/เ;->ˏ(I)V

    .line 434
    add-int/lit8 v4, v4, -0x1

    .line 435
    add-int/lit8 v2, v2, -0x1

    .line 436
    const/4 v3, 0x1

    .line 430
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
    :cond_1
    return v3
.end method

.method public final size()I
    .locals 1

    .line 444
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    invoke-virtual {v0}, Lo/เ;->ˊ()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 449
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/เ;->ˎ(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>([TT;)[TT;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lo/เ$ˋ;->ˏ:Lo/เ;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/เ;->ˎ([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
