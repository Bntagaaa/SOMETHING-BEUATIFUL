.class final Lcom/google/common/cache/a$i0;
.super Lcom/google/common/cache/a$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/a$x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1630
    invoke-direct {p0, p1}, Lcom/google/common/cache/a$x;-><init>(Ljava/lang/Object;)V

    .line 1631
    iput p2, p0, Lcom/google/common/cache/a$i0;->b:I

    return-void
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 1636
    iget v0, p0, Lcom/google/common/cache/a$i0;->b:I

    return v0
.end method
