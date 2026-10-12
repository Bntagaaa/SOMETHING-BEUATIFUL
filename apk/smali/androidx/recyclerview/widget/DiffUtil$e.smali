.class Landroidx/recyclerview/widget/DiffUtil$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    .line 582
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    .line 583
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    .line 584
    iput p4, p0, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 592
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$e;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$e;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 2

    .line 588
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$e;->b:I

    iget v1, p0, Landroidx/recyclerview/widget/DiffUtil$e;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
