.class abstract Landroidx/arch/core/internal/SafeIterableMap$d;
.super Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/arch/core/internal/SafeIterableMap$SupportRemove<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:Landroidx/arch/core/internal/SafeIterableMap$c;

.field public b:Landroidx/arch/core/internal/SafeIterableMap$c;


# direct methods
.method public constructor <init>(Landroidx/arch/core/internal/SafeIterableMap$c;Landroidx/arch/core/internal/SafeIterableMap$c;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Landroidx/arch/core/internal/SafeIterableMap$SupportRemove;-><init>()V

    .line 241
    iput-object p2, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    .line 242
    iput-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/arch/core/internal/SafeIterableMap$c;)Landroidx/arch/core/internal/SafeIterableMap$c;
.end method

.method public abstract b(Landroidx/arch/core/internal/SafeIterableMap$c;)Landroidx/arch/core/internal/SafeIterableMap$c;
.end method

.method public hasNext()Z
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-virtual {p0}, Landroidx/arch/core/internal/SafeIterableMap$d;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    .line 269
    iget-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/arch/core/internal/SafeIterableMap$d;->b(Landroidx/arch/core/internal/SafeIterableMap$c;)Landroidx/arch/core/internal/SafeIterableMap$c;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 278
    :goto_1
    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    return-object v0
.end method

.method public supportRemove(Landroidx/arch/core/internal/SafeIterableMap$c;)V
    .locals 2
    .param p1    # Landroidx/arch/core/internal/SafeIterableMap$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-ne p1, v0, :cond_0

    .line 254
    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    .line 255
    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    .line 258
    :cond_0
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-ne v0, p1, :cond_1

    .line 259
    invoke-virtual {p0, v0}, Landroidx/arch/core/internal/SafeIterableMap$d;->a(Landroidx/arch/core/internal/SafeIterableMap$c;)Landroidx/arch/core/internal/SafeIterableMap$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    .line 262
    :cond_1
    iget-object v0, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-ne v0, p1, :cond_4

    .line 269
    iget-object p1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->a:Landroidx/arch/core/internal/SafeIterableMap$c;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/arch/core/internal/SafeIterableMap$d;->b(Landroidx/arch/core/internal/SafeIterableMap$c;)Landroidx/arch/core/internal/SafeIterableMap$c;

    move-result-object v1

    .line 263
    :cond_3
    :goto_0
    iput-object v1, p0, Landroidx/arch/core/internal/SafeIterableMap$d;->b:Landroidx/arch/core/internal/SafeIterableMap$c;

    :cond_4
    return-void
.end method
