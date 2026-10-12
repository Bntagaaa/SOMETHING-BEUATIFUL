.class public Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/app/Person;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 328
    new-instance v0, Landroidx/core/app/Person;

    .line 100
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->a:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/Person;->a:Ljava/lang/CharSequence;

    .line 102
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/Person;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 103
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->c:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/Person;->c:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Landroidx/core/app/Person$Builder;->d:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/Person;->d:Ljava/lang/String;

    .line 105
    iget-boolean v1, p0, Landroidx/core/app/Person$Builder;->e:Z

    iput-boolean v1, v0, Landroidx/core/app/Person;->e:Z

    .line 106
    iget-boolean v1, p0, Landroidx/core/app/Person$Builder;->f:Z

    iput-boolean v1, v0, Landroidx/core/app/Person;->f:Z

    return-object v0
.end method

.method public setBot(Z)Landroidx/core/app/Person$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 309
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->e:Z

    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 270
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setImportant(Z)Landroidx/core/app/Person$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 321
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->f:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 299
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 258
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 288
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
