.class public abstract synthetic Landroidx/core/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 2

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Landroidx/core/util/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/core/util/d;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;I)V

    return-object v0
.end method

.method public static b(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 2

    .line 72
    new-instance v0, Landroidx/core/util/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/core/util/e;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static c(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 2

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Landroidx/core/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/core/util/d;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;I)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .locals 2

    if-nez p0, :cond_0

    .line 110
    new-instance p0, Landroidx/core/content/e;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroidx/core/content/e;-><init>(I)V

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Landroidx/core/util/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/util/e;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static e(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0

    .line 129
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object p0

    return-object p0
.end method
