.class final Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Landroid/content/ComponentName;Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 922
    return-void
.end method


# virtual methods
.method public final sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Intent;Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;>;Ljava/util/List<Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;>;)V"
        }
    .end annotation

    .line 927
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 929
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 931
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 932
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 933
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 934
    const/4 v0, 0x0

    iput v0, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 935
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 941
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 942
    const/high16 v4, 0x3f800000    # 1.0f

    .line 943
    move v5, v3

    :goto_1
    if-ltz v5, :cond_2

    .line 944
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    .line 945
    iget-object v3, v2, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 946
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 947
    if-eqz v3, :cond_1

    .line 948
    iget v0, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v1, v2, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, v3, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 949
    const v0, 0x3f733333    # 0.95f

    mul-float/2addr v4, v0

    .line 943
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 953
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 960
    return-void
.end method
