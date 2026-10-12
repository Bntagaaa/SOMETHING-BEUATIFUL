.class Landroidx/recyclerview/widget/DiffUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    .line 1039
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1043
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    aget p1, v0, p1

    return p1
.end method
