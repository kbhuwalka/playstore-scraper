.class Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/stetho/server/SocketHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/Stetho$Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealSocketHandlerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/Stetho$Initializer;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/Stetho$Initializer;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;->this$0:Lcom/facebook/stetho/Stetho$Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/Stetho$Initializer;Lcom/facebook/stetho/Stetho$1;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;-><init>(Lcom/facebook/stetho/Stetho$Initializer;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/stetho/server/SocketHandler;
    .locals 5

    .line 459
    new-instance v3, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;

    iget-object v0, p0, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;->this$0:Lcom/facebook/stetho/Stetho$Initializer;

    .line 460
    invoke-static {v0}, Lcom/facebook/stetho/Stetho$Initializer;->access$100(Lcom/facebook/stetho/Stetho$Initializer;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;-><init>(Landroid/content/Context;)V

    .line 462
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;->this$0:Lcom/facebook/stetho/Stetho$Initializer;

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$Initializer;->getDumperPlugins()Ljava/lang/Iterable;

    move-result-object v4

    .line 463
    if-eqz v4, :cond_0

    .line 464
    new-instance v0, Lcom/facebook/stetho/dumpapp/Dumper;

    invoke-direct {v0, v4}, Lcom/facebook/stetho/dumpapp/Dumper;-><init>(Ljava/lang/Iterable;)V

    move-object v4, v0

    .line 466
    new-instance v0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;

    sget-object v1, Lcom/facebook/stetho/dumpapp/DumpappSocketLikeHandler;->PROTOCOL_MAGIC:[B

    invoke-direct {v0, v1}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;-><init>([B)V

    new-instance v1, Lcom/facebook/stetho/dumpapp/DumpappSocketLikeHandler;

    invoke-direct {v1, v4}, Lcom/facebook/stetho/dumpapp/DumpappSocketLikeHandler;-><init>(Lcom/facebook/stetho/dumpapp/Dumper;)V

    invoke-virtual {v3, v0, v1}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;->addHandler(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V

    .line 472
    new-instance v0, Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler;

    invoke-direct {v0, v4}, Lcom/facebook/stetho/dumpapp/DumpappHttpSocketLikeHandler;-><init>(Lcom/facebook/stetho/dumpapp/Dumper;)V

    move-object v4, v0

    .line 473
    new-instance v0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;

    const-string v1, "GET /dumpapp"

    .line 475
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;-><init>([B)V

    .line 473
    invoke-virtual {v3, v0, v4}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;->addHandler(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V

    .line 477
    new-instance v0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;

    const-string v1, "POST /dumpapp"

    .line 479
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$ExactMagicMatcher;-><init>([B)V

    .line 477
    invoke-virtual {v3, v0, v4}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;->addHandler(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;->this$0:Lcom/facebook/stetho/Stetho$Initializer;

    invoke-virtual {v0}, Lcom/facebook/stetho/Stetho$Initializer;->getInspectorModules()Ljava/lang/Iterable;

    move-result-object v4

    .line 484
    if-eqz v4, :cond_1

    .line 485
    new-instance v0, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$AlwaysMatchMatcher;

    invoke-direct {v0}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$AlwaysMatchMatcher;-><init>()V

    new-instance v1, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;

    iget-object v2, p0, Lcom/facebook/stetho/Stetho$Initializer$RealSocketHandlerFactory;->this$0:Lcom/facebook/stetho/Stetho$Initializer;

    .line 487
    invoke-static {v2}, Lcom/facebook/stetho/Stetho$Initializer;->access$100(Lcom/facebook/stetho/Stetho$Initializer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/facebook/stetho/inspector/DevtoolsSocketHandler;-><init>(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 485
    invoke-virtual {v3, v0, v1}, Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler;->addHandler(Lcom/facebook/stetho/server/ProtocolDetectingSocketHandler$MagicMatcher;Lcom/facebook/stetho/server/SocketLikeHandler;)V

    .line 490
    :cond_1
    return-object v3
.end method
