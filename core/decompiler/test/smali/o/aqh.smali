.class public final Lo/aqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/aqf;


# instance fields
.field public final ˊ:Landroid/content/Context;

.field private final ˎ:Ljava/lang/String;

.field private final ˏ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/apj;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lo/apj;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lo/apj;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/aqh;->ˊ:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Lo/apj;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/aqh;->ˏ:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/aqh;->ˊ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/aqh;->ˎ:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static ˎ(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 106
    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    return-object p0

    .line 110
    :cond_1
    invoke-static {}, Lo/api;->ˏ()Lo/apn;

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lo/api;->ˏ()Lo/apn;

    .line 115
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final ˋ()Ljava/io/File;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/aqh;->ˊ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/aqh;->ˎ(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
