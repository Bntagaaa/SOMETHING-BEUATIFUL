.class abstract Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Landroid/graphics/ColorFilter;

.field public D:Z

.field public E:Landroid/content/res/ColorStateList;

.field public F:Landroid/graphics/PorterDuff$Mode;

.field public G:Z

.field public H:Z

.field public final a:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

.field public b:Landroid/content/res/Resources;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/util/SparseArray;

.field public g:[Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$a;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V
    .locals 4

    .line 681
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 655
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    const/4 v1, 0x1

    .line 667
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 670
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 671
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 682
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 683
    iget-object v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    iput-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    .line 684
    iget v2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget v3, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->m:I

    if-nez p3, :cond_3

    goto :goto_2

    .line 1206
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_2
    if-nez v2, :cond_4

    const/16 v2, 0xa0

    .line 684
    :cond_4
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-eqz p1, :cond_e

    .line 686
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    .line 687
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 688
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    .line 689
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    .line 690
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    .line 691
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    .line 692
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->x:Z

    .line 694
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    .line 695
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    .line 696
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    .line 697
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->B:Z

    .line 698
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->C:Landroid/graphics/ColorFilter;

    .line 699
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->D:Z

    .line 700
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->E:Landroid/content/res/ColorStateList;

    .line 701
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->F:Landroid/graphics/PorterDuff$Mode;

    .line 702
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->G:Z

    .line 703
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    iput-boolean p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->H:Z

    .line 704
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->c:I

    if-ne p3, v2, :cond_7

    .line 705
    iget-boolean p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    if-eqz p3, :cond_6

    .line 707
    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    if-eqz p3, :cond_5

    .line 708
    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_5
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 709
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 711
    :cond_6
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-eqz p2, :cond_7

    .line 712
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 713
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 714
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 715
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    .line 716
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 719
    :cond_7
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    if-eqz p2, :cond_8

    .line 720
    iget p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    iput p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 721
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 723
    :cond_8
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    if-eqz p2, :cond_9

    .line 724
    iget-boolean p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    iput-boolean p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 725
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    .line 729
    :cond_9
    iget-object p2, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 730
    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 731
    iget p3, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    iput p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 732
    iget-object p1, p1, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_a

    .line 734
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    goto :goto_3

    .line 736
    :cond_a
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    .line 741
    :goto_3
    iget p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    :goto_4
    if-ge v0, p1, :cond_d

    .line 743
    aget-object p3, p2, v0

    if-eqz p3, :cond_c

    .line 744
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 746
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 748
    :cond_b
    iget-object p3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v2, p2, v0

    aput-object v2, p3, v0

    :cond_c
    :goto_5
    add-int/2addr v0, v1

    goto :goto_4

    :cond_d
    return-void

    :cond_e
    const/16 p1, 0xa

    .line 753
    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    .line 754
    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 801
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 804
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 805
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 806
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 813
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 814
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 816
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 817
    iget-object v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 806
    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .line 770
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 771
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    .line 772
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->growArray(II)V

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 775
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 776
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 777
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    .line 778
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 779
    iget v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v2

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    .line 792
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    .line 793
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    const/4 p1, 0x0

    .line 781
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    .line 782
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 783
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 784
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    return v0
.end method

.method public b()V
    .locals 4

    .line 934
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 935
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 937
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 938
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 913
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 914
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 916
    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 918
    invoke-static {v4}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    .line 922
    :cond_0
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    .line 923
    invoke-static {v4}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$a;->canApplyTheme(Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public canConstantState()Z
    .locals 6

    .line 1136
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    if-eqz v0, :cond_0

    .line 1137
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    return v0

    .line 1139
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    const/4 v0, 0x1

    .line 1140
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->v:Z

    .line 1141
    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 1142
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 1144
    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1145
    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->w:Z

    return v0
.end method

.method public computeConstantSize()V
    .locals 6

    const/4 v0, 0x1

    .line 1044
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    .line 1045
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 1046
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 1047
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    .line 1048
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    const/4 v2, 0x0

    .line 1049
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1051
    aget-object v3, v1, v2

    .line 1052
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1053
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    .line 1054
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1055
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    .line 1056
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1057
    iget v5, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    .line 1058
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 1059
    iget v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    if-le v3, v4, :cond_3

    iput v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 760
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->d:I

    iget v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 829
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    .line 834
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 835
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 837
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 838
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 813
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 814
    iget v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->y:I

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 816
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 817
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 839
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    .line 840
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 841
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 842
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->f:Landroid/util/SparseArray;

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public final getChildCount()I
    .locals 1

    .line 822
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    return v0
.end method

.method public final getConstantHeight()I
    .locals 1

    .line 1017
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->computeConstantSize()V

    .line 1020
    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->o:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    .line 1037
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->computeConstantSize()V

    .line 1040
    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->q:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    .line 1027
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->computeConstantSize()V

    .line 1030
    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->p:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    .line 968
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 971
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 974
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 976
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 977
    iget v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 978
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    .line 980
    aget-object v6, v3, v5

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_2

    .line 981
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 982
    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 983
    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 984
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 985
    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    .line 988
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->j:Z

    .line 989
    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->k:Landroid/graphics/Rect;

    return-object v1

    :cond_8
    :goto_1
    return-object v0
.end method

.method public final getConstantWidth()I
    .locals 1

    .line 1007
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->m:Z

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->computeConstantSize()V

    .line 1010
    :cond_0
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->n:I

    return v0
.end method

.method public final getOpacity()I
    .locals 6

    .line 1084
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    if-eqz v0, :cond_0

    .line 1085
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    return v0

    .line 1087
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 1088
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 1089
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    .line 1090
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v0, :cond_2

    .line 1092
    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1094
    :cond_2
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->s:I

    .line 1095
    iput-boolean v3, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->r:Z

    return v2
.end method

.method public growArray(II)V
    .locals 2

    .line 1125
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 1126
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1127
    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final isConstantSize()Z
    .locals 1

    .line 1000
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 6

    .line 1103
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    if-eqz v0, :cond_0

    .line 1104
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    return v0

    .line 1106
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->a()V

    .line 1107
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->h:I

    .line 1108
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 1111
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    :goto_1
    iput-boolean v2, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->u:Z

    .line 1117
    iput-boolean v4, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->t:Z

    return v2
.end method

.method public final setConstantSize(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->l:Z

    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0

    .line 1064
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->z:I

    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0

    .line 1072
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->A:I

    return-void
.end method

.method public final setVariablePadding(Z)V
    .locals 0

    .line 961
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$c;->i:Z

    return-void
.end method
