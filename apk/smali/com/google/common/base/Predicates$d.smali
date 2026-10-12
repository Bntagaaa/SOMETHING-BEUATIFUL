.class Lcom/google/common/base/Predicates$d;
.super Lcom/google/common/base/Predicates$e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.containsPattern("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/Predicates$e;->a:Lcom/google/common/base/e;

    invoke-virtual {v1}, Lcom/google/common/base/e;->pattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
