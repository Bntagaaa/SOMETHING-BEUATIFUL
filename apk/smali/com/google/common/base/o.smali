.class final Lcom/google/common/base/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Splitter$f;


# instance fields
.field public final synthetic a:Lcom/google/common/base/e;


# direct methods
.method public constructor <init>(Lcom/google/common/base/e;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/e;

    return-void
.end method


# virtual methods
.method public iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$e;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/e;

    invoke-virtual {v0, p2}, Lcom/google/common/base/e;->matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/common/base/o$a;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/common/base/o$a;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/d;)V

    return-object v1
.end method

.method public bridge synthetic iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/o;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$e;

    move-result-object p1

    return-object p1
.end method
