.class final Lcom/google/firebase/iid/zzau;
.super Lo/HD;


# instance fields
.field private final synthetic zzcw:Lcom/google/firebase/iid/zzat;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzat;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzau;->zzcw:Lcom/google/firebase/iid/zzat;

    invoke-direct {p0, p2}, Lo/HD;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/iid/zzau;->zzcw:Lcom/google/firebase/iid/zzat;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzat;->zza(Lcom/google/firebase/iid/zzat;Landroid/os/Message;)V

    .line 3
    return-void
.end method
