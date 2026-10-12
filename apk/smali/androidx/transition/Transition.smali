.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$d;,
        Landroidx/transition/Transition$c;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field public static final F:[I

.field public static final G:Landroidx/transition/PathMotion;

.field public static final H:Ljava/lang/ThreadLocal;

.field public static final MATCH_ID:I = 0x3

.field public static final MATCH_INSTANCE:I = 0x1

.field public static final MATCH_ITEM_ID:I = 0x4

.field public static final MATCH_NAME:I = 0x2


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Ljava/util/ArrayList;

.field public C:Landroidx/transition/TransitionPropagation;

.field public D:Landroidx/transition/Transition$EpicenterCallback;

.field public E:Landroidx/transition/PathMotion;

.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Landroid/animation/TimeInterpolator;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public p:Landroidx/transition/u;

.field public q:Landroidx/transition/u;

.field public r:Landroidx/transition/TransitionSet;

.field public s:[I

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:Z

.field public final w:Ljava/util/ArrayList;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 164
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/transition/Transition;->F:[I

    .line 171
    new-instance v0, Landroidx/transition/Transition$a;

    invoke-direct {v0}, Landroidx/transition/Transition$a;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->G:Landroidx/transition/PathMotion;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->H:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->b:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->c:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/u;

    invoke-direct {v1}, Landroidx/transition/u;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    .line 198
    new-instance v1, Landroidx/transition/u;

    invoke-direct {v1}, Landroidx/transition/u;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->r:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->F:[I

    iput-object v1, p0, Landroidx/transition/Transition;->s:[I

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Landroidx/transition/Transition;->v:Z

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->w:Ljava/util/ArrayList;

    .line 226
    iput v1, p0, Landroidx/transition/Transition;->x:I

    .line 229
    iput-boolean v1, p0, Landroidx/transition/Transition;->y:Z

    .line 233
    iput-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    .line 236
    iput-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Landroidx/transition/Transition;->G:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->E:Landroidx/transition/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->b:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->c:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/u;

    invoke-direct {v1}, Landroidx/transition/u;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    .line 198
    new-instance v1, Landroidx/transition/u;

    invoke-direct {v1}, Landroidx/transition/u;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->r:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->F:[I

    iput-object v1, p0, Landroidx/transition/Transition;->s:[I

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Landroidx/transition/Transition;->v:Z

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->w:Ljava/util/ArrayList;

    .line 226
    iput v1, p0, Landroidx/transition/Transition;->x:I

    .line 229
    iput-boolean v1, p0, Landroidx/transition/Transition;->y:Z

    .line 233
    iput-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    .line 236
    iput-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Landroidx/transition/Transition;->G:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->E:Landroidx/transition/PathMotion;

    .line 278
    sget-object v0, Landroidx/transition/q;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .line 280
    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v5, v2

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_0

    .line 283
    invoke-virtual {p0, v5, v6}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 285
    :cond_0
    const-string v2, "startDelay"

    const/4 v5, 0x2

    invoke-static {v0, p2, v2, v5, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v9, v2

    cmp-long v2, v9, v7

    if-lez v2, :cond_1

    .line 288
    invoke-virtual {p0, v9, v10}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 290
    :cond_1
    const-string v2, "interpolator"

    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_2

    .line 293
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 295
    :cond_2
    const-string p1, "matchOrder"

    const/4 v2, 0x3

    invoke-static {v0, p2, p1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 305
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {p2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [I

    const/4 v4, 0x0

    .line 309
    :goto_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 310
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 311
    const-string v7, "id"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    aput v2, p1, v4

    goto :goto_1

    .line 313
    :cond_3
    const-string v7, "instance"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    aput v3, p1, v4

    goto :goto_1

    .line 315
    :cond_4
    const-string v7, "name"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 316
    aput v5, p1, v4

    goto :goto_1

    .line 317
    :cond_5
    const-string v7, "itemId"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x4

    .line 318
    aput v6, p1, v4

    goto :goto_1

    .line 319
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 321
    array-length v6, p1

    sub-int/2addr v6, v3

    new-array v6, v6, [I

    .line 322
    invoke-static {p1, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    move-object p1, v6

    :goto_1
    add-int/2addr v4, v3

    goto :goto_0

    .line 326
    :cond_7
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "Unknown match type in matchOrder: \'"

    const-string v0, "\'"

    .line 0
    invoke-static {p2, v6, v0}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setMatchOrder([I)V

    .line 300
    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1532
    iget-object v0, p0, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1535
    iget-object v1, p0, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1537
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1539
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1542
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1544
    iget-object v1, p0, Landroidx/transition/u;->d:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1546
    invoke-virtual {v1, p2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1548
    :cond_2
    invoke-virtual {v1, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1553
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1554
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1555
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1556
    iget-object p0, p0, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1558
    invoke-virtual {p0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1560
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1561
    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 1564
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1565
    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static h()Landroidx/collection/ArrayMap;
    .locals 2

    .line 859
    sget-object v0, Landroidx/transition/Transition;->H:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/ArrayMap;

    if-nez v1, :cond_0

    .line 861
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2042
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 2045
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1025
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1000
    iget-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    .line 1082
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1049
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    .line 1052
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1900
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    return-void

    .line 1902
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1903
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1905
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1906
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1908
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1909
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1911
    :cond_3
    new-instance v0, Landroidx/transition/Transition$b;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$b;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1918
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1602
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1603
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 1606
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 1609
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1610
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1612
    iget-object v4, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1617
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1618
    new-instance v1, Landroidx/transition/TransitionValues;

    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    .line 1620
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 1622
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1624
    :goto_1
    iget-object v3, v1, Landroidx/transition/TransitionValues;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->c(Landroidx/transition/TransitionValues;)V

    if-eqz p2, :cond_6

    .line 1627
    iget-object v3, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1629
    :cond_6
    iget-object v3, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1632
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1634
    iget-object v1, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1637
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 1640
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1641
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1643
    iget-object v3, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1648
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1649
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1650
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/transition/Transition;->b(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    return-void
.end method

.method public c(Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 2189
    iget-object v0, p0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2190
    iget-object v0, p0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2195
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 2196
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2202
    iget-object v0, p0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public cancel()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Landroidx/transition/Transition;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 2019
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2020
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2023
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 2024
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2025
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    .line 2224
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 2225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    .line 2226
    new-instance v2, Landroidx/transition/u;

    invoke-direct {v2}, Landroidx/transition/u;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    .line 2227
    new-instance v2, Landroidx/transition/u;

    invoke-direct {v2}, Landroidx/transition/u;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    .line 2228
    iput-object v0, v1, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    .line 2229
    iput-object v0, v1, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createAnimators(Landroid/view/ViewGroup;Landroidx/transition/u;Landroidx/transition/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 21
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/u;",
            "Landroidx/transition/u;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 710
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v2

    .line 712
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 713
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_d

    move-object/from16 v9, p4

    .line 715
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/TransitionValues;

    move-object/from16 v11, p5

    .line 716
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/TransitionValues;

    if-eqz v10, :cond_0

    .line 717
    iget-object v14, v10, Landroidx/transition/TransitionValues;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v10, 0x0

    :cond_0
    if-eqz v12, :cond_1

    .line 720
    iget-object v14, v12, Landroidx/transition/TransitionValues;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v12, 0x0

    :cond_1
    if-nez v10, :cond_3

    if-nez v12, :cond_3

    :cond_2
    move/from16 v17, v4

    move/from16 v18, v8

    goto/16 :goto_5

    :cond_3
    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    .line 727
    invoke-virtual {v0, v10, v12}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 747
    :cond_4
    invoke-virtual {v0, v1, v10, v12}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v14

    if-eqz v14, :cond_2

    if-eqz v12, :cond_a

    .line 753
    iget-object v15, v12, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 754
    invoke-virtual {v0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 755
    array-length v13, v7

    if-lez v13, :cond_9

    .line 756
    new-instance v13, Landroidx/transition/TransitionValues;

    invoke-direct {v13, v15}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    move/from16 v17, v4

    move/from16 v18, v8

    move-object/from16 v4, p3

    .line 757
    iget-object v8, v4, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v8, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/TransitionValues;

    if-eqz v8, :cond_5

    const/4 v4, 0x0

    .line 759
    :goto_1
    array-length v9, v7

    if-ge v4, v9, :cond_5

    .line 760
    iget-object v9, v13, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move/from16 v19, v4

    aget-object v4, v7, v19

    move-object/from16 v20, v7

    iget-object v7, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 761
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 760
    invoke-interface {v9, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v7, v20

    goto :goto_1

    .line 764
    :cond_5
    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_8

    .line 766
    invoke-virtual {v2, v7}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    .line 767
    invoke-virtual {v2, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/transition/Transition$c;

    .line 768
    iget-object v9, v8, Landroidx/transition/Transition$c;->c:Landroidx/transition/TransitionValues;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    if-ne v9, v15, :cond_6

    iget-object v9, v8, Landroidx/transition/Transition$c;->b:Ljava/lang/String;

    move/from16 v19, v4

    .line 769
    invoke-virtual {v0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 770
    iget-object v4, v8, Landroidx/transition/Transition$c;->c:Landroidx/transition/TransitionValues;

    invoke-virtual {v4, v13}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v16, v13

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move/from16 v19, v4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v19

    goto :goto_2

    :cond_8
    move-object/from16 v16, v13

    move-object v13, v14

    goto :goto_3

    :cond_9
    move/from16 v17, v4

    move/from16 v18, v8

    move-object v13, v14

    const/16 v16, 0x0

    :goto_3
    move-object v14, v13

    move-object/from16 v13, v16

    goto :goto_4

    :cond_a
    move/from16 v17, v4

    move/from16 v18, v8

    .line 779
    iget-object v15, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v13, 0x0

    :goto_4
    if-eqz v14, :cond_c

    .line 782
    iget-object v4, v0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    if-eqz v4, :cond_b

    .line 783
    invoke-virtual {v4, v1, v0, v10, v12}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide v7

    .line 784
    iget-object v4, v0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v9, v7

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 787
    :cond_b
    new-instance v4, Landroidx/transition/Transition$c;

    invoke-virtual {v0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v7

    .line 788
    sget-object v8, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 101
    new-instance v8, Landroidx/transition/n0;

    invoke-direct {v8, v1}, Landroidx/transition/n0;-><init>(Landroid/view/View;)V

    .line 2368
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2369
    iput-object v15, v4, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    .line 2370
    iput-object v7, v4, Landroidx/transition/Transition$c;->b:Ljava/lang/String;

    .line 2371
    iput-object v13, v4, Landroidx/transition/Transition$c;->c:Landroidx/transition/TransitionValues;

    .line 2372
    iput-object v8, v4, Landroidx/transition/Transition$c;->d:Landroidx/transition/n0;

    .line 2373
    iput-object v0, v4, Landroidx/transition/Transition$c;->e:Landroidx/transition/Transition;

    .line 789
    invoke-virtual {v2, v14, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v4, v0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    add-int/lit8 v8, v18, 0x1

    move/from16 v4, v17

    goto/16 :goto_0

    .line 795
    :cond_d
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v7, 0x0

    .line 796
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_e

    .line 797
    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 798
    iget-object v2, v0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 799
    invoke-virtual {v3, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v8, v5

    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v10, v8

    .line 800
    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;Z)V
    .locals 7

    .line 1471
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->e(Z)V

    .line 1472
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1473
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1474
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1511
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/transition/Transition;->b(Landroid/view/View;Z)V

    return-void

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1475
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1476
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1477
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1479
    new-instance v5, Landroidx/transition/TransitionValues;

    invoke-direct {v5, v4}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1481
    invoke-virtual {p0, v5}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1483
    :cond_4
    invoke-virtual {p0, v5}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1485
    :goto_2
    iget-object v6, v5, Landroidx/transition/TransitionValues;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual {p0, v5}, Landroidx/transition/Transition;->c(Landroidx/transition/TransitionValues;)V

    if-eqz p2, :cond_5

    .line 1488
    iget-object v6, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    invoke-static {v6, v4, v5}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_3

    .line 1490
    :cond_5
    iget-object v6, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    invoke-static {v6, v4, v5}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1494
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 1495
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1496
    new-instance v0, Landroidx/transition/TransitionValues;

    invoke-direct {v0, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    .line 1498
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_5

    .line 1500
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1502
    :goto_5
    iget-object v3, v0, Landroidx/transition/TransitionValues;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->c(Landroidx/transition/TransitionValues;)V

    if-eqz p2, :cond_9

    .line 1505
    iget-object v3, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    invoke-static {v3, p1, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_6

    .line 1507
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    invoke-static {v3, p1, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/u;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1578
    iget-object p1, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 1579
    iget-object p1, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1580
    iget-object p1, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    return-void

    .line 1582
    :cond_0
    iget-object p1, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 1583
    iget-object p1, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1584
    iget-object p1, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object p1, p1, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method public end()V
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1958
    iget v0, p0, Landroidx/transition/Transition;->x:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->x:I

    if-nez v0, :cond_5

    .line 1960
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 1962
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1965
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1968
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object v3, v3, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1969
    iget-object v3, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    iget-object v3, v3, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1971
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1974
    :goto_2
    iget-object v3, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object v3, v3, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1975
    iget-object v3, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    iget-object v3, v3, Landroidx/transition/u;->c:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1977
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1980
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1301
    iget-object v0, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1301
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1271
    iget-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1327
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1271
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1384
    iget-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1396
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1398
    :cond_0
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1384
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1219
    iget-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1219
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1193
    iget-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1327
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1193
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1396
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1398
    :cond_0
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1357
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1245
    iget-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1163
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1165
    :cond_0
    invoke-static {p1, v0}, Landroidx/transition/Transition$d;->b(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1245
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public f(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1991
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1992
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-eqz p1, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 1997
    :cond_0
    sget-object v2, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 101
    new-instance v2, Landroidx/transition/n0;

    invoke-direct {v2, p1}, Landroidx/transition/n0;-><init>(Landroid/view/View;)V

    .line 1998
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1, v0}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 1999
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2002
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/Transition$c;

    .line 2003
    iget-object v3, v0, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroidx/transition/Transition$c;->d:Landroidx/transition/n0;

    invoke-virtual {v2, v0}, Landroidx/transition/n0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2005
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 4

    .line 1682
    iget-object v0, p0, Landroidx/transition/Transition;->r:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1683
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->g(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1685
    iget-object v0, p0, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_4

    .line 1689
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 1692
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    if-nez v3, :cond_3

    goto :goto_4

    .line 1697
    :cond_3
    iget-object v3, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_7

    if-eqz p2, :cond_6

    .line 1704
    iget-object p1, p0, Landroidx/transition/Transition;->u:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/transition/Transition;->t:Ljava/util/ArrayList;

    .line 1705
    :goto_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/TransitionValues;

    return-object p1

    :cond_7
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDuration()J
    .locals 2

    .line 357
    iget-wide v0, p0, Landroidx/transition/Transition;->c:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2146
    iget-object v0, p0, Landroidx/transition/Transition;->D:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2149
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2133
    iget-object v0, p0, Landroidx/transition/Transition;->D:Landroidx/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 412
    iget-object v0, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2250
    iget-object v0, p0, Landroidx/transition/Transition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2103
    iget-object v0, p0, Landroidx/transition/Transition;->E:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2181
    iget-object v0, p0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 384
    iget-wide v0, p0, Landroidx/transition/Transition;->b:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1663
    iget-object v0, p0, Landroidx/transition/Transition;->r:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0, p1, p2}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1666
    iget-object p2, p0, Landroidx/transition/Transition;->p:Landroidx/transition/u;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/transition/Transition;->q:Landroidx/transition/u;

    .line 1667
    :goto_0
    iget-object p2, p2, Landroidx/transition/u;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/TransitionValues;

    return-object p1
.end method

.method public final i(Landroid/view/View;)Z
    .locals 6

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 817
    iget-object v1, p0, Landroidx/transition/Transition;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 820
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 823
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 824
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 826
    iget-object v4, p0, Landroidx/transition/Transition;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 827
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 832
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 833
    iget-object v1, p0, Landroidx/transition/Transition;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 837
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-nez v3, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 838
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 839
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return v5

    .line 842
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 845
    :cond_8
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v5

    .line 848
    :cond_9
    iget-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 849
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 850
    iget-object v1, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v5

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v5
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 8
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 1844
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1846
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v1, v4

    .line 1866
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1867
    iget-object v7, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    if-eqz v6, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    .line 1877
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1853
    :cond_4
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1866
    iget-object v4, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1867
    iget-object v5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v4, :cond_6

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    goto :goto_3

    .line 1877
    :cond_7
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_5

    :goto_5
    return v2

    :cond_9
    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 2213
    iput-boolean v0, p0, Landroidx/transition/Transition;->v:Z

    return-void
.end method

.method public k(Landroid/view/ViewGroup;)V
    .locals 0

    .line 2209
    return-void
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 0
    invoke-static {p1}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2256
    iget-wide v0, p0, Landroidx/transition/Transition;->c:J

    const-string v2, ") "

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 2257
    const-string v0, "dur("

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2257
    iget-wide v0, p0, Landroidx/transition/Transition;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2259
    :cond_0
    iget-wide v0, p0, Landroidx/transition/Transition;->b:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 2260
    const-string v0, "dly("

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2260
    iget-wide v0, p0, Landroidx/transition/Transition;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2263
    const-string v0, "interp("

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2263
    iget-object v0, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2265
    :cond_2
    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    .line 2266
    :cond_4
    :goto_0
    const-string v1, "tgts("

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2267
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, ", "

    const/4 v4, 0x0

    if-lez v1, :cond_6

    const/4 v1, 0x0

    .line 2268
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    if-lez v1, :cond_5

    .line 0
    invoke-static {p1, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 0
    :cond_5
    invoke-static {p1}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2275
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2276
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    if-lez v4, :cond_7

    .line 0
    invoke-static {p1, v3}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 0
    :cond_7
    invoke-static {p1}, L_COROUTINE/a;->p(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2280
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2283
    :cond_8
    const-string v0, ")"

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pause(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1719
    iget-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    if-nez v1, :cond_3

    .line 1720
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v1

    .line 1721
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    .line 1722
    sget-object v3, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 101
    new-instance v3, Landroidx/transition/n0;

    invoke-direct {v3, p1}, Landroidx/transition/n0;-><init>(Landroid/view/View;)V

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 1724
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/Transition$c;

    .line 1725
    iget-object v4, p1, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object p1, p1, Landroidx/transition/Transition$c;->d:Landroidx/transition/n0;

    invoke-virtual {v3, p1}, Landroidx/transition/n0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1726
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    .line 38
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1730
    :cond_1
    iget-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1731
    iget-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1735
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    add-int/2addr v2, v0

    goto :goto_1

    .line 1738
    :cond_2
    iput-boolean v0, p0, Landroidx/transition/Transition;->y:Z

    :cond_3
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroidx/transition/Transition$TransitionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2058
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2061
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2062
    iget-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2063
    iput-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/Transition;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1098
    iget-object v0, p0, Landroidx/transition/Transition;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroidx/transition/Transition;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1132
    iget-object v0, p0, Landroidx/transition/Transition;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1751
    iget-boolean v0, p0, Landroidx/transition/Transition;->y:Z

    if-eqz v0, :cond_3

    .line 1752
    iget-boolean v0, p0, Landroidx/transition/Transition;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1753
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1754
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    .line 1755
    sget-object v3, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    .line 101
    new-instance v3, Landroidx/transition/n0;

    invoke-direct {v3, p1}, Landroidx/transition/n0;-><init>(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1757
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/Transition$c;

    .line 1758
    iget-object v4, p1, Landroidx/transition/Transition$c;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object p1, p1, Landroidx/transition/Transition$c;->d:Landroidx/transition/n0;

    invoke-virtual {v3, p1}, Landroidx/transition/n0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1759
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    .line 54
    invoke-virtual {p1}, Landroid/animation/Animator;->resume()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1763
    :cond_1
    iget-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1764
    iget-object p1, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1766
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1768
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1772
    :cond_2
    iput-boolean v1, p0, Landroidx/transition/Transition;->y:Z

    :cond_3
    return-void
.end method

.method public runAnimators()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 879
    invoke-static {}, Landroidx/transition/Transition;->h()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 881
    iget-object v1, p0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 885
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    if-eqz v2, :cond_0

    .line 898
    new-instance v3, Landroidx/transition/s;

    invoke-direct {v3, p0, v0}, Landroidx/transition/s;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 910
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 344
    iput-wide p1, p0, Landroidx/transition/Transition;->c:J

    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1    # Landroidx/transition/Transition$EpicenterCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2118
    iput-object p1, p0, Landroidx/transition/Transition;->D:Landroidx/transition/Transition$EpicenterCallback;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 398
    iput-object p1, p0, Landroidx/transition/Transition;->d:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 5

    if-eqz p1, :cond_5

    .line 510
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 513
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 514
    aget v2, p1, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 533
    aget v4, p1, v3

    if-eq v4, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 519
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/transition/Transition;->s:[I

    return-void

    .line 511
    :cond_5
    :goto_2
    sget-object p1, Landroidx/transition/Transition;->F:[I

    iput-object p1, p0, Landroidx/transition/Transition;->s:[I

    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 2086
    sget-object p1, Landroidx/transition/Transition;->G:Landroidx/transition/PathMotion;

    iput-object p1, p0, Landroidx/transition/Transition;->E:Landroidx/transition/PathMotion;

    return-void

    .line 2088
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->E:Landroidx/transition/PathMotion;

    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionPropagation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2164
    iput-object p1, p0, Landroidx/transition/Transition;->C:Landroidx/transition/TransitionPropagation;

    return-void
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 371
    iput-wide p1, p0, Landroidx/transition/Transition;->b:J

    return-object p0
.end method

.method public start()V
    .locals 5
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1931
    iget v0, p0, Landroidx/transition/Transition;->x:I

    if-nez v0, :cond_1

    .line 1932
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1933
    iget-object v0, p0, Landroidx/transition/Transition;->A:Ljava/util/ArrayList;

    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1937
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1940
    :cond_0
    iput-boolean v1, p0, Landroidx/transition/Transition;->z:Z

    .line 1942
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->x:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2218
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
