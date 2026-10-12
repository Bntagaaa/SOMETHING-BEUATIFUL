.class Lcom/google/common/collect/Multisets$j;
.super Lcom/google/common/collect/Multisets$e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$e<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$e;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/google/common/collect/Multisets$j;->a:Ljava/lang/Object;

    .line 222
    iput p2, p0, Lcom/google/common/collect/Multisets$j;->b:I

    .line 223
    const-string p1, "count"

    invoke-static {p2, p1}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/google/common/collect/Multisets$j;->b:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/Multisets$j;->a:Ljava/lang/Object;

    return-object v0
.end method
