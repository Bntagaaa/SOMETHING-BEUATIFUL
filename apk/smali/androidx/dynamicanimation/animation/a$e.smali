.class Landroidx/dynamicanimation/animation/a$e;
.super Landroidx/dynamicanimation/animation/a$c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/a$a;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/a$c;-><init>(Landroidx/dynamicanimation/animation/a$a;)V

    .line 199
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/dynamicanimation/animation/a$e;->b:Landroid/view/Choreographer;

    .line 204
    new-instance p1, Landroidx/dynamicanimation/animation/c;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/animation/c;-><init>(Landroidx/dynamicanimation/animation/a$e;)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/a$e;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 214
    iget-object v0, p0, Landroidx/dynamicanimation/animation/a$e;->c:Landroid/view/Choreographer$FrameCallback;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/a$e;->b:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
