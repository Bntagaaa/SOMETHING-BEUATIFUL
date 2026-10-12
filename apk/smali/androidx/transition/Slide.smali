.class public Landroidx/transition/Slide;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Slide$i;,
        Landroidx/transition/Slide$h;,
        Landroidx/transition/Slide$g;,
        Landroidx/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field public static final M:Landroid/view/animation/DecelerateInterpolator;

.field public static final N:Landroid/view/animation/AccelerateInterpolator;

.field public static final O:Landroidx/transition/Slide$a;

.field public static final P:Landroidx/transition/Slide$b;

.field public static final Q:Landroidx/transition/Slide$c;

.field public static final R:Landroidx/transition/Slide$d;

.field public static final S:Landroidx/transition/Slide$e;

.field public static final T:Landroidx/transition/Slide$f;


# instance fields
.field public K:Landroidx/transition/Slide$g;

.field public L:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->M:Landroid/view/animation/DecelerateInterpolator;

    .line 56
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->N:Landroid/view/animation/AccelerateInterpolator;

    .line 93
    new-instance v0, Landroidx/transition/Slide$a;

    invoke-direct {v0}, Landroidx/transition/Slide$a;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->O:Landroidx/transition/Slide$a;

    .line 100
    new-instance v0, Landroidx/transition/Slide$b;

    invoke-direct {v0}, Landroidx/transition/Slide$b;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->P:Landroidx/transition/Slide$b;

    .line 115
    new-instance v0, Landroidx/transition/Slide$c;

    invoke-direct {v0}, Landroidx/transition/Slide$c;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->Q:Landroidx/transition/Slide$c;

    .line 122
    new-instance v0, Landroidx/transition/Slide$d;

    invoke-direct {v0}, Landroidx/transition/Slide$d;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->R:Landroidx/transition/Slide$d;

    .line 129
    new-instance v0, Landroidx/transition/Slide$e;

    invoke-direct {v0}, Landroidx/transition/Slide$e;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->S:Landroidx/transition/Slide$e;

    .line 144
    new-instance v0, Landroidx/transition/Slide$f;

    invoke-direct {v0}, Landroidx/transition/Slide$f;-><init>()V

    sput-object v0, Landroidx/transition/Slide;->T:Landroidx/transition/Slide$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 58
    sget-object v0, Landroidx/transition/Slide;->T:Landroidx/transition/Slide$f;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    const/16 v0, 0x50

    .line 59
    iput v0, p0, Landroidx/transition/Slide;->L:I

    .line 156
    invoke-virtual {p0, v0}, Landroidx/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 162
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 58
    sget-object v0, Landroidx/transition/Slide;->T:Landroidx/transition/Slide$f;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    const/16 v0, 0x50

    .line 59
    iput v0, p0, Landroidx/transition/Slide;->L:I

    .line 163
    invoke-virtual {p0, p1}, Landroidx/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Landroidx/transition/Slide;->T:Landroidx/transition/Slide$f;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    const/16 v0, 0x50

    .line 59
    iput v0, p0, Landroidx/transition/Slide;->L:I

    .line 170
    sget-object v1, Landroidx/transition/q;->h:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "slideEdge"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p0, p2}, Landroidx/transition/Slide;->setSlideEdge(I)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 193
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 179
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x2

    .line 180
    new-array v1, v1, [I

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 182
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    .line 179
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x2

    .line 180
    new-array v1, v1, [I

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 182
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    .line 244
    iget v0, p0, Landroidx/transition/Slide;->L:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_0
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 256
    iget-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$g;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 257
    iget-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$g;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 258
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Landroidx/transition/Slide;->M:Landroid/view/animation/DecelerateInterpolator;

    move-object v9, p0

    move-object v0, p2

    move-object v1, p4

    .line 259
    invoke-static/range {v0 .. v9}, Landroidx/transition/v;->a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_0
    iget-object p4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 272
    iget-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$g;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .line 273
    iget-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    invoke-interface {v0, p1, p2}, Landroidx/transition/Slide$g;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    const/4 p1, 0x0

    .line 274
    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, Landroidx/transition/Slide;->N:Landroid/view/animation/AccelerateInterpolator;

    move-object v9, p0

    move-object v0, p2

    move-object v1, p3

    .line 275
    invoke-static/range {v0 .. v9}, Landroidx/transition/v;->a(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setSlideEdge(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 223
    sget-object v0, Landroidx/transition/Slide;->S:Landroidx/transition/Slide$e;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    sget-object v0, Landroidx/transition/Slide;->P:Landroidx/transition/Slide$b;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    goto :goto_0

    .line 217
    :cond_2
    sget-object v0, Landroidx/transition/Slide;->T:Landroidx/transition/Slide$f;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    goto :goto_0

    .line 211
    :cond_3
    sget-object v0, Landroidx/transition/Slide;->Q:Landroidx/transition/Slide$c;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    goto :goto_0

    .line 214
    :cond_4
    sget-object v0, Landroidx/transition/Slide;->R:Landroidx/transition/Slide$d;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    goto :goto_0

    .line 208
    :cond_5
    sget-object v0, Landroidx/transition/Slide;->O:Landroidx/transition/Slide$a;

    iput-object v0, p0, Landroidx/transition/Slide;->K:Landroidx/transition/Slide$g;

    .line 228
    :goto_0
    iput p1, p0, Landroidx/transition/Slide;->L:I

    .line 229
    new-instance v0, Landroidx/transition/SidePropagation;

    invoke-direct {v0}, Landroidx/transition/SidePropagation;-><init>()V

    .line 230
    invoke-virtual {v0, p1}, Landroidx/transition/SidePropagation;->setSide(I)V

    .line 231
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    return-void
.end method
