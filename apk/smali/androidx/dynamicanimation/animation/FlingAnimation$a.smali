.class final Landroidx/dynamicanimation/animation/FlingAnimation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final c:Landroidx/dynamicanimation/animation/DynamicAnimation$o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 202
    iput v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a:F

    .line 206
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$o;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->c:Landroidx/dynamicanimation/animation/DynamicAnimation$o;

    return-void
.end method


# virtual methods
.method public isAtEquilibrium(FF)Z
    .locals 0

    .line 233
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/dynamicanimation/animation/FlingAnimation$a;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
