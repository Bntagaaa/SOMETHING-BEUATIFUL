.class final Lcom/google/common/reflect/n;
.super Lcom/google/common/reflect/l;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/common/reflect/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/common/reflect/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/common/reflect/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/reflect/TypeVariable;)V
    .locals 1

    .line 182
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/m;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    .line 187
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/m;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/n;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
