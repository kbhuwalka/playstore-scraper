.class public final Lo/ᐳ$If;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Wy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᐳ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "If"
.end annotation


# instance fields
.field private synthetic ˎ:Lo/ᐳ;


# direct methods
.method public constructor <init>(Lo/ᐳ;)V
    .locals 0

    iput-object p1, p0, Lo/ᐳ$If;->ˎ:Lo/ᐳ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ(ZLjava/lang/String;)V
    .locals 3

    .line 1000
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ᐳ$If;->ˎ:Lo/ᐳ;

    .line 1000
    iget-object v0, v0, Lo/ᐳ;->ॱ:Lo/ᓕ;

    .line 1000
    const-string v1, "save(): configuration successfully saved to local storage."

    .line 2000
    sget v2, Lo/у$ˋ;->ˎ:I

    invoke-virtual {v0, v1, v2}, Lo/ᓕ;->ॱ(Ljava/lang/String;I)V

    .line 2000
    return-void

    :cond_0
    iget-object v0, p0, Lo/ᐳ$If;->ˎ:Lo/ᐳ;

    .line 3000
    iget-object v0, v0, Lo/ᐳ;->ॱ:Lo/ᓕ;

    .line 3000
    const-string v1, "save(): error saving configuration to local storage: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4000
    sget v2, Lo/у$ˋ;->ॱ:I

    invoke-virtual {v0, v1, v2}, Lo/ᓕ;->ॱ(Ljava/lang/String;I)V

    .line 4000
    return-void
.end method
