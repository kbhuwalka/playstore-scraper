.class public abstract Lo/mz;
.super Lo/uB;

# interfaces
.implements Lo/mB;


# direct methods
.method public static ˎ(Landroid/os/IBinder;)Lo/mB;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.ads.omid.IOmid"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v0, v1, Lo/mB;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lo/mB;

    return-object v0

    :cond_1
    new-instance v0, Lo/mF;

    invoke-direct {v0, p0}, Lo/mF;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
