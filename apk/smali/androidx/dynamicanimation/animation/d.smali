.class Landroidx/dynamicanimation/animation/d;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 335
    iput-object p1, p0, Landroidx/dynamicanimation/animation/d;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const-string p1, "FloatValueHolder"

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 338
    iget-object p1, p0, Landroidx/dynamicanimation/animation/d;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 343
    iget-object p1, p0, Landroidx/dynamicanimation/animation/d;->a:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method
