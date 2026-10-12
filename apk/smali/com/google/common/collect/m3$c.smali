.class abstract Lcom/google/common/collect/m3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/m3$j<",
        "TK;TV;TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m3$j<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lcom/google/common/collect/m3$c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/m3$c;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/google/common/collect/m3$c;->a:Ljava/lang/Object;

    .line 347
    iput p2, p0, Lcom/google/common/collect/m3$c;->b:I

    .line 348
    iput-object p3, p0, Lcom/google/common/collect/m3$c;->c:Lcom/google/common/collect/m3$c;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/google/common/collect/m3$c;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/common/collect/m3$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/m3$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/m3$c;->c:Lcom/google/common/collect/m3$c;

    return-object v0
.end method
