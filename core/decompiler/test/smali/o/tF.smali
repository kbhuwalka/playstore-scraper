.class final Lo/tF;
.super Ljava/lang/Object;

# interfaces
.implements Lo/tO;


# instance fields
.field private final synthetic ˊ:Landroid/app/Activity;

.field private final synthetic ˋ:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/tD;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lo/tF;->ˊ:Landroid/app/Activity;

    iput-object p3, p0, Lo/tF;->ˋ:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lo/tF;->ˊ:Landroid/app/Activity;

    iget-object v1, p0, Lo/tF;->ˋ:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
