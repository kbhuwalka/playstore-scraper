.class public final Lo/KH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static ˊ(Lo/KI;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lo/KI<TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/KI;->ˎ:Lo/LQ;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo/JY;->ˊ(Lo/LQ;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lo/KI;->ˋ:Lo/LQ;

    .line 5
    const/4 v2, 0x2

    invoke-static {v1, v2, p2}, Lo/JY;->ˊ(Lo/LQ;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method static ˏ(Lo/JN;Lo/KI;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lo/JN;Lo/KI<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lo/KI;->ˎ:Lo/LQ;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lo/JY;->ˎ(Lo/JN;Lo/LQ;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lo/KI;->ˋ:Lo/LQ;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Lo/JY;->ˎ(Lo/JN;Lo/LQ;ILjava/lang/Object;)V

    .line 3
    return-void
.end method
