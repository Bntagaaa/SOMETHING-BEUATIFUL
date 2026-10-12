.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;
.super Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public J:Landroidx/collection/LongSparseArray;

.field public K:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 639
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    .line 640
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    return-void

    .line 642
    :cond_0
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    .line 643
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 649
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    .line 650
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->K:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method public final d(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 654
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move/from16 v2, p1

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v5, v2, v4

    move/from16 v7, p2

    int-to-long v7, v7

    or-long/2addr v5, v7

    if-eqz p4, :cond_0

    const-wide v9, 0x200000000L

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    .line 660
    :goto_0
    iget-object v11, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    int-to-long v12, v1

    or-long v14, v12, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v5, v6, v14}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    if-eqz p4, :cond_1

    shl-long v4, v7, v4

    or-long/2addr v2, v4

    .line 663
    iget-object v4, v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;->J:Landroidx/collection/LongSparseArray;

    const-wide v5, 0x100000000L

    or-long/2addr v5, v12

    or-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->append(JLjava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 704
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 710
    new-instance v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
