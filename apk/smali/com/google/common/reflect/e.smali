.class final Lcom/google/common/reflect/e;
.super Lcom/google/common/reflect/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/common/reflect/e;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No type mapping from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/lang/reflect/GenericArrayType;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/m;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 193
    :goto_0
    const-string v3, "%s is not an array type."

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/google/common/reflect/e;->b:Ljava/util/HashMap;

    invoke-static {v0, p1, v1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final c(Ljava/lang/reflect/ParameterizedType;)V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    .line 270
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 165
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/reflect/e;->b:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 55
    invoke-static {v3, v2, v4}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 171
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Inconsistent raw type: %s vs. %s"

    .line 170
    invoke-static {v2, v4, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 176
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 177
    array-length v4, v0

    array-length v5, v2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string v5, "%s not compatible with %s"

    invoke-static {v4, v5, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    :goto_1
    array-length p1, v0

    if-ge v6, p1, :cond_3

    .line 183
    aget-object p1, v0, v6

    aget-object v1, v2, v6

    .line 55
    invoke-static {v3, p1, v1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 272
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a ParameterizedType"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/reflect/TypeVariable;)V
    .locals 2

    .line 132
    new-instance v0, Lcom/google/common/reflect/TypeResolver$c;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object p1, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/common/reflect/e;->b:Ljava/util/HashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/reflect/WildcardType;)V
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/google/common/reflect/e;->c:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_0

    goto :goto_3

    .line 140
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 141
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 142
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 143
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 144
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 145
    array-length v5, v2

    array-length v6, v3

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    array-length v5, v4

    array-length v6, v1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Incompatible type: %s vs. %s"

    invoke-static {v5, v6, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 151
    :goto_1
    array-length v0, v2

    iget-object v5, p0, Lcom/google/common/reflect/e;->b:Ljava/util/HashMap;

    if-ge p1, v0, :cond_2

    .line 152
    aget-object v0, v2, p1

    aget-object v6, v3, p1

    .line 55
    invoke-static {v5, v0, v6}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 154
    :cond_2
    :goto_2
    array-length p1, v4

    if-ge v7, p1, :cond_3

    .line 155
    aget-object p1, v4, v7

    aget-object v0, v1, v7

    .line 55
    invoke-static {v5, p1, v0}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
