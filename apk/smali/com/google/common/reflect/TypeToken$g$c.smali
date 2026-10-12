.class Lcom/google/common/reflect/TypeToken$g$c;
.super Lcom/google/common/reflect/TypeToken$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeToken$g<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/reflect/TypeToken$g;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken$g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1423
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$g;-><init>(I)V

    .line 1424
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$g$c;->c:Lcom/google/common/reflect/TypeToken$g;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g$c;->c:Lcom/google/common/reflect/TypeToken$g;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$g;->c(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g$c;->c:Lcom/google/common/reflect/TypeToken$g;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$g;->d(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$g$c;->c:Lcom/google/common/reflect/TypeToken$g;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
