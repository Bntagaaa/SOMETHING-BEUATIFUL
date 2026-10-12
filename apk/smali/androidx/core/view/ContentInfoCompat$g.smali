.class final Landroidx/core/view/ContentInfoCompat$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Landroid/content/ClipData;

.field public final b:I

.field public final c:I

.field public final d:Landroid/net/Uri;

.field public final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/core/view/ContentInfoCompat$d;)V
    .locals 4

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$g;->a:Landroid/content/ClipData;

    .line 385
    iget v0, p1, Landroidx/core/view/ContentInfoCompat$d;->b:I

    const-string v1, "source"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v2, v3, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$g;->b:I

    .line 387
    iget v0, p1, Landroidx/core/view/ContentInfoCompat$d;->c:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$g;->c:I

    .line 388
    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$d;->d:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$g;->d:Landroid/net/Uri;

    .line 389
    iget-object p1, p1, Landroidx/core/view/ContentInfoCompat$d;->e:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$g;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 401
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$g;->a:Landroid/content/ClipData;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 425
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$g;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 413
    iget v0, p0, Landroidx/core/view/ContentInfoCompat$g;->c:I

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 419
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$g;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 407
    iget v0, p0, Landroidx/core/view/ContentInfoCompat$g;->b:I

    return v0
.end method

.method public getWrapped()Landroid/view/ContentInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentInfoCompat{clip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/view/ContentInfoCompat$g;->a:Landroid/content/ClipData;

    .line 432
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroidx/core/view/ContentInfoCompat$g;->b:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_0
    const-string v1, "SOURCE_PROCESS_TEXT"

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "SOURCE_AUTOFILL"

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "SOURCE_DRAG_AND_DROP"

    goto :goto_0

    .line 109
    :cond_3
    const-string v1, "SOURCE_INPUT_METHOD"

    goto :goto_0

    .line 108
    :cond_4
    const-string v1, "SOURCE_CLIPBOARD"

    goto :goto_0

    .line 107
    :cond_5
    const-string v1, "SOURCE_APP"

    .line 433
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget v1, p0, Landroidx/core/view/ContentInfoCompat$g;->c:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6

    .line 143
    const-string v1, "FLAG_CONVERT_TO_PLAIN_TEXT"

    goto :goto_1

    .line 145
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, ""

    iget-object v2, p0, Landroidx/core/view/ContentInfoCompat$g;->d:Landroid/net/Uri;

    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", hasLinkUri("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v2, p0, Landroidx/core/view/ContentInfoCompat$g;->e:Landroid/os/Bundle;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, ", hasExtras"

    :goto_3
    const-string v2, "}"

    .line 0
    invoke-static {v0, v1, v2}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
