.class public Lgnu/xquery/lang/XQResolveNames;
.super Lgnu/expr/ResolveNames;
.source "SourceFile"


# static fields
.field public static final BASE_URI_BUILTIN:I = -0xb

.field public static final CASTABLE_AS_BUILTIN:I = -0x22

.field public static final CAST_AS_BUILTIN:I = -0x21

.field public static final COLLECTION_BUILTIN:I = -0x8

.field public static final COMPARE_BUILTIN:I = -0x4

.field public static final DEEP_EQUAL_BUILTIN:I = -0x19

.field public static final DEFAULT_COLLATION_BUILTIN:I = -0x1d

.field public static final DISTINCT_VALUES_BUILTIN:I = -0x5

.field public static final DOC_AVAILABLE_BUILTIN:I = -0xa

.field public static final DOC_BUILTIN:I = -0x9

.field public static final HANDLE_EXTENSION_BUILTIN:I = -0x3

.field public static final IDREF_BUILTIN:I = -0x1f

.field public static final ID_BUILTIN:I = -0x1e

.field public static final INDEX_OF_BUILTIN:I = -0xf

.field public static final LANG_BUILTIN:I = -0x17

.field public static final LAST_BUILTIN:I = -0x1

.field public static final LOCAL_NAME_BUILTIN:I = -0x6

.field public static final MAX_BUILTIN:I = -0x1b

.field public static final MIN_BUILTIN:I = -0x1a

.field public static final NAMESPACE_URI_BUILTIN:I = -0x7

.field public static final NAME_BUILTIN:I = -0x18

.field public static final NORMALIZE_SPACE_BUILTIN:I = -0x11

.field public static final NUMBER_BUILTIN:I = -0x1c

.field public static final POSITION_BUILTIN:I = -0x2

.field public static final RESOLVE_PREFIX_BUILTIN:I = -0xd

.field public static final RESOLVE_URI_BUILTIN:I = -0xc

.field public static final ROOT_BUILTIN:I = -0x20

.field public static final STATIC_BASE_URI_BUILTIN:I = -0xe

.field public static final STRING_BUILTIN:I = -0x10

.field public static final UNORDERED_BUILTIN:I = -0x12

.field public static final XS_QNAME_BUILTIN:I = -0x23

.field public static final XS_QNAME_IGNORE_DEFAULT_BUILTIN:I = -0x24

.field public static final castAsDecl:Lgnu/expr/Declaration;

.field public static final castableAsDecl:Lgnu/expr/Declaration;

.field public static final handleExtensionDecl:Lgnu/expr/Declaration;

.field public static final lastDecl:Lgnu/expr/Declaration;

.field public static final resolvePrefixDecl:Lgnu/expr/Declaration;

.field public static final staticBaseUriDecl:Lgnu/expr/Declaration;

.field public static final xsQNameDecl:Lgnu/expr/Declaration;

.field public static final xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;


