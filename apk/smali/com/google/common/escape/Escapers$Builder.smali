.class public final Lcom/google/common/escape/Escapers$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/Escapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:C

.field public c:C

.field public d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 96
    iput-char v0, p0, Lcom/google/common/escape/Escapers$Builder;->b:C

    const v0, 0xffff

    .line 97
    iput-char v0, p0, Lcom/google/common/escape/Escapers$Builder;->c:C

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/common/escape/Escapers$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 145
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/google/common/escape/Escapers$Builder;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/common/escape/Escaper;
    .locals 4

    .line 153
    new-instance v0, Lcom/google/common/escape/Escapers$Builder$a;

    iget-object v1, p0, Lcom/google/common/escape/Escapers$Builder;->a:Ljava/util/HashMap;

    iget-char v2, p0, Lcom/google/common/escape/Escapers$Builder;->b:C

    iget-char v3, p0, Lcom/google/common/escape/Escapers$Builder;->c:C

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/escape/Escapers$Builder$a;-><init>(Lcom/google/common/escape/Escapers$Builder;Ljava/util/HashMap;CC)V

    return-object v0
.end method

.method public setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 114
    iput-char p1, p0, Lcom/google/common/escape/Escapers$Builder;->b:C

    .line 115
    iput-char p2, p0, Lcom/google/common/escape/Escapers$Builder;->c:C

    return-object p0
.end method

.method public setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
