.class Landroidx/fragment/app/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/s0$b;,
        Landroidx/fragment/app/s0$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Landroidx/fragment/app/FragmentTransitionImpl;

.field public static final c:Landroidx/fragment/app/FragmentTransitionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 48
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/fragment/app/s0;->a:[I

    .line 78
    new-instance v1, Landroidx/fragment/app/t0;

    invoke-direct {v1}, Landroidx/fragment/app/t0;-><init>()V

    .line 79
    sput-object v1, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    .line 86
    :try_start_0
    const-class v1, Landroidx/transition/FragmentTransitionSupport;

    .line 88
    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    sput-object v0, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/FragmentTransitionImpl;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3

    .line 695
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 696
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 697
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Landroidx/fragment/app/a;Landroidx/fragment/app/FragmentTransaction$a;Landroid/util/SparseArray;ZZ)V
    .locals 8

    .line 1173
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 1177
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->x:I

    if-nez v1, :cond_1

    goto/16 :goto_8

    :cond_1
    if-eqz p3, :cond_2

    .line 1181
    sget-object v2, Landroidx/fragment/app/s0;->a:[I

    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_b

    const/4 v4, 0x3

    if-eq p1, v4, :cond_9

    const/4 v4, 0x4

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_9

    const/4 v4, 0x7

    if-eq p1, v4, :cond_b

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_5

    .line 1189
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_4

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    .line 1191
    :cond_5
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    :goto_3
    move v2, p1

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_8

    .line 1206
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz p1, :cond_7

    :goto_4
    const/4 p1, 0x1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    .line 1208
    :cond_8
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_7

    goto :goto_4

    :goto_5
    move v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    if-eqz p4, :cond_a

    .line 1215
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez p1, :cond_7

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget p1, v0, Landroidx/fragment/app/Fragment;->O:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_7

    :goto_6
    goto :goto_4

    .line 1219
    :cond_a
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_7

    goto :goto_6

    :cond_b
    if-eqz p4, :cond_c

    .line 1198
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_3

    .line 1200
    :cond_c
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 1224
    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/s0$b;

    if-eqz v2, :cond_e

    if-nez v5, :cond_d

    .line 1272
    new-instance v5, Landroidx/fragment/app/s0$b;

    invoke-direct {v5}, Landroidx/fragment/app/s0$b;-><init>()V

    .line 1273
    invoke-virtual {p2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1228
    :cond_d
    iput-object v0, v5, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    .line 1229
    iput-boolean p3, v5, Landroidx/fragment/app/s0$b;->b:Z

    .line 1230
    iput-object p0, v5, Landroidx/fragment/app/s0$b;->c:Landroidx/fragment/app/a;

    :cond_e
    const/4 v2, 0x0

    if-nez p4, :cond_10

    if-eqz v3, :cond_10

    if-eqz v5, :cond_f

    .line 1233
    iget-object v3, v5, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    if-ne v3, v0, :cond_f

    .line 1234
    iput-object v2, v5, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    .line 1237
    :cond_f
    iget-boolean v3, p0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v3, :cond_10

    .line 1244
    iget-object v3, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object v6

    .line 1245
    iget-object v7, v3, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v7, v6}, Landroidx/fragment/app/l0;->g(Landroidx/fragment/app/k0;)V

    .line 1522
    iget v6, v3, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v3, v6, v0}, Landroidx/fragment/app/FragmentManager;->H(ILandroidx/fragment/app/Fragment;)V

    :cond_10
    if-eqz v4, :cond_13

    if-eqz v5, :cond_11

    .line 1249
    iget-object v3, v5, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_13

    :cond_11
    if-nez v5, :cond_12

    .line 1272
    new-instance v5, Landroidx/fragment/app/s0$b;

    invoke-direct {v5}, Landroidx/fragment/app/s0$b;-><init>()V

    .line 1273
    invoke-virtual {p2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1252
    :cond_12
    iput-object v0, v5, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    .line 1253
    iput-boolean p3, v5, Landroidx/fragment/app/s0$b;->e:Z

    .line 1254
    iput-object p0, v5, Landroidx/fragment/app/s0$b;->f:Landroidx/fragment/app/a;

    :cond_13
    if-nez p4, :cond_14

    if-eqz p1, :cond_14

    if-eqz v5, :cond_14

    .line 1257
    iget-object p0, v5, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_14

    .line 1259
    iput-object v2, v5, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    :cond_14
    :goto_8
    return-void
.end method

.method public static c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1030
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 1033
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 1035
    :cond_1
    invoke-virtual {p3}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1037
    invoke-virtual {p3, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {p3, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 1041
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 1043
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public static calculateFragments(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/s0$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1127
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$a;

    .line 1128
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/s0;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/FragmentTransaction$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static calculatePopFragments(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/s0$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    .line 2817
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->s:Landroidx/fragment/app/FragmentContainer;

    .line 1142
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1145
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 1147
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$a;

    .line 1148
    invoke-static {p0, v3, p1, v2, p2}, Landroidx/fragment/app/s0;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/FragmentTransaction$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static d(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;
    .locals 4

    .line 889
    iget-object v0, p2, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    .line 890
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 891
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_9

    if-eqz p1, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 895
    :cond_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 896
    invoke-static {p1, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->b(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 900
    iget-object v1, p2, Landroidx/fragment/app/s0$b;->c:Landroidx/fragment/app/a;

    .line 901
    iget-boolean p2, p2, Landroidx/fragment/app/s0$b;->b:Z

    if-eqz p2, :cond_2

    .line 3367
    iget-object p2, v0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez p2, :cond_1

    goto :goto_0

    .line 3370
    :cond_1
    iget-object v3, p2, Landroidx/fragment/app/Fragment$e;->t:Landroidx/core/app/SharedElementCallback;

    .line 903
    :goto_0
    iget-object p2, v1, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    goto :goto_1

    .line 905
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object v3

    .line 906
    iget-object p2, v1, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    :goto_1
    if-eqz p2, :cond_3

    .line 910
    invoke-virtual {p1, p2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 911
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v3, :cond_6

    .line 914
    invoke-virtual {v3, p2, p1}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 915
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_8

    .line 916
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 917
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    .line 919
    invoke-static {p0, v1}, Landroidx/fragment/app/s0;->h(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 921
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 923
    :cond_4
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 924
    invoke-static {p0, v1}, Landroidx/fragment/app/s0;->h(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 926
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1007
    :cond_6
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_4
    if-ltz p2, :cond_8

    .line 1008
    invoke-virtual {p0, p2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1010
    invoke-virtual {p0, p2}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_8
    return-object p1

    .line 892
    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-object v3
.end method

.method public static e(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;
    .locals 4

    .line 831
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 835
    :cond_0
    iget-object p1, p2, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    .line 836
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 837
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->b(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 841
    iget-object v2, p2, Landroidx/fragment/app/s0$b;->f:Landroidx/fragment/app/a;

    .line 842
    iget-boolean p2, p2, Landroidx/fragment/app/s0$b;->e:Z

    if-eqz p2, :cond_1

    .line 843
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->d()Landroidx/core/app/SharedElementCallback;

    move-result-object p1

    .line 844
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    goto :goto_1

    .line 3367
    :cond_1
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez p1, :cond_2

    goto :goto_0

    .line 3370
    :cond_2
    iget-object v1, p1, Landroidx/fragment/app/Fragment$e;->t:Landroidx/core/app/SharedElementCallback;

    .line 847
    :goto_0
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    move-object p1, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 851
    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p1, :cond_7

    .line 854
    invoke-virtual {p1, p2, v0}, Landroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 855
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 856
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 857
    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_4

    .line 859
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 860
    :cond_4
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 861
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 862
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    return-object v0

    .line 866
    :cond_7
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    return-object v0

    .line 832
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->clear()V

    return-object v1
.end method

.method public static f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;
    .locals 4

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 488
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 490
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 494
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 498
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    .line 505
    :cond_6
    sget-object p0, Landroidx/fragment/app/s0;->b:Landroidx/fragment/app/FragmentTransitionImpl;

    const/4 p1, 0x0

    if-eqz p0, :cond_9

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    .line 519
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object p0

    .line 508
    :cond_9
    :goto_1
    sget-object v1, Landroidx/fragment/app/s0;->c:Landroidx/fragment/app/FragmentTransitionImpl;

    if-eqz v1, :cond_c

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge p1, v2, :cond_b

    .line 519
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    return-object v1

    :cond_c
    :goto_3
    if-nez p0, :cond_d

    if-nez v1, :cond_d

    :goto_4
    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    if-eqz p1, :cond_2

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1057
    invoke-static {p2, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1060
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1062
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1063
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroidx/collection/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 940
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 942
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroidx/collection/ArrayMap;Landroidx/fragment/app/s0$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 962
    iget-object p1, p1, Landroidx/fragment/app/s0$b;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 963
    iget-object p2, p1, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 965
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 967
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 969
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/a;)V
    .locals 1

    .line 986
    iget-object v0, p5, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 989
    iget-object p4, p5, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    .line 990
    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 991
    :goto_0
    invoke-virtual {p3, p4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 992
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 995
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static k(Ljava/util/ArrayList;I)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1077
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1078
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1079
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static l(Landroid/content/Context;Landroidx/fragment/app/FragmentContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/FragmentManager$b;)V
    .locals 33

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    .line 127
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v6, p4

    :goto_0
    if-ge v6, v2, :cond_1

    .line 130
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 131
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    invoke-static {v7, v5, v3}, Landroidx/fragment/app/s0;->calculatePopFragments(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v7, v5, v3}, Landroidx/fragment/app/s0;->calculateFragments(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_38

    .line 140
    new-instance v10, Landroid/view/View;

    move-object/from16 v6, p0

    invoke-direct {v10, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_38

    .line 143
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 187
    new-instance v11, Landroidx/collection/ArrayMap;

    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v12, 0x1

    add-int/lit8 v13, v2, -0x1

    move/from16 v14, p4

    :goto_3
    if-lt v13, v14, :cond_6

    .line 189
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/fragment/app/a;

    .line 190
    invoke-virtual {v15, v9}, Landroidx/fragment/app/a;->h(I)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_7

    .line 193
    :cond_2
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 194
    iget-object v12, v15, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 195
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v16, :cond_3

    .line 199
    iget-object v7, v15, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    .line 200
    iget-object v15, v15, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    goto :goto_4

    .line 202
    :cond_3
    iget-object v7, v15, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    .line 203
    iget-object v15, v15, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    move-object/from16 v32, v15

    move-object v15, v7

    move-object/from16 v7, v32

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_5

    .line 206
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {v11, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {v11, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 212
    :cond_4
    invoke-virtual {v11, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v1, p3

    move/from16 v2, p5

    goto :goto_5

    :cond_5
    :goto_7
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    const/4 v12, 0x1

    goto :goto_3

    .line 148
    :cond_6
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/s0$b;

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentContainer;->onHasView()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v1, p1

    .line 151
    invoke-virtual {v1, v9}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    :cond_7
    move-object/from16 v0, p7

    move-object/from16 v29, v5

    move/from16 v30, v6

    move v6, v8

    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_2a

    :cond_8
    const/16 v20, 0x0

    if-eqz v3, :cond_21

    .line 237
    iget-object v7, v0, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    .line 238
    iget-object v9, v0, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    .line 239
    invoke-static {v9, v7}, Landroidx/fragment/app/s0;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v12

    if-nez v12, :cond_a

    move-object/from16 v13, p7

    move-object/from16 v29, v5

    move/from16 v30, v6

    move/from16 v17, v8

    :cond_9
    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_1a

    .line 243
    :cond_a
    iget-boolean v13, v0, Landroidx/fragment/app/s0$b;->b:Z

    .line 244
    iget-boolean v15, v0, Landroidx/fragment/app/s0$b;->e:Z

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v7, :cond_b

    move-object/from16 v29, v5

    move-object/from16 v5, v20

    goto :goto_c

    :cond_b
    if-eqz v13, :cond_c

    .line 558
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v17

    :goto_a
    move-object/from16 v29, v5

    move-object/from16 v5, v17

    goto :goto_b

    .line 559
    :cond_c
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v17

    goto :goto_a

    .line 557
    :goto_b
    invoke-virtual {v12, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_c
    if-nez v9, :cond_d

    move-object/from16 v25, v20

    goto :goto_e

    :cond_d
    if-eqz v15, :cond_e

    .line 571
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v15

    goto :goto_d

    .line 572
    :cond_e
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v15

    .line 570
    :goto_d
    invoke-virtual {v12, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v25, v15

    .line 609
    :goto_e
    iget-object v15, v0, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    move/from16 v30, v6

    .line 610
    iget-object v6, v0, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    move/from16 v17, v8

    if-eqz v15, :cond_f

    .line 612
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v8

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_f
    move/from16 v18, v13

    :goto_f
    if-eqz v15, :cond_10

    if-nez v6, :cond_11

    :cond_10
    move-object/from16 v19, v11

    move-object v6, v12

    move-object/from16 v11, v25

    goto/16 :goto_14

    .line 618
    :cond_11
    iget-boolean v8, v0, Landroidx/fragment/app/s0$b;->b:Z

    .line 619
    invoke-virtual {v11}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v13, v20

    goto :goto_11

    :cond_12
    if-eqz v8, :cond_13

    .line 544
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v13

    goto :goto_10

    .line 545
    :cond_13
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v13

    .line 543
    :goto_10
    invoke-virtual {v12, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 546
    invoke-virtual {v12, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 622
    :goto_11
    invoke-static {v11, v13, v0}, Landroidx/fragment/app/s0;->e(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;

    move-result-object v14

    .line 625
    invoke-static {v11, v13, v0}, Landroidx/fragment/app/s0;->d(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;

    move-result-object v4

    .line 628
    invoke-virtual {v11}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_16

    if-eqz v14, :cond_14

    .line 631
    invoke-virtual {v14}, Landroidx/collection/SimpleArrayMap;->clear()V

    :cond_14
    if-eqz v4, :cond_15

    .line 634
    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->clear()V

    :cond_15
    move-object/from16 v13, v20

    goto :goto_12

    :cond_16
    move-object/from16 v19, v13

    .line 638
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 637
    invoke-static {v3, v14, v13}, Landroidx/fragment/app/s0;->a(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 640
    invoke-virtual {v11}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    .line 639
    invoke-static {v1, v4, v13}, Landroidx/fragment/app/s0;->a(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    move-object/from16 v13, v19

    :goto_12
    if-nez v5, :cond_17

    if-nez v25, :cond_17

    if-nez v13, :cond_17

    move-object/from16 v19, v11

    move-object v6, v12

    move-object/from16 v12, v20

    move-object/from16 v11, v25

    goto/16 :goto_15

    :cond_17
    move-object/from16 v19, v11

    const/4 v11, 0x1

    .line 648
    invoke-static {v15, v6, v8, v14, v11}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v13, :cond_19

    .line 653
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v12, v13, v10, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 656
    iget-boolean v11, v0, Landroidx/fragment/app/s0$b;->e:Z

    move-object/from16 v27, v6

    .line 657
    iget-object v6, v0, Landroidx/fragment/app/s0$b;->f:Landroidx/fragment/app/a;

    move-object/from16 v26, v6

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v24, v14

    move-object/from16 v23, v25

    move/from16 v25, v11

    .line 658
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/s0;->j(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/a;)V

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    .line 660
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 661
    invoke-static {v4, v0, v5, v8}, Landroidx/fragment/app/s0;->i(Landroidx/collection/ArrayMap;Landroidx/fragment/app/s0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_18

    .line 664
    invoke-virtual {v6, v5, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_18
    move-object/from16 v28, v13

    move-object/from16 v26, v20

    goto :goto_13

    :cond_19
    move-object/from16 v27, v6

    move-object v6, v12

    move-object v12, v13

    move-object/from16 v11, v25

    move-object/from16 v26, v20

    move-object/from16 v28, v26

    .line 671
    :goto_13
    new-instance v21, Landroidx/fragment/app/q0;

    move-object/from16 v25, v4

    move/from16 v24, v8

    move-object/from16 v22, v15

    move-object/from16 v23, v27

    move-object/from16 v27, v6

    invoke-direct/range {v21 .. v28}, Landroidx/fragment/app/q0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_15

    :goto_14
    move-object/from16 v12, v20

    :goto_15
    if-nez v5, :cond_1a

    if-nez v12, :cond_1a

    if-nez v11, :cond_1a

    move-object/from16 v13, p7

    goto/16 :goto_9

    .line 260
    :cond_1a
    invoke-static {v6, v11, v9, v3, v10}, Landroidx/fragment/app/s0;->g(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    invoke-static {v6, v5, v7, v1, v10}, Landroidx/fragment/app/s0;->g(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x4

    .line 266
    invoke-static {v4, v8}, Landroidx/fragment/app/s0;->k(Ljava/util/ArrayList;I)V

    if-eqz v5, :cond_1c

    if-eqz v11, :cond_1c

    if-eqz v7, :cond_1c

    if-eqz v18, :cond_1b

    .line 1092
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v7

    goto :goto_16

    .line 1093
    :cond_1b
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v7

    goto :goto_16

    :cond_1c
    const/4 v7, 0x1

    :goto_16
    if-eqz v7, :cond_1d

    .line 1103
    invoke-virtual {v6, v11, v5, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_17

    .line 1108
    :cond_1d
    invoke-virtual {v6, v11, v5, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_17
    if-eqz v9, :cond_1e

    if-eqz v0, :cond_1e

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1e

    goto :goto_18

    :cond_1e
    move-object/from16 v13, p7

    goto :goto_19

    .line 273
    :cond_1f
    :goto_18
    new-instance v8, Landroidx/core/os/CancellationSignal;

    invoke-direct {v8}, Landroidx/core/os/CancellationSignal;-><init>()V

    move-object/from16 v13, p7

    .line 274
    invoke-interface {v13, v9, v8}, Landroidx/fragment/app/s0$a;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 275
    new-instance v14, Landroidx/fragment/app/m0;

    invoke-direct {v14, v13, v9, v8}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/FragmentManager$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v6, v9, v7, v8, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :goto_19
    if-eqz v7, :cond_9

    if-eqz v9, :cond_20

    if-eqz v11, :cond_20

    .line 307
    iget-boolean v8, v9, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v8, :cond_20

    iget-boolean v8, v9, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v8, :cond_20

    iget-boolean v8, v9, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v8, :cond_20

    .line 3432
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v8

    const/4 v14, 0x1

    iput-boolean v14, v8, Landroidx/fragment/app/Fragment$e;->y:Z

    .line 311
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    .line 310
    invoke-virtual {v6, v11, v8, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 327
    iget-object v8, v9, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 328
    new-instance v9, Landroidx/fragment/app/n0;

    invoke-direct {v9, v0}, Landroidx/fragment/app/n0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v9}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 286
    :cond_20
    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionImpl;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move-object/from16 v24, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v25, v11

    move-object/from16 v27, v12

    .line 287
    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, v24

    move-object/from16 v0, v28

    .line 290
    invoke-virtual {v6, v2, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v9, v19

    .line 291
    invoke-static {v2, v3, v0, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->d(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;)V

    const/4 v4, 0x0

    .line 293
    invoke-static {v1, v4}, Landroidx/fragment/app/s0;->k(Ljava/util/ArrayList;I)V

    .line 294
    invoke-virtual {v6, v12, v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1a
    move-object v0, v13

    move/from16 v6, v17

    goto/16 :goto_8

    :cond_21
    move-object/from16 v13, p7

    move-object/from16 v29, v5

    move/from16 v30, v6

    move/from16 v17, v8

    move-object v9, v11

    const/4 v4, 0x0

    .line 354
    iget-object v1, v0, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    .line 355
    iget-object v3, v0, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    .line 356
    invoke-static {v3, v1}, Landroidx/fragment/app/s0;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    if-nez v8, :cond_22

    goto :goto_1a

    .line 360
    :cond_22
    iget-boolean v5, v0, Landroidx/fragment/app/s0$b;->b:Z

    .line 361
    iget-boolean v6, v0, Landroidx/fragment/app/s0$b;->e:Z

    if-nez v1, :cond_23

    move-object/from16 v5, v20

    goto :goto_1c

    :cond_23
    if-eqz v5, :cond_24

    .line 558
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1b

    .line 559
    :cond_24
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v5

    .line 557
    :goto_1b
    invoke-virtual {v8, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1c
    if-nez v3, :cond_25

    move-object/from16 v23, v20

    goto :goto_1e

    :cond_25
    if-eqz v6, :cond_26

    .line 571
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1d

    .line 572
    :cond_26
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v6

    .line 570
    :goto_1d
    invoke-virtual {v8, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v23, v6

    .line 366
    :goto_1e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 738
    iget-object v14, v0, Landroidx/fragment/app/s0$b;->a:Landroidx/fragment/app/Fragment;

    .line 739
    iget-object v15, v0, Landroidx/fragment/app/s0$b;->d:Landroidx/fragment/app/Fragment;

    if-eqz v14, :cond_27

    if-nez v15, :cond_28

    :cond_27
    move-object v11, v0

    move-object/from16 v31, v1

    move-object v7, v5

    move-object/from16 v28, v12

    move-object v0, v13

    move-object/from16 v4, v23

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v12, v6

    move/from16 v6, v17

    goto/16 :goto_24

    .line 745
    :cond_28
    iget-boolean v7, v0, Landroidx/fragment/app/s0$b;->b:Z

    .line 746
    invoke-virtual {v9}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_29

    move-object/from16 v11, v20

    goto :goto_20

    :cond_29
    if-eqz v7, :cond_2a

    .line 544
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v11

    goto :goto_1f

    .line 545
    :cond_2a
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v11

    .line 543
    :goto_1f
    invoke-virtual {v8, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 546
    invoke-virtual {v8, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 749
    :goto_20
    invoke-static {v9, v11, v0}, Landroidx/fragment/app/s0;->e(Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;)Landroidx/collection/ArrayMap;

    move-result-object v4

    .line 752
    invoke-virtual {v9}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2b

    move-object/from16 v31, v1

    move-object/from16 v11, v20

    goto :goto_21

    :cond_2b
    move-object/from16 v31, v1

    .line 755
    invoke-virtual {v4}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_21
    if-nez v5, :cond_2c

    if-nez v23, :cond_2c

    if-nez v11, :cond_2c

    move-object v11, v0

    move-object v7, v5

    move-object/from16 v28, v12

    move-object v0, v13

    move-object/from16 v13, v20

    move-object/from16 v4, v23

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v12, v6

    move/from16 v6, v17

    goto/16 :goto_25

    :cond_2c
    const/4 v1, 0x1

    .line 763
    invoke-static {v14, v15, v7, v4, v1}, Landroidx/fragment/app/s0;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    if-eqz v11, :cond_2e

    .line 767
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 768
    invoke-virtual {v8, v11, v10, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v24, v4

    .line 770
    iget-boolean v4, v0, Landroidx/fragment/app/s0$b;->e:Z

    move/from16 v25, v4

    .line 771
    iget-object v4, v0, Landroidx/fragment/app/s0$b;->f:Landroidx/fragment/app/a;

    move-object/from16 v26, v4

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    .line 772
    invoke-static/range {v21 .. v26}, Landroidx/fragment/app/s0;->j(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/lang/Object;Landroidx/collection/ArrayMap;ZLandroidx/fragment/app/a;)V

    move-object/from16 v4, v23

    if-eqz v5, :cond_2d

    .line 775
    invoke-virtual {v8, v5, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2d
    move-object/from16 v19, v1

    :goto_22
    move/from16 v16, v7

    const/4 v1, 0x0

    goto :goto_23

    :cond_2e
    move-object/from16 v22, v11

    move-object/from16 v4, v23

    move-object/from16 v19, v20

    goto :goto_22

    .line 783
    :goto_23
    new-instance v7, Landroidx/fragment/app/r0;

    move/from16 v1, v17

    move-object/from16 v17, v6

    move v6, v1

    move-object v11, v0

    move-object/from16 v18, v5

    move-object v0, v13

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v13, v10

    move-object/from16 v10, v22

    invoke-direct/range {v7 .. v19}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/s0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v28, v12

    move-object v10, v13

    move-object/from16 v12, v17

    move-object v13, v7

    move-object/from16 v7, v18

    invoke-static {v2, v13}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-object/from16 v13, v22

    goto :goto_25

    :goto_24
    move-object/from16 v13, v20

    :goto_25
    if-nez v7, :cond_2f

    if-nez v13, :cond_2f

    if-nez v4, :cond_2f

    goto/16 :goto_2a

    .line 378
    :cond_2f
    invoke-static {v8, v4, v3, v12, v10}, Landroidx/fragment/app/s0;->g(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v26

    if-eqz v26, :cond_31

    .line 381
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_30

    goto :goto_26

    :cond_30
    move-object v15, v4

    goto :goto_27

    :cond_31
    :goto_26
    move-object/from16 v15, v20

    .line 387
    :goto_27
    invoke-virtual {v8, v7, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 389
    iget-boolean v4, v11, Landroidx/fragment/app/s0$b;->b:Z

    if-eqz v7, :cond_33

    if-eqz v15, :cond_33

    if-eqz v31, :cond_33

    if-eqz v4, :cond_32

    .line 1092
    invoke-virtual/range {v31 .. v31}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v1

    goto :goto_28

    .line 1093
    :cond_32
    invoke-virtual/range {v31 .. v31}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v1

    :cond_33
    :goto_28
    if-eqz v1, :cond_34

    .line 1103
    invoke-virtual {v8, v15, v7, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_29

    .line 1108
    :cond_34
    invoke-virtual {v8, v15, v7, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_29
    if-eqz v3, :cond_36

    if-eqz v26, :cond_36

    .line 393
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_35

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 394
    :cond_35
    new-instance v4, Landroidx/core/os/CancellationSignal;

    invoke-direct {v4}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 395
    invoke-interface {v0, v3, v4}, Landroidx/fragment/app/s0$a;->onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    .line 396
    new-instance v11, Landroidx/fragment/app/o0;

    invoke-direct {v11, v0, v3, v4}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/FragmentManager$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v8, v3, v1, v4, v11}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    :cond_36
    if-eqz v1, :cond_37

    .line 405
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v1

    move-object/from16 v23, v7

    move-object/from16 v21, v8

    move-object/from16 v27, v13

    move-object/from16 v25, v15

    .line 406
    invoke-virtual/range {v21 .. v28}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v18, v23

    move-object/from16 v12, v28

    .line 441
    new-instance v7, Landroidx/fragment/app/p0;

    move-object v3, v9

    move-object/from16 v13, v24

    move-object/from16 v15, v25

    move-object/from16 v14, v26

    move-object/from16 v11, v31

    move-object v9, v8

    move-object/from16 v8, v18

    invoke-direct/range {v7 .. v15}, Landroidx/fragment/app/p0;-><init>(Ljava/lang/Object;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v8, v9

    invoke-static {v2, v7}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 263
    new-instance v4, Landroidx/fragment/app/v0;

    invoke-direct {v4, v12, v3}, Landroidx/fragment/app/v0;-><init>(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;)V

    invoke-static {v2, v4}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 413
    invoke-virtual {v8, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 339
    new-instance v1, Landroidx/fragment/app/w0;

    invoke-direct {v1, v12, v3}, Landroidx/fragment/app/w0;-><init>(Ljava/util/ArrayList;Landroidx/collection/ArrayMap;)V

    invoke-static {v2, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_37
    :goto_2a
    add-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, v29

    move/from16 v6, v30

    goto/16 :goto_2

    :cond_38
    return-void
.end method
