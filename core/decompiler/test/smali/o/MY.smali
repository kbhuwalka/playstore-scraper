.class final Lo/MY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ˋ:J

.field private final synthetic ˎ:Lo/Mz;

.field private final synthetic ॱ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Mz;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/MY;->ˎ:Lo/Mz;

    iput-object p2, p0, Lo/MY;->ॱ:Ljava/lang/String;

    iput-wide p3, p0, Lo/MY;->ˋ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/MY;->ˎ:Lo/Mz;

    iget-object v1, p0, Lo/MY;->ॱ:Ljava/lang/String;

    iget-wide v2, p0, Lo/MY;->ˋ:J

    invoke-static {v0, v1, v2, v3}, Lo/Mz;->ˋ(Lo/Mz;Ljava/lang/String;J)V

    .line 3
    return-void
.end method
