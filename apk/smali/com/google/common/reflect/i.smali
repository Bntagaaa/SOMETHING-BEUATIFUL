.class Lcom/google/common/reflect/i;
.super Lcom/google/common/reflect/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/common/collect/ImmutableSet$Builder;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/google/common/reflect/i;->b:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/google/common/reflect/i;->b:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method public final b(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 1114
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/google/common/reflect/m;->a:Lcom/google/common/base/Function;

    const/4 v0, 0x0

    .line 538
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1114
    iget-object v0, p0, Lcom/google/common/reflect/i;->b:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method public final c(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1104
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/reflect/i;->b:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    return-void
.end method

.method public final d(Ljava/lang/reflect/TypeVariable;)V
    .locals 0

    .line 1094
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final e(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 1099
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/l;->visit([Ljava/lang/reflect/Type;)V

    return-void
.end method
