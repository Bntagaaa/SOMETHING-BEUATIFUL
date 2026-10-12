.class public Lgnu/xquery/util/ValuesFilter;
.super Lgnu/mapping/MethodProc;
.source "SourceFile"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final exprFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final forwardFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final matchesMethod:Lgnu/bytecode/Method;

.field public static final reverseFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final typeValuesFilter:Lgnu/bytecode/ClassType;


# instance fields
.field public final c:C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .line 140
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 141
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .line 142
    const-string v0, "gnu.xquery.util.ValuesFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    .line 144
    const-string v1, "matches"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 23
    iput-char p1, p0, Lgnu/xquery/util/ValuesFilter;->c:C

    .line 24
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.xquery.util.CompileMisc:validateApplyValuesFilter"

    invoke-virtual {p0, p1, v0}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static get(C)Lgnu/xquery/util/ValuesFilter;
    .locals 1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    .line 30
    sget-object p0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    return-object p0

    :cond_0
    const/16 v0, 0x52

    if-ne p0, v0, :cond_1

    .line 31
    sget-object p0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    return-object p0
.end method

.method public static matches(Ljava/lang/Object;J)Z
    .locals 5

    .line 44
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    .line 46
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 48
    instance-of v0, p0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 49
    check-cast p0, Lgnu/math/IntNum;

    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 50
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 53
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    .line 57
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lgnu/kawa/functions/NumberCompare;->applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 55
    :cond_5
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long p0, p1, v3

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1

    .line 52
    :cond_7
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    long-to-double p0, p1

    cmpl-double p2, v3, p0

    if-nez p2, :cond_8

    return v2

    :cond_8
    return v1

    .line 61
    :cond_9
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Procedure;

    .line 68
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const/16 v2, 0x50

    .line 70
    iget-char v3, p0, Lgnu/xquery/util/ValuesFilter;->c:C

    if-eq v3, v2, :cond_0

    .line 72
    new-instance v2, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v2}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 73
    invoke-static {v0, v2}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 76
    :cond_0
    instance-of v2, v0, Lgnu/mapping/Values;

    if-eqz v2, :cond_4

    .line 77
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Values;

    .line 85
    :goto_0
    invoke-virtual {v2}, Lgnu/lists/TreeList;->size()I

    move-result v0

    .line 87
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    .line 90
    invoke-virtual {v1}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 93
    invoke-virtual {v2, v7}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v7

    .line 94
    invoke-virtual {v2, v7}, Lgnu/lists/TreeList;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x52

    if-ne v3, v9, :cond_1

    sub-int v9, v0, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v6, 0x1

    .line 96
    :goto_2
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    const/4 v11, 0x2

    if-ne v5, v11, :cond_2

    .line 97
    invoke-virtual {v1, v8, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v8, v10, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_3
    int-to-long v11, v9

    .line 99
    invoke-static {v10, v11, v12}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 100
    invoke-interface {p1, v8}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    :cond_4
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v0, v2, v2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 107
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    aget-object v3, v0, v1

    const/4 v1, 0x1

    .line 109
    aget-object v0, v0, v1

    .line 110
    instance-of v1, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v3, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 113
    invoke-virtual {v0, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 116
    :cond_0
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-nez v1, :cond_1

    .line 118
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 122
    :cond_1
    instance-of v1, p3, Lgnu/expr/ConsumerTarget;

    if-nez v1, :cond_2

    .line 124
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 128
    :cond_2
    move-object v2, v0

    check-cast v2, Lgnu/expr/LambdaExp;

    const/4 v4, 0x1

    .line 129
    sget-object v5, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 136
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
