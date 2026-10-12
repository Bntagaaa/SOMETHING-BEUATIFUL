.class final Landroidx/core/os/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/e;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation


# instance fields
.field public final a:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroidx/appcompat/app/q;->i(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    check-cast p1, Landroidx/core/os/e;

    invoke-interface {p1}, Landroidx/core/os/e;->getLocaleList()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/appcompat/app/q;->t(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroidx/appcompat/app/q;->n(Landroid/os/LocaleList;[Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/q;->x(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0, p1}, Landroidx/core/os/f;->a(Landroid/os/LocaleList;Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/q;->s(Landroid/os/LocaleList;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/q;->e(Landroid/os/LocaleList;)I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/q;->l(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/core/os/g;->a:Landroid/os/LocaleList;

    invoke-static {v0}, Landroidx/appcompat/app/q;->z(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
