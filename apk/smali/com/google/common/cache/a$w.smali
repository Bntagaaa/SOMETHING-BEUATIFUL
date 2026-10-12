.class Lcom/google/common/cache/a$w;
.super Lcom/google/common/cache/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/a$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Lcom/google/common/cache/f;

.field public volatile d:Lcom/google/common/cache/a$a0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/f;)V
    .locals 1

    .line 939
    invoke-direct {p0}, Lcom/google/common/cache/a$d;-><init>()V

    .line 723
    sget-object v0, Lcom/google/common/cache/a;->x:Lcom/google/common/cache/a$a;

    .line 954
    iput-object v0, p0, Lcom/google/common/cache/a$w;->d:Lcom/google/common/cache/a$a0;

    .line 940
    iput-object p1, p0, Lcom/google/common/cache/a$w;->a:Ljava/lang/Object;

    .line 941
    iput p2, p0, Lcom/google/common/cache/a$w;->b:I

    .line 942
    iput-object p3, p0, Lcom/google/common/cache/a$w;->c:Lcom/google/common/cache/f;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 968
    iget v0, p0, Lcom/google/common/cache/a$w;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/google/common/cache/a$w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/google/common/cache/a$w;->c:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/cache/a$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/google/common/cache/a$w;->d:Lcom/google/common/cache/a$a0;

    return-object v0
.end method

.method public setValueReference(Lcom/google/common/cache/a$a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/a$a0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 963
    iput-object p1, p0, Lcom/google/common/cache/a$w;->d:Lcom/google/common/cache/a$a0;

    return-void
.end method