# instance fields
.field public a:Lgnu/expr/Declaration;

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field public parser:Lgnu/xquery/lang/XQParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    const-string v0, "(extension)"

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    .line 119
    const-string v0, "(cast as)"

    const/16 v1, -0x21

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    .line 122
    const-string v0, "(castable as)"

    const/16 v1, -0x22

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    .line 126
    const-string v0, "last"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    .line 129
    const-string v0, "QName"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v1, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v2, -0x23

    invoke-static {v0, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    .line 132
    const-string v0, "(QName-ignore-default)"

    invoke-static {v1, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v2, -0x24

    invoke-static {v0, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 135
    const-string v0, "static-base-uri"

    const/16 v2, -0xe

    invoke-static {v0, v2}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    .line 138
    const-string v0, "(resolve-prefix)"

    invoke-static {v1, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1}, Lgnu/expr/ResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 201
    sget-object p1, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object p1, p0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 171
    iget-object p1, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->lastDecl:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 172
    iget-object p1, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 173
    iget-object p1, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 174
    const-string p1, "position"

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 175
    const-string p1, "compare"

    const/4 v0, -0x4

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 176
    const-string p1, "distinct-values"

    const/4 v0, -0x5

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 177
    const-string p1, "local-name"

    const/4 v0, -0x6

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 178
    const-string p1, "name"

    const/16 v0, -0x18

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 179
    const-string p1, "namespace-uri"

    const/4 v0, -0x7

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 180
    const-string p1, "root"

    const/16 v0, -0x20

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 181
    const-string p1, "base-uri"

    const/16 v0, -0xb

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 182
    const-string p1, "lang"

    const/16 v0, -0x17

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 183
    const-string p1, "resolve-uri"

    const/16 v0, -0xc

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 184
    const-string p1, "collection"

    const/4 v0, -0x8

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 185
    const-string p1, "doc"

    const/16 v0, -0x9

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 186
    const-string p1, "document"

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 187
    const-string p1, "doc-available"

    const/16 v0, -0xa

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 188
    const-string p1, "index-of"

    const/16 v0, -0xf

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 189
    const-string p1, "string"

    const/16 v0, -0x10

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 190
    const-string p1, "normalize-space"

    const/16 v0, -0x11

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 191
    const-string p1, "unordered"

    const/16 v0, -0x12

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 192
    const-string p1, "deep-equal"

    const/16 v0, -0x19

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 193
    const-string p1, "min"

    const/16 v0, -0x1a

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 194
    const-string p1, "max"

    const/16 v0, -0x1b

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 195
    const-string p1, "number"

    const/16 v0, -0x1c

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 196
    const-string p1, "default-collation"

    const/16 v0, -0x1d

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 197
    const-string p1, "id"

    const/16 v0, -0x1e

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    .line 198
    const-string p1, "idref"

    const/16 v0, -0x1f

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQResolveNames;->f(ILjava/lang/String;)V

    return-void
.end method

.method public static b(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;
    .locals 4

    .line 253
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 254
    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v0

    .line 258
    instance-of v2, v0, Lgnu/kawa/reflect/StaticFieldLocation;

    if-eqz v2, :cond_1

    .line 260
    move-object v2, v0

    check-cast v2, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v2}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 264
    :cond_1
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1007
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 1008
    invoke-virtual {v1, p0}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 1009
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/16 v2, 0x4000

    .line 1010
    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static d(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 994
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 995
    const-string v2, ""

    if-ne v0, v2, :cond_1

    move-object v0, v1

    :cond_1
    if-ne p0, v2, :cond_2

    move-object p0, v1

    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    :goto_0
    return-object p2

    .line 1001
    :cond_3
    invoke-static {v0, p0, p2}, Lgnu/xml/NamespaceBinding;->maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;
    .locals 1

    .line 152
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 153
    invoke-virtual {v0, p0}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 154
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setCode(I)V

    return-object v0
.end method

.method public static makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;
    .locals 2

    .line 145
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    const-string v1, "fn"

    invoke-static {v0, p0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    invoke-static {p0, p1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Lgnu/mapping/Symbol;I)Lgnu/expr/Declaration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    array-length p1, p1

    invoke-static {p2, p3, p4, p1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lgnu/expr/Expression;
    .locals 2

    .line 980
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 983
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 985
    :cond_0
    invoke-static {v0}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lgnu/expr/Declaration;)V
    .locals 7

    .line 215
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v2

    .line 218
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 220
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v4

    .line 225
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v5

    .line 226
    invoke-virtual {v0, p1}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 227
    iget-object v6, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v3, v4, v5}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v3, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 234
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 237
    :cond_2
    iget-object v2, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v3, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v3, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 240
    iget-object v3, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v4, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v3, v4, :cond_3

    .line 241
    invoke-static {v2, p1, v0}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_1

    .line 242
    :cond_3
    sget-boolean v2, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    if-eqz v2, :cond_5

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_4

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 245
    :cond_4
    const-string v1, "declaration "

    const-string v2, " hides previous declaration"

    const/16 v3, 0x77

    invoke-virtual {v0, v3, p1, v1, v2}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_5
    :goto_1
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-static {p2, p1}, Lgnu/xquery/lang/XQResolveNames;->makeBuiltin(Ljava/lang/String;I)Lgnu/expr/Declaration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    return-void
.end method

.method public final g(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .line 402
    instance-of v0, p1, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_1

    .line 404
    move-object v0, p1

    check-cast v0, Lgnu/expr/BeginExp;

    .line 405
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 409
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQResolveNames;->g(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 412
    :cond_1
    instance-of v0, p1, Lgnu/expr/SetExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->a:Lgnu/expr/Declaration;

    .line 415
    check-cast p1, Lgnu/expr/SetExp;

    .line 416
    invoke-virtual {p0, p1, v1}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v1

    .line 417
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    if-ne p1, v0, :cond_3

    .line 419
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result p1

    if-nez p1, :cond_2

    .line 420
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->e(Lgnu/expr/Declaration;)V

    .line 421
    :cond_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 423
    :cond_3
    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->a:Lgnu/expr/Declaration;

    return-object v1

    .line 426
    :cond_4
    invoke-virtual {p0, p1, v1}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method public final h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 469
    new-instance v2, Lgnu/expr/QuoteExp;

    new-instance v3, Lgnu/expr/PrimProcedure;

    invoke-direct {v3, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    add-int/lit8 p1, p4, 0x1

    .line 477
    array-length v3, p2

    invoke-static {p3, p4, p1, v3}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 479
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p1

    invoke-virtual {p1, p3}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 480
    :cond_0
    new-array p1, p1, [Lgnu/expr/Expression;

    .line 481
    invoke-static {p2, v0, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    array-length p3, p2

    if-le p3, p4, :cond_1

    .line 459
    new-instance p3, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.xquery.util.NamedCollator"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "find"

    invoke-virtual {v3, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    aget-object p2, p2, p4

    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object p2, v1, v0

    invoke-direct {p3, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object p2, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object p2, p2, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    if-nez p2, :cond_2

    .line 463
    sget-object p3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_2
    new-instance p3, Lgnu/expr/QuoteExp;

    invoke-direct {p3, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 482
    :goto_0
    aput-object p3, p1, p4

    .line 483
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-direct {p2, v2, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p2
.end method

.method public final i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;
    .locals 3

    add-int/lit8 v0, p4, 0x1

    .line 490
    array-length v1, p2

    invoke-static {p3, p4, v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 494
    :cond_0
    array-length v1, p2

    if-ne v1, p4, :cond_2

    .line 496
    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    .line 497
    invoke-static {p2, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-object p2, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    sget-object v2, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v2, v1}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object p2

    if-nez p2, :cond_1

    .line 501
    const-string p1, "undefined context for "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 502
    iget-object p2, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    const/16 p3, 0x65

    const-string p4, "XPDY0002"

    invoke-virtual {p2, p3, p1, p4}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance p2, Lgnu/expr/ErrorExp;

    invoke-direct {p2, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 505
    :cond_1
    new-instance p3, Lgnu/expr/ReferenceExp;

    invoke-direct {p3, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object p3, v0, p4

    move-object p2, v0

    .line 508
    :cond_2
    new-instance p3, Lgnu/expr/ApplyExp;

    invoke-direct {p3, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object p3
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 0

    .line 206
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQResolveNames;->e(Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 2

    .line 432
    iput-object p1, p0, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 433
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->e(Lgnu/expr/Declaration;)V

    .line 434
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    iput-object v0, p0, Lgnu/xquery/lang/XQResolveNames;->a:Lgnu/expr/Declaration;

    .line 440
    iget-object v0, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQResolveNames;->g(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 443
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 446
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->removeSubsumed(Lgnu/expr/Declaration;)V

    .line 444
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 524
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    .line 525
    iget-object v8, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    .line 526
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v9

    .line 527
    instance-of v10, v9, Lgnu/kawa/xml/MakeElement;

    if-eqz v10, :cond_0

    .line 529
    check-cast v9, Lgnu/kawa/xml/MakeElement;

    .line 530
    invoke-virtual {v9}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v10

    invoke-static {v10, v8}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v10

    .line 532
    invoke-virtual {v9, v10}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 533
    iget-object v9, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iput-object v10, v9, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    .line 535
    :cond_0
    instance-of v9, v7, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_1

    .line 536
    check-cast v7, Lgnu/expr/ReferenceExp;

    invoke-virtual {v1, v7, v0}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {v1, v7, v2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    .line 539
    :goto_0
    invoke-virtual {v0, v7}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 540
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    .line 541
    iget-object v7, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iput-object v8, v7, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    .line 542
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    .line 543
    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    const-string v9, "castAs"

    const-string v10, "gnu.xquery.util.CastAs"

    const/16 v12, 0x65

    if-eqz v8, :cond_2

    .line 545
    check-cast v7, Lgnu/expr/ReferenceExp;

    invoke-virtual {v7}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 548
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getCode()I

    move-result v8

    if-gez v8, :cond_2

    .line 550
    const-string v13, "gnu.xquery.util.MinMax"

    const-string v14, "gnu.xquery.util.SequenceUtils"

    const-string v15, "gnu.xquery.util.StringUtils"

    const/4 v11, 0x4

    const-string v17, "gnu.xquery.util.QNameUtils"

    const-string v18, "gnu.xquery.util.NodeUtils"

    packed-switch v8, :pswitch_data_0

    :cond_2
    :pswitch_0
    const/4 v8, 0x0

    const/16 v18, 0x0

    goto/16 :goto_10

    :pswitch_1
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    .line 554
    sget-object v0, Lgnu/xquery/lang/XQParser;->H:Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_3
    sget-object v0, Lgnu/xquery/lang/XQParser;->G:Lgnu/mapping/Symbol;

    .line 556
    :goto_1
    iget-object v2, v1, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v2, v0, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_4

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "undefined context for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Lgnu/expr/ExpVisitor;->error(CLjava/lang/String;)V

    goto :goto_2

    .line 562
    :cond_4
    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 563
    :goto_2
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v3

    .line 880
    :pswitch_2
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 881
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v3, 0x0

    .line 883
    :goto_3
    array-length v7, v0

    sub-int/2addr v7, v6

    if-ge v3, v7, :cond_8

    .line 885
    aget-object v7, v0, v3

    .line 886
    check-cast v7, Lgnu/expr/QuoteExp;

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 887
    iget-object v8, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v8, v7, v4}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 890
    :cond_5
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 891
    const-string v7, "pragma name cannot be in the empty namespace"

    invoke-virtual {v2, v12, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v3, 0x1

    .line 894
    aget-object v8, v0, v8

    invoke-virtual {v1, v7, v8}, Lgnu/xquery/lang/XQResolveNames;->checkPragma(Lgnu/mapping/Symbol;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    if-eqz v7, :cond_7

    return-object v7

    :cond_7
    :goto_4
    add-int/2addr v3, v5

    goto :goto_3

    .line 900
    :cond_8
    array-length v2, v0

    if-ge v3, v2, :cond_9

    .line 901
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v0, v0, v2

    return-object v0

    .line 903
    :cond_9
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    const-string v2, "XQST0079"

    const-string v3, "no recognized pragma or default in extension expression"

    invoke-virtual {v0, v12, v3, v2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 769
    :pswitch_3
    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "compare"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 771
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:compare"

    invoke-virtual {v1, v2, v0, v3, v5}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 845
    :pswitch_4
    const-string v2, "gnu.xquery.util.DistinctValues"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "distinctValues$X"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 847
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:distinct-values"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 689
    :pswitch_5
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "localName"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 691
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:local-name"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 745
    :pswitch_6
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "namespaceURI"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 747
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:namespace-uri"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 787
    :pswitch_7
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 788
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 789
    const-string v3, "collection"

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 790
    invoke-virtual {v1, v0, v7, v4, v6}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_a

    return-object v3

    .line 792
    :cond_a
    invoke-virtual {v1}, Lgnu/xquery/lang/XQResolveNames;->c()Lgnu/expr/Expression;

    move-result-object v3

    .line 793
    array-length v7, v0

    if-lez v7, :cond_b

    aget-object v0, v0, v4

    goto :goto_5

    :cond_b
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 795
    :goto_5
    new-instance v7, Lgnu/expr/ApplyExp;

    new-array v5, v5, [Lgnu/expr/Expression;

    aput-object v0, v5, v4

    aput-object v3, v5, v6

    invoke-direct {v7, v2, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 797
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v7, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object v7

    .line 803
    :pswitch_8
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 804
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, -0x9

    if-ne v8, v3, :cond_d

    .line 809
    sget-boolean v9, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v9, :cond_c

    const-string v9, "document"

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 811
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    const/16 v10, 0x77

    const-string v11, "replace \'document\' by \'doc\'"

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 816
    :cond_c
    const-string v9, "docCached"

    goto :goto_6

    .line 815
    :cond_d
    const-string v9, "availableCached"

    .line 816
    :goto_6
    invoke-virtual {v2, v9, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 817
    invoke-virtual {v1, v0, v7, v6, v6}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v7

    if-eqz v7, :cond_e

    return-object v7

    .line 819
    :cond_e
    invoke-virtual {v1}, Lgnu/xquery/lang/XQResolveNames;->c()Lgnu/expr/Expression;

    move-result-object v7

    .line 820
    new-instance v9, Lgnu/expr/ApplyExp;

    aget-object v0, v0, v4

    new-array v5, v5, [Lgnu/expr/Expression;

    aput-object v0, v5, v4

    aput-object v7, v5, v6

    invoke-direct {v9, v2, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    if-ne v8, v3, :cond_f

    .line 823
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v9, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object v9

    .line 825
    :cond_f
    sget-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v9, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object v9

    .line 713
    :pswitch_9
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "baseUri"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 715
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:base-uri"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 830
    :pswitch_a
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 831
    invoke-virtual {v1, v0, v7, v6, v5}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_10

    return-object v2

    .line 833
    :cond_10
    new-array v2, v5, [Lgnu/expr/Expression;

    .line 834
    aget-object v3, v0, v4

    aput-object v3, v2, v4

    .line 835
    array-length v3, v0

    if-ne v3, v6, :cond_11

    .line 836
    invoke-virtual {v1}, Lgnu/xquery/lang/XQResolveNames;->c()Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v2, v6

    goto :goto_7

    .line 838
    :cond_11
    aget-object v0, v0, v6

    aput-object v0, v2, v6

    .line 839
    :goto_7
    invoke-static/range {v17 .. v17}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v3, "resolveURI"

    invoke-virtual {v0, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 841
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v3

    .line 660
    :pswitch_b
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 661
    invoke-virtual {v1, v0, v7, v6, v6}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_12

    return-object v2

    .line 663
    :cond_12
    aget-object v0, v0, v4

    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_15

    .line 665
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v11, 0x0

    goto :goto_8

    .line 666
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 667
    :goto_8
    iget-object v0, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v0, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-static {v11, v2, v0}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 671
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown namespace prefix \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 674
    :cond_14
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 676
    :cond_15
    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v7, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    invoke-direct {v2, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lgnu/expr/QuoteExp;

    iget-object v8, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v8, v8, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v8, v3, [Lgnu/expr/Expression;

    aput-object v0, v8, v4

    aput-object v2, v8, v6

    aput-object v7, v8, v5

    .line 680
    new-instance v0, Lgnu/expr/PrimProcedure;

    invoke-static/range {v17 .. v17}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "resolvePrefix"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v0, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 683
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 684
    invoke-virtual {v2, v11}, Lgnu/expr/Expression;->setFlag(I)V

    return-object v2

    .line 738
    :pswitch_c
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 739
    invoke-virtual {v1, v0, v7, v4, v4}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    .line 741
    :cond_16
    invoke-virtual {v1}, Lgnu/xquery/lang/XQResolveNames;->c()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 781
    :pswitch_d
    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "indexOf$X"

    invoke-virtual {v2, v3, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 783
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:index-of"

    invoke-virtual {v1, v2, v0, v3, v5}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 775
    :pswitch_e
    const-string v2, "gnu.xml.TextUtils"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "asString"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:string"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 753
    :pswitch_f
    invoke-static {v15}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "normalizeSpace"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 755
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:normalize-space"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 761
    :pswitch_10
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 762
    invoke-virtual {v1, v0, v7, v6, v6}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_17

    return-object v2

    .line 764
    :cond_17
    aget-object v0, v0, v4

    return-object v0

    .line 719
    :pswitch_11
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "lang"

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 721
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:lang"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 695
    :pswitch_12
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 697
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:name"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_13
    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "deepEqual"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 855
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:deep-equal"

    invoke-virtual {v1, v2, v0, v3, v5}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 860
    :pswitch_14
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "min"

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 862
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:min"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 867
    :pswitch_15
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 869
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:max"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->h(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 701
    :pswitch_16
    const-string v2, "gnu.xquery.util.NumberValue"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "numberValue"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 703
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:number"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 873
    :pswitch_17
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v4, v4}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    .line 875
    :cond_18
    iget-object v0, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v0, v0, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    if-eqz v0, :cond_19

    .line 876
    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_19
    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    :goto_9
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 725
    :pswitch_18
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "id$X"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 727
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:id"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 731
    :pswitch_19
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "idref"

    invoke-virtual {v2, v3, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 733
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:idref"

    invoke-virtual {v1, v2, v0, v3, v6}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 707
    :pswitch_1a
    invoke-static/range {v18 .. v18}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "root"

    invoke-virtual {v2, v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 709
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const-string v3, "fn:root"

    invoke-virtual {v1, v2, v0, v3, v4}, Lgnu/xquery/lang/XQResolveNames;->i(Lgnu/bytecode/Method;[Lgnu/expr/Expression;Ljava/lang/String;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 567
    :pswitch_1b
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    const/16 v5, -0x21

    if-ne v8, v5, :cond_1a

    const/4 v7, 0x0

    goto :goto_a

    :cond_1a
    const/4 v7, 0x1

    .line 568
    :goto_a
    aget-object v7, v3, v7

    .line 570
    instance-of v11, v7, Lgnu/expr/ApplyExp;

    if-eqz v11, :cond_1b

    .line 572
    move-object v13, v7

    check-cast v13, Lgnu/expr/ApplyExp;

    .line 573
    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v14

    invoke-virtual {v14}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/xquery/lang/XQParser;->I:Lgnu/expr/PrimProcedure;

    if-ne v14, v15, :cond_1b

    .line 575
    invoke-virtual {v13, v4}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v13

    goto :goto_b

    :cond_1b
    move-object v13, v7

    .line 577
    :goto_b
    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v13

    .line 579
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v14

    if-ne v13, v14, :cond_1c

    .line 580
    const-string v14, "type to \'cast as\' or \'castable as\' must be atomic"

    goto :goto_c

    .line 581
    :cond_1c
    sget-object v14, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_1d

    .line 582
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be anyAtomicType"

    goto :goto_c

    .line 583
    :cond_1d
    sget-object v14, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_1e

    .line 584
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be anySimpleType"

    goto :goto_c

    .line 585
    :cond_1e
    sget-object v14, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_1f

    .line 586
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be untyped"

    goto :goto_c

    .line 587
    :cond_1f
    sget-object v14, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    if-ne v13, v14, :cond_20

    .line 588
    const-string v14, "type to \'cast as\' or \'castable as\' cannot be NOTATION"

    goto :goto_c

    :cond_20
    const/4 v14, 0x0

    :goto_c
    if-eqz v14, :cond_21

    .line 590
    iget-object v15, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    const/16 v18, 0x0

    const-string v4, "XPST0080"

    invoke-virtual {v15, v12, v7, v14, v4}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    const/16 v18, 0x0

    .line 591
    :goto_d
    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    if-ne v13, v4, :cond_22

    if-nez v11, :cond_22

    const/4 v4, 0x1

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    :goto_e
    if-ne v8, v5, :cond_24

    if-eqz v4, :cond_23

    .line 596
    aget-object v0, v3, v6

    invoke-static {v0, v6}, Lgnu/xquery/lang/XQParser;->a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 597
    :cond_23
    invoke-static {v10, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_f

    :cond_24
    if-eqz v4, :cond_25

    .line 602
    aget-object v2, v3, v18

    instance-of v4, v2, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_25

    .line 604
    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 607
    :try_start_0
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v2, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, v3, v2}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 614
    :catch_0
    sget-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 617
    :cond_25
    const-string v2, "gnu.xquery.lang.XQParser"

    const-string v4, "castableAs"

    invoke-static {v2, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 619
    :goto_f
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v4, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const/16 v18, 0x0

    .line 624
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 625
    invoke-virtual {v1, v0, v7, v6, v6}, Lgnu/xquery/lang/XQResolveNames;->a([Lgnu/expr/Expression;Lgnu/expr/Declaration;II)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_26

    return-object v2

    .line 627
    :cond_26
    iget-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v2, v2, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    const/16 v4, -0x24

    if-ne v8, v4, :cond_27

    .line 630
    new-instance v4, Lgnu/xml/NamespaceBinding;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {v4, v8, v7, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v4

    .line 632
    :cond_27
    aget-object v0, v0, v18

    instance-of v4, v0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_28

    .line 636
    :try_start_1
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 637
    iget-object v3, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v3, v3, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, v2, v3}, Lgnu/xquery/util/QNameUtils;->resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 644
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 647
    :cond_28
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v7, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    iget-object v7, v7, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-direct {v2, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v7, v3, [Lgnu/expr/Expression;

    aput-object v0, v7, v18

    aput-object v4, v7, v6

    aput-object v2, v7, v5

    .line 651
    invoke-static/range {v17 .. v17}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v2, "resolveQName"

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 654
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 655
    invoke-virtual {v2, v11}, Lgnu/expr/Expression;->setFlag(I)V

    return-object v2

    .line 909
    :goto_10
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v2

    .line 910
    instance-of v3, v2, Lgnu/bytecode/Type;

    if-eqz v3, :cond_2a

    .line 912
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 913
    array-length v3, v2

    if-eq v3, v6, :cond_29

    .line 915
    iget-object v2, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    const-string v3, "type constructor requires a single argument"

    invoke-virtual {v2, v12, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    return-object v0

    .line 918
    :cond_29
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-static {v10, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    aget-object v2, v2, v18

    new-array v5, v5, [Lgnu/expr/Expression;

    aput-object v0, v5, v18

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v3

    .line 921
    :cond_2a
    instance-of v3, v2, Lgnu/kawa/xml/MakeElement;

    if-eqz v3, :cond_31

    .line 923
    check-cast v2, Lgnu/kawa/xml/MakeElement;

    .line 926
    invoke-virtual {v2}, Lgnu/kawa/xml/MakeElement;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 927
    iget-object v4, v2, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    if-nez v4, :cond_2b

    .line 929
    invoke-static {v0}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v4

    :cond_2b
    const/4 v5, 0x0

    .line 930
    invoke-static {v4, v5, v3}, Lgnu/xquery/lang/XQResolveNames;->d(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 931
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 932
    array-length v7, v4

    new-array v7, v7, [Lgnu/mapping/Symbol;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 934
    :goto_11
    array-length v11, v4

    if-ge v9, v11, :cond_30

    .line 936
    aget-object v11, v4, v9

    .line 937
    instance-of v13, v11, Lgnu/expr/ApplyExp;

    if-eqz v13, :cond_2c

    .line 939
    check-cast v11, Lgnu/expr/ApplyExp;

    .line 940
    invoke-virtual {v11}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    sget-object v14, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-ne v13, v14, :cond_2c

    .line 942
    invoke-static {v11}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v13

    if-eqz v13, :cond_2c

    const/4 v14, 0x0

    :goto_12
    if-ne v14, v10, :cond_2d

    add-int/lit8 v11, v10, 0x1

    .line 949
    aput-object v13, v7, v10

    .line 961
    invoke-static {v13, v6, v3}, Lgnu/xquery/lang/XQResolveNames;->d(Lgnu/mapping/Symbol;ZLgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    move v10, v11

    :cond_2c
    const/16 v16, 0x1

    goto :goto_15

    .line 952
    :cond_2d
    aget-object v15, v7, v14

    invoke-virtual {v13, v15}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2f

    .line 954
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v15

    invoke-virtual {v15, v11}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 955
    invoke-static {v0}, Lgnu/kawa/xml/MakeElement;->getTagName(Lgnu/expr/ApplyExp;)Lgnu/mapping/Symbol;

    move-result-object v15

    if-nez v15, :cond_2e

    move-object v15, v8

    goto :goto_13

    .line 956
    :cond_2e
    invoke-virtual {v15}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v15

    .line 958
    :goto_13
    iget-object v5, v1, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-static {v13, v15}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const-string v6, "XQST0040"

    invoke-virtual {v5, v12, v15, v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_2f
    const/16 v16, 0x1

    :goto_14
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_12

    :goto_15
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_11

    :cond_30
    if-eqz v3, :cond_31

    .line 967
    invoke-virtual {v2, v3}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    :cond_31
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x24
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 10

    .line 277
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_12

    .line 279
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v1

    const/16 v2, 0x10

    .line 281
    invoke-virtual {p1, v2}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result p2

    invoke-static {p2}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result p2

    .line 284
    :goto_0
    iget-object v3, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v3, v0, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 288
    :cond_1
    instance-of v4, v0, Lgnu/mapping/Symbol;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v4, :cond_4

    move-object v8, v0

    check-cast v8, Lgnu/mapping/Symbol;

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 292
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p2

    .line 294
    const-string v4, "request"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    const-string v6, "getCurrentRequest"

    goto :goto_1

    .line 296
    :cond_2
    const-string v4, "response"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 297
    const-string v6, "getCurrentResponse"

    :cond_3
    :goto_1
    if-eqz v6, :cond_e

    .line 302
    const-string p1, "gnu.kawa.servlet.ServletRequestContext"

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    .line 305
    new-instance p2, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {p2, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object p2

    :cond_4
    if-eqz v4, :cond_5

    .line 311
    move-object p2, v0

    check-cast p2, Lgnu/mapping/Symbol;

    invoke-static {p2}, Lgnu/xquery/lang/XQResolveNames;->b(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v3

    goto/16 :goto_5

    .line 315
    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/16 v8, 0x3a

    .line 316
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_8

    .line 318
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_8

    .line 321
    :goto_2
    iget-object v8, p0, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    array-length v9, v8

    if-ge v5, v9, :cond_8

    .line 323
    aget-object v3, v8, v5

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 324
    iget-object v8, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v8, v3, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v8

    if-eqz v8, :cond_6

    move-object v3, v8

    goto :goto_3

    .line 327
    :cond_6
    invoke-static {v3}, Lgnu/xquery/lang/XQResolveNames;->b(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-nez v3, :cond_e

    .line 335
    iget-object v5, p0, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    invoke-virtual {v5, v4, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 338
    iget-object v3, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v3, v4, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v3

    if-nez v3, :cond_e

    if-nez v1, :cond_9

    if-eqz v2, :cond_e

    .line 342
    :cond_9
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p2

    .line 344
    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 346
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v6

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    if-ne p2, v7, :cond_b

    .line 348
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-nez v3, :cond_b

    .line 351
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v6

    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 354
    new-instance p2, Lgnu/expr/QuoteExp;

    invoke-direct {p2, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz p2, :cond_d

    .line 355
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_d

    const-string v3, "class:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 358
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 359
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 361
    :cond_d
    invoke-static {v4}, Lgnu/xquery/lang/XQResolveNames;->b(Lgnu/mapping/Symbol;)Lgnu/expr/Declaration;

    move-result-object v3

    :cond_e
    :goto_5
    if-eqz v3, :cond_f

    .line 367
    invoke-virtual {p1, v3}, Lgnu/expr/AccessExp;->setBinding(Lgnu/expr/Declaration;)V

    return-object p1

    :cond_f
    const/16 p2, 0x65

    if-eqz v1, :cond_10

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lgnu/expr/ExpVisitor;->error(CLjava/lang/String;)V

    return-object p1

    :cond_10
    if-eqz v2, :cond_11

    .line 371
    iget-object v1, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XPST0051"

    invoke-virtual {v1, p2, p1, v0, v2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 373
    :cond_11
    iget-object v1, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown variable $"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XPST0008"

    invoke-virtual {v1, p2, p1, v0, v2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object p1
.end method

.method public visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 0

    const/4 p2, 0x0

    .line 272
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3

    .line 380
    invoke-super {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p2

    .line 381
    invoke-virtual {p1}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    iget-boolean v1, v1, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object p1

    instance-of v1, p1, Lgnu/expr/ApplyExp;

    if-eqz v1, :cond_0

    check-cast p1, Lgnu/expr/ApplyExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object p1

    sget-object v1, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    if-eq p1, v1, :cond_1

    :cond_0
    const-wide/32 v1, 0x1000000

    .line 390
    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    const/4 p1, 0x1

    .line 391
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    :cond_1
    return-object p2
.end method

.method public bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
