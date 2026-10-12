.class final Lkotlin/io/path/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/io/path/g;",
        "",
        "<init>",
        "()V",
        "Ljava/nio/file/Path;",
        "path",
        "base",
        "tryRelativeTo",
        "(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;",
        "kotlin-stdlib-jdk7"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/io/path/g;

.field public static final b:Ljava/nio/file/Path;

.field public static final c:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/io/path/g;

    invoke-direct {v0}, Lkotlin/io/path/g;-><init>()V

    sput-object v0, Lkotlin/io/path/g;->a:Lkotlin/io/path/g;

    const/4 v0, 0x0

    .line 160
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Lkotlin/io/path/c;->r([Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lkotlin/io/path/g;->b:Ljava/nio/file/Path;

    .line 161
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lkotlin/io/path/c;->A([Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lkotlin/io/path/g;->c:Ljava/nio/file/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryRelativeTo(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 6
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {p2}, Lkotlin/io/path/c;->D(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 166
    invoke-static {p1}, Lkotlin/io/path/c;->D(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 167
    invoke-static {p2, p1}, Lkotlin/io/path/c;->z(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 169
    invoke-static {p2}, Lkotlin/io/path/c;->a(Ljava/nio/file/Path;)I

    move-result v1

    invoke-static {p1}, Lkotlin/io/path/c;->a(Ljava/nio/file/Path;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 170
    invoke-static {p2, v3}, Lkotlin/io/path/c;->o(Ljava/nio/file/Path;I)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v5, Lkotlin/io/path/g;->c:Ljava/nio/file/Path;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    invoke-static {p1, v3}, Lkotlin/io/path/c;->o(Ljava/nio/file/Path;I)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to compute relative path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lkotlin/io/path/g;->b:Ljava/nio/file/Path;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {v0}, Lkotlin/io/path/c;->f(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object p2

    invoke-static {p2}, Lkotlin/io/path/c;->b(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getSeparator(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 180
    invoke-static {v0}, Lkotlin/io/path/c;->f(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object p2

    invoke-static {v0}, Lkotlin/io/path/c;->f(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/io/path/c;->b(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lkotlin/io/path/c;->m(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 184
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
