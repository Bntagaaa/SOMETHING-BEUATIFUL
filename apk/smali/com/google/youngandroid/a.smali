.class public abstract synthetic Lcom/google/youngandroid/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lkotlin/ranges/IntRange;I)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object p0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lgnu/expr/GenericProc;[Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/GenericProc;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 1
    new-instance p0, Lgnu/expr/GenericProc;

    .line 2
    invoke-direct {p0, p2}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Lgnu/mapping/SimpleSymbol;Lgnu/lists/LList;Lgnu/mapping/SimpleSymbol;Lgnu/lists/LList;Lgnu/mapping/SimpleSymbol;)Lgnu/lists/Pair;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 1
    invoke-static {p2, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 2
    invoke-static {p0, p3}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 3
    invoke-static {p4, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/youngandroid/runtime;->sanitizeComponentData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lcom/google/youngandroid/runtime;->sanitizeComponentData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/youngandroid/runtime;->sanitizeComponentData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/youngandroid/runtime;->sanitizeComponentData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/google/youngandroid/runtime;->setThisForm()V

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 0
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    .line 1
    invoke-direct {v0, p0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lokio/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/LinkedHashMap;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static i(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    .line 0
    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static j(Lkotlin/sequences/Sequence;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lkotlin/KotlinNothingValueException;
    .locals 1

    .line 0
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->noImpl()Ljava/lang/Void;

    .line 1
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 2
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    return-object v0
.end method

.method public static l(Ljava/lang/CharSequence;ILgnu/text/Char;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p0

    .line 1
    invoke-static {p0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p0

    .line 2
    invoke-static {p2, p0}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p0

    return p0
.end method
