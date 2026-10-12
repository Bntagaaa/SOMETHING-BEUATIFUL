.class public final Landroidx/core/content/IntentSanitizer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/core/util/Predicate;

.field public c:Landroidx/core/util/Predicate;

.field public d:Landroidx/core/util/Predicate;

.field public e:Landroidx/core/util/Predicate;

.field public f:Landroidx/core/util/Predicate;

.field public g:Landroidx/core/util/Predicate;

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/HashMap;

.field public k:Z

.field public l:Landroidx/core/util/Predicate;

.field public m:Landroidx/core/util/Predicate;

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->b:Landroidx/core/util/Predicate;

    .line 288
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->c:Landroidx/core/util/Predicate;

    .line 289
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->d:Landroidx/core/util/Predicate;

    .line 290
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->e:Landroidx/core/util/Predicate;

    .line 291
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->f:Landroidx/core/util/Predicate;

    .line 292
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->g:Landroidx/core/util/Predicate;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->k:Z

    .line 297
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->l:Landroidx/core/util/Predicate;

    .line 298
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->m:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public allowAction(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 413
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->b:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->b:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowAction(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 397
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowAction(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowAnyComponent()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->h:Z

    .line 601
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->g:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowCategory(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 507
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->e:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->e:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowCategory(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 492
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowCategory(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowClipData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 662
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->m:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->m:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowClipDataText()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->k:Z

    return-object p0
.end method

.method public allowClipDataUri(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 645
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->l:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->l:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowClipDataUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 629
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowClipDataUri(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowComponent(Landroid/content/ComponentName;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 553
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/content/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/core/content/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 568
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->i:Z

    .line 570
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->g:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->g:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowComponentWithPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 584
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 444
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->c:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->c:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowDataWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 429
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowData(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtra(Ljava/lang/String;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 717
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Predicate;

    if-nez v1, :cond_0

    .line 720
    new-instance v1, Landroidx/core/content/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/core/content/e;-><init>(I)V

    .line 721
    :cond_0
    invoke-interface {v1, p2}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p2

    .line 722
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 679
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/core/content/e;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/core/util/Predicate<",
            "TT;>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 698
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v0, Landroidx/core/util/d;

    invoke-direct {v0, p2, p3}, Landroidx/core/util/d;-><init>(Ljava/lang/Class;Landroidx/core/util/Predicate;)V

    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtraOutput(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 803
    const-string v0, "output"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraOutput(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 782
    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    const-string p1, "output"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraStream(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 762
    const-string v0, "android.intent.extra.STREAM"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraStreamUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 741
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    const-string p1, "android.intent.extra.STREAM"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowFlags(I)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 332
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    return-object p0
.end method

.method public allowHistoryStackFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 363
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    const v1, 0x7debf000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    return-object p0
.end method

.method public allowIdentifier()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->n:Z

    return-object p0
.end method

.method public allowPackage(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 537
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->f:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->f:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 522
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowPackage(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowReceiverFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 382
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    const/high16 v1, 0x78200000

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    return-object p0
.end method

.method public allowSelector()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->o:Z

    return-object p0
.end method

.method public allowSourceBounds()Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 839
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->p:Z

    return-object p0
.end method

.method public allowType(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 1
    .param p1    # Landroidx/core/util/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 476
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->d:Landroidx/core/util/Predicate;

    invoke-interface {v0, p1}, Landroidx/core/util/Predicate;->or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->d:Landroidx/core/util/Predicate;

    return-object p0
.end method

.method public allowType(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 462
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/core/content/c;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/core/content/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowType(Landroidx/core/util/Predicate;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Landroidx/core/content/IntentSanitizer;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 851
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->i:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->i:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 853
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You must call either allowAnyComponent or one or more of the allowComponent methods; but not both."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_2
    :goto_0
    new-instance v0, Landroidx/core/content/IntentSanitizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/content/IntentSanitizer;-><init>(I)V

    .line 859
    iget v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->a:I

    .line 63
    iput v1, v0, Landroidx/core/content/IntentSanitizer;->a:I

    .line 860
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->b:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->b:Landroidx/core/util/Predicate;

    .line 861
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->c:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->c:Landroidx/core/util/Predicate;

    .line 862
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->d:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->d:Landroidx/core/util/Predicate;

    .line 863
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->e:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->e:Landroidx/core/util/Predicate;

    .line 864
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->f:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->f:Landroidx/core/util/Predicate;

    .line 865
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->h:Z

    .line 63
    iput-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->h:Z

    .line 866
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->g:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->g:Landroidx/core/util/Predicate;

    .line 867
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->j:Ljava/util/HashMap;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->i:Ljava/util/HashMap;

    .line 868
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->k:Z

    .line 63
    iput-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->j:Z

    .line 869
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->l:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->k:Landroidx/core/util/Predicate;

    .line 870
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->m:Landroidx/core/util/Predicate;

    .line 63
    iput-object v1, v0, Landroidx/core/content/IntentSanitizer;->l:Landroidx/core/util/Predicate;

    .line 871
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->n:Z

    .line 63
    iput-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->m:Z

    .line 872
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->o:Z

    .line 63
    iput-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->n:Z

    .line 873
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->p:Z

    .line 63
    iput-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->o:Z

    return-object v0
.end method
