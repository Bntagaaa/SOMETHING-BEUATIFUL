.class abstract Landroidx/core/view/ViewCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 4421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4422
    iput p1, p0, Landroidx/core/view/ViewCompat$b;->a:I

    .line 4423
    iput-object p2, p0, Landroidx/core/view/ViewCompat$b;->b:Ljava/lang/Class;

    .line 4424
    iput p3, p0, Landroidx/core/view/ViewCompat$b;->d:I

    .line 4425
    iput p4, p0, Landroidx/core/view/ViewCompat$b;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract b(Landroid/view/View;Ljava/lang/Object;)V
.end method

.method public final c(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 4456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/view/ViewCompat$b;->c:I

    if-lt v0, v1, :cond_0

    .line 4445
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$b;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4447
    :cond_0
    iget v0, p0, Landroidx/core/view/ViewCompat$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4448
    iget-object v0, p0, Landroidx/core/view/ViewCompat$b;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 4456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/view/ViewCompat$b;->c:I

    if-lt v0, v1, :cond_0

    .line 4431
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$b;->b(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 4432
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/core/view/ViewCompat$b;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 939
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 941
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 943
    :cond_1
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 4434
    iget v0, p0, Landroidx/core/view/ViewCompat$b;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4438
    iget p2, p0, Landroidx/core/view/ViewCompat$b;->d:I

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->f(ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4464
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
