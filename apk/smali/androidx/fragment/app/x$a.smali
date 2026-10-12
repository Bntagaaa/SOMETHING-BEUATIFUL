.class Landroidx/fragment/app/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/animation/Animation;

.field public final b:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    .line 247
    iput-object p1, p0, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Landroidx/fragment/app/x$a;->a:Landroid/view/animation/Animation;

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Landroidx/fragment/app/x$a;->b:Landroid/animation/Animator;

    return-void
.end method
