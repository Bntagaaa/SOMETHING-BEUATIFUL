.class Lcom/google/common/reflect/TypeToken$a;
.super Lcom/google/common/reflect/Invokable$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$a;->d:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$b;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$a;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->e()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$b;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->c([Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final b()[Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$a;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$b;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 592
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->c([Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final c()Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$a;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->e()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$b;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 587
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$a;->d:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$a;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
