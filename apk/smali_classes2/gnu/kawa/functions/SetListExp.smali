.class Lgnu/kawa/functions/SetListExp;
.super Lgnu/expr/ApplyExp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 6

    const/4 p4, 0x1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 211
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 212
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 215
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    aget-object p1, p1, v0

    .line 216
    const-string v2, "set"

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 217
    aget-object v4, v1, v0

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v4, v5}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 218
    aget-object v1, v1, p4

    const/4 v5, 0x4

    new-array v5, v5, [Lgnu/expr/Expression;

    aput-object p1, v5, v0

    aput-object v2, v5, p4

    aput-object v4, v5, v3

    const/4 p1, 0x3

    aput-object v1, v5, p1

    .line 219
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p4, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-direct {p1, p4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, p1, p3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    .line 221
    sget-object p2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {p1, p2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    :cond_0
    return-object p1
.end method
