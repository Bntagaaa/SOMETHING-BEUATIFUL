.class Lcom/google/common/reflect/h;
.super Lcom/google/common/reflect/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/common/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/google/common/reflect/h;->b:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/GenericArrayType;)V
    .locals 2

    .line 875
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final c(Ljava/lang/reflect/ParameterizedType;)V
    .locals 2

    .line 869
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 870
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final d(Ljava/lang/reflect/TypeVariable;)V
    .locals 2

    .line 857
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/google/common/reflect/h;->b:Lcom/google/common/reflect/TypeToken;

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "contains a type variable and is not safe for the operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    .line 863
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    .line 864
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method
