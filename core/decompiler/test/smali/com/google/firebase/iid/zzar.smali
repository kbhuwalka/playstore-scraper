.class final synthetic Lcom/google/firebase/iid/zzar;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Ꮁ$If;


# instance fields
.field private final zzcp:Lcom/google/firebase/iid/zzaq;

.field private final zzcq:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzaq;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzar;->zzcp:Lcom/google/firebase/iid/zzaq;

    iput-object p2, p0, Lcom/google/firebase/iid/zzar;->zzcq:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final then(Lo/PL;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzar;->zzcp:Lcom/google/firebase/iid/zzaq;

    iget-object v1, p0, Lcom/google/firebase/iid/zzar;->zzcq:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/util/Pair;Lo/PL;)Lo/PL;

    move-result-object v0

    return-object v0
.end method
