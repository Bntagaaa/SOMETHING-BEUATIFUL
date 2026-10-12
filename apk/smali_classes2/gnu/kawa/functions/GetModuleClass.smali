.class public Lgnu/kawa/functions/GetModuleClass;
.super Lgnu/mapping/ProcedureN;
.source "SourceFile"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

.field public static final getModuleClass:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUri:Lgnu/kawa/functions/GetModuleClass;

.field public static final getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

.field static final maker:Lgnu/bytecode/Method;

.field static final typeURLPath:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    .line 22
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    .line 29
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    .line 32
    const-string v0, "gnu.text.URLPath"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    .line 33
    const-string v1, "classResourcePath"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    .line 73
    const-string v0, "$class_resource_URL$"

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 82
    iget-object v2, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v3}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_3

    .line 85
    new-instance v2, Lgnu/expr/Declaration;

    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Lgnu/mapping/Symbol;

    sget-object v4, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v3, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    const-wide/32 v3, 0x20004800

    .line 86
    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    iget-boolean v3, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_2

    .line 90
    iget-object v3, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v3

    if-nez v3, :cond_0

    .line 92
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v3

    .line 93
    :cond_0
    instance-of v4, v3, Lgnu/text/URLPath;

    if-nez v4, :cond_1

    .line 94
    invoke-virtual {v3}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v3

    .line 95
    :cond_1
    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    goto :goto_0

    .line 99
    :cond_2
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    sget-object v5, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 102
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    new-array v6, v1, [Lgnu/expr/Expression;

    aput-object v3, v6, v0

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v3, v4

    .line 104
    :goto_0
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 105
    iget-object v3, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 107
    :cond_3
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 108
    iget-boolean p0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz p0, :cond_4

    return-object v3

    .line 111
    :cond_4
    new-instance p0, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object v3, v1, v0

    invoke-direct {p0, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object p0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/Error;

    const-string v0, "get-module-class must be inlined"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 47
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lgnu/expr/ReferenceExp;

    .line 50
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ReferenceExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 51
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 55
    invoke-static {p1, p3, p2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v0}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 62
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUri:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v0, :cond_2

    .line 63
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    sget-object v1, Lgnu/kawa/functions/GetModuleClass;->maker:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 64
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 70
    sget-object p1, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, p1, :cond_0

    sget-object p1, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    return-object p1

    :cond_0
    sget-object p1, Lgnu/kawa/functions/GetModuleClass;->typeURLPath:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    .line 42
    sget-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleUriDummy:Lgnu/kawa/functions/GetModuleClass;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x1001

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
