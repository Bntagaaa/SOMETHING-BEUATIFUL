.class Lcom/google/common/collect/Range$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/w0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/Range$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/google/common/collect/Range$d;

    invoke-direct {v0}, Lcom/google/common/collect/Range$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$d;->a:Lcom/google/common/collect/Range$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/w0;
    .locals 0

    .line 136
    iget-object p1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$d;->apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/w0;

    move-result-object p1

    return-object p1
.end method
