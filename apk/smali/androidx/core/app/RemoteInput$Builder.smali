.class public final Landroidx/core/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/HashSet;

.field public final c:Landroid/os/Bundle;

.field public d:Ljava/lang/CharSequence;

.field public e:[Ljava/lang/CharSequence;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->b:Ljava/util/HashSet;

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Landroidx/core/app/RemoteInput$Builder;->f:Z

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Landroidx/core/app/RemoteInput$Builder;->g:I

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->a:Ljava/lang/String;

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Result key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public build()Landroidx/core/app/RemoteInput;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 316
    new-instance v0, Landroidx/core/app/RemoteInput;

    iget-object v2, p0, Landroidx/core/app/RemoteInput$Builder;->d:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/core/app/RemoteInput$Builder;->e:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroidx/core/app/RemoteInput$Builder;->f:Z

    iget v5, p0, Landroidx/core/app/RemoteInput$Builder;->g:I

    iget-object v7, p0, Landroidx/core/app/RemoteInput$Builder;->b:Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/core/app/RemoteInput$Builder;->a:Ljava/lang/String;

    iget-object v6, p0, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v7}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 307
    iget-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/core/app/RemoteInput$Builder;->b:Ljava/util/HashSet;

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 251
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 268
    iput-boolean p1, p0, Landroidx/core/app/RemoteInput$Builder;->f:Z

    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 232
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->e:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 281
    iput p1, p0, Landroidx/core/app/RemoteInput$Builder;->g:I

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 214
    iput-object p1, p0, Landroidx/core/app/RemoteInput$Builder;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
