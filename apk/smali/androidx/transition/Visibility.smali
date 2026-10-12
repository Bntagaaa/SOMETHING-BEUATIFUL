.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$b;,
        Landroidx/transition/Visibility$c;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final J:[Ljava/lang/String;

.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2


# instance fields
.field public I:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->J:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->I:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Landroidx/transition/Visibility;->I:I

    .line 107
    sget-object v0, Landroidx/transition/q;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    :cond_0
    return-void
.end method

.method public static m(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 150
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 153
    new-array v0, v0, [I

    .line 154
    iget-object v1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static n(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$c;
    .locals 7

    .line 195
    new-instance v0, Landroidx/transition/Visibility$c;

    invoke-direct {v0}, Landroidx/transition/Visibility$c;-><init>()V

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Landroidx/transition/Visibility$c;->a:Z

    .line 197
    iput-boolean v1, v0, Landroidx/transition/Visibility$c;->b:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 198
    const-string v4, "android:visibility:parent"

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroidx/transition/Visibility$c;->c:I

    .line 200
    iget-object v6, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/transition/Visibility$c;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_0
    iput v3, v0, Landroidx/transition/Visibility$c;->c:I

    .line 203
    iput-object v2, v0, Landroidx/transition/Visibility$c;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroidx/transition/Visibility$c;->d:I

    .line 207
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/transition/Visibility$c;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_1
    iput v3, v0, Landroidx/transition/Visibility$c;->d:I

    .line 210
    iput-object v2, v0, Landroidx/transition/Visibility$c;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 213
    iget p0, v0, Landroidx/transition/Visibility$c;->c:I

    iget p1, v0, Landroidx/transition/Visibility$c;->d:I

    if-ne p0, p1, :cond_2

    iget-object v3, v0, Landroidx/transition/Visibility$c;->e:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/transition/Visibility$c;->f:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eq p0, p1, :cond_4

    if-nez p0, :cond_3

    .line 219
    iput-boolean v1, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    return-object v0

    :cond_3
    if-nez p1, :cond_8

    .line 222
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 223
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    return-object v0

    .line 227
    :cond_4
    iget-object p0, v0, Landroidx/transition/Visibility$c;->f:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    .line 228
    iput-boolean v1, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    return-object v0

    .line 230
    :cond_5
    iget-object p0, v0, Landroidx/transition/Visibility$c;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    .line 231
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 232
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    return-object v0

    :cond_6
    if-nez p0, :cond_7

    .line 236
    iget p0, v0, Landroidx/transition/Visibility$c;->d:I

    if-nez p0, :cond_7

    .line 237
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    return-object v0

    :cond_7
    if-nez p1, :cond_8

    .line 239
    iget p0, v0, Landroidx/transition/Visibility$c;->c:I

    if-nez p0, :cond_8

    .line 240
    iput-boolean v1, v0, Landroidx/transition/Visibility$c;->b:Z

    .line 241
    iput-boolean v2, v0, Landroidx/transition/Visibility$c;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    invoke-static {p1}, Landroidx/transition/Visibility;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    invoke-static {p1}, Landroidx/transition/Visibility;->m(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
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

    .line 250
    invoke-static {p2, p3}, Landroidx/transition/Visibility;->n(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$c;

    move-result-object v0

    .line 251
    iget-boolean v1, v0, Landroidx/transition/Visibility$c;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/transition/Visibility$c;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/Visibility$c;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    iget-boolean v1, v0, Landroidx/transition/Visibility$c;->b:Z

    if-eqz v1, :cond_1

    .line 254
    iget v5, v0, Landroidx/transition/Visibility$c;->c:I

    iget v7, v0, Landroidx/transition/Visibility$c;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 257
    iget v3, v0, Landroidx/transition/Visibility$c;->c:I

    iget v5, v0, Landroidx/transition/Visibility$c;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->I:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 146
    sget-object v0, Landroidx/transition/Visibility;->J:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 510
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 511
    const-string v1, "android:visibility:visibility"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 512
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Visibility;->n(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$c;

    move-result-object p1

    .line 518
    iget-boolean p2, p1, Landroidx/transition/Visibility$c;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroidx/transition/Visibility$c;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroidx/transition/Visibility$c;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 187
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 1

    .line 283
    iget p3, p0, Landroidx/transition/Visibility;->I:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 287
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 288
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Transition;->g(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    .line 290
    invoke-virtual {p0, p3, p5}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p3

    .line 292
    invoke-static {v0, p3}, Landroidx/transition/Visibility;->n(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$c;

    move-result-object p3

    .line 293
    iget-boolean p3, p3, Landroidx/transition/Visibility$c;->a:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 297
    :cond_1
    iget-object p3, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 340
    iget v5, v0, Landroidx/transition/Visibility;->I:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_0

    :goto_0
    const/16 p3, 0x0

    goto/16 :goto_e

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 350
    iget-object v8, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 355
    :goto_1
    sget v9, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    move/from16 v22, v9

    const/16 p3, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_3
    if-eqz v8, :cond_7

    .line 365
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v10, 0x4

    if-ne v4, v10, :cond_5

    goto :goto_2

    :cond_5
    if-ne v5, v8, :cond_6

    :goto_2
    move-object v10, v8

    const/4 v8, 0x0

    :goto_3
    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz v8, :cond_6

    const/4 v10, 0x0

    goto :goto_3

    :goto_5
    if-eqz v13, :cond_12

    .line 390
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_8

    move/from16 v22, v9

    move-object/from16 v18, v10

    const/16 p3, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_c

    .line 393
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Landroid/view/View;

    if-eqz v13, :cond_12

    .line 394
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 395
    invoke-virtual {v0, v13, v12}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v14

    .line 396
    invoke-virtual {v0, v13, v12}, Landroidx/transition/Transition;->g(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v15

    .line 399
    invoke-static {v14, v15}, Landroidx/transition/Visibility;->n(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$c;

    move-result-object v14

    .line 400
    iget-boolean v14, v14, Landroidx/transition/Visibility$c;->a:Z

    if-nez v14, :cond_11

    .line 401
    sget-boolean v8, Landroidx/transition/t;->a:Z

    .line 51
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v8, v14, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 161
    sget-object v13, Landroidx/transition/f0;->a:Landroidx/transition/h0;

    invoke-virtual {v13, v5, v8}, Landroidx/transition/h0;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 177
    invoke-virtual {v13, v1, v8}, Landroidx/transition/h0;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 55
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/16 p3, 0x0

    const/4 v7, 0x0

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 57
    iget v7, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 58
    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 59
    iget v15, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/16 v16, 0x1

    .line 60
    iget v12, v13, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const/16 v17, 0x0

    .line 62
    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v11, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    sget-boolean v6, Landroidx/transition/t;->a:Z

    if-eqz v6, :cond_a

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v1, :cond_9

    goto :goto_6

    .line 95
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v18

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_6
    const/16 v18, 0x0

    .line 102
    :goto_7
    sget-boolean v19, Landroidx/transition/t;->b:Z

    if-eqz v19, :cond_c

    if-eqz v6, :cond_c

    if-nez v18, :cond_b

    move-object/from16 v2, p3

    move/from16 v22, v9

    move-object/from16 v18, v10

    goto/16 :goto_a

    .line 106
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move/from16 v20, v6

    move-object/from16 v6, v18

    check-cast v6, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    move-object/from16 v21, v6

    .line 108
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move/from16 v6, v18

    move-object/from16 v18, v10

    move v10, v6

    move-object/from16 v6, v21

    goto :goto_8

    :cond_c
    move/from16 v20, v6

    move-object/from16 v6, p3

    move-object/from16 v18, v10

    const/4 v10, 0x0

    .line 111
    :goto_8
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 112
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v21

    move/from16 v22, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-lez v4, :cond_e

    if-lez v9, :cond_e

    mul-int v3, v4, v9

    int-to-float v3, v3

    const/high16 v21, 0x49800000    # 1048576.0f

    div-float v3, v21, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, v4

    mul-float v3, v3, v2

    .line 115
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v9

    mul-float v4, v4, v2

    .line 116
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 117
    iget v9, v13, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v13, v13, Landroid/graphics/RectF;->top:F

    neg-float v13, v13

    invoke-virtual {v8, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 118
    invoke-virtual {v8, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 120
    sget-boolean v2, Landroidx/transition/t;->c:Z

    if-eqz v2, :cond_d

    .line 122
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 125
    invoke-virtual {v5, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 127
    invoke-static {v2}, Landroidx/core/view/accessibility/a;->d(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_9

    .line 130
    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 133
    invoke-virtual {v5, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_e
    move-object/from16 v2, p3

    :goto_9
    if-eqz v19, :cond_f

    if-eqz v20, :cond_f

    .line 137
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 138
    invoke-virtual {v6, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_f
    :goto_a
    if-eqz v2, :cond_10

    .line 66
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    sub-int v2, v15, v7

    const/high16 v3, 0x40000000    # 2.0f

    .line 68
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int v4, v12, v14

    .line 69
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 70
    invoke-virtual {v11, v2, v3}, Landroid/view/View;->measure(II)V

    .line 71
    invoke-virtual {v11, v7, v14, v15, v12}, Landroid/view/View;->layout(IIII)V

    move-object v10, v11

    :goto_b
    move-object/from16 v7, v18

    const/4 v12, 0x0

    goto :goto_d

    :cond_11
    move/from16 v22, v9

    move-object/from16 v18, v10

    const/16 p3, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 404
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v2

    .line 405
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    .line 406
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Landroidx/transition/Transition;->v:Z

    if-eqz v2, :cond_13

    :goto_c
    move-object v10, v5

    goto :goto_b

    :cond_12
    move/from16 v22, v9

    move-object/from16 v18, v10

    const/16 p3, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :cond_13
    move-object v10, v8

    goto :goto_b

    :goto_d
    if-eqz v10, :cond_17

    move-object/from16 v2, p2

    if-nez v12, :cond_14

    .line 421
    iget-object v3, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:visibility:screenLocation"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 422
    aget v4, v3, v17

    .line 423
    aget v3, v3, v16

    const/4 v6, 0x2

    .line 424
    new-array v6, v6, [I

    .line 425
    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 426
    aget v7, v6, v17

    sub-int/2addr v4, v7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v10, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 427
    aget v4, v6, v16

    sub-int/2addr v3, v4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v10, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 47
    new-instance v3, Landroidx/transition/x;

    invoke-direct {v3, v1}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 428
    invoke-interface {v3, v10}, Landroidx/transition/y;->add(Landroid/view/View;)V

    :cond_14
    move-object/from16 v3, p4

    .line 430
    invoke-virtual {v0, v1, v10, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    if-nez v12, :cond_16

    if-nez v2, :cond_15

    .line 47
    new-instance v3, Landroidx/transition/x;

    invoke-direct {v3, v1}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 433
    invoke-interface {v3, v10}, Landroidx/transition/y;->remove(Landroid/view/View;)V

    return-object v2

    :cond_15
    move/from16 v3, v22

    .line 435
    invoke-virtual {v5, v3, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    new-instance v3, Landroidx/transition/Visibility$a;

    invoke-direct {v3, v0, v1, v10, v5}, Landroidx/transition/Visibility$a;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    :cond_16
    return-object v2

    :cond_17
    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v7, :cond_19

    .line 467
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    .line 468
    invoke-static {v7, v5}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    .line 469
    invoke-virtual {v0, v1, v7, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 471
    new-instance v2, Landroidx/transition/Visibility$b;

    move/from16 v4, p5

    invoke-direct {v2, v4, v7}, Landroidx/transition/Visibility$b;-><init>(ILandroid/view/View;)V

    .line 473
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 475
    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object v1

    .line 477
    :cond_18
    invoke-static {v7, v4}, Landroidx/transition/f0;->c(Landroid/view/View;I)V

    return-object v1

    :cond_19
    :goto_e
    return-object p3
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 129
    iput p1, p0, Landroidx/transition/Visibility;->I:I

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
