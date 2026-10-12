.class Lcom/google/common/reflect/TypeToken$b;
.super Lcom/google/common/reflect/Invokable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$b;->d:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->e()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$a;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->c([Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final b()[Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 631
    invoke-super {p0}, Lcom/google/common/reflect/Invokable$a;->b()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->c([Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final c()Ljava/lang/reflect/Type;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->d:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->e()Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 626
    invoke-super {p0}, Lcom/google/common/reflect/Invokable$a;->c()Ljava/lang/reflect/Type;

    move-result-object v1

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

    .line 641
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->d:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$b;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$b;->b()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
