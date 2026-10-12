.class public Lgnu/xquery/lang/XQParser;
.super Lgnu/text/Lexer;
.source "SourceFile"


# static fields
.field public static final F:Lgnu/mapping/Symbol;

.field public static final G:Lgnu/mapping/Symbol;

.field public static final H:Lgnu/mapping/Symbol;

.field public static final I:Lgnu/expr/PrimProcedure;

.field public static final J:Lgnu/expr/Expression;

.field public static final K:Lgnu/xml/NamespaceBinding;

.field public static final axisNames:[Ljava/lang/String;

.field public static final castableAs:Lgnu/xquery/util/CastableAs;

.field public static final getExternalFunction:Lgnu/expr/QuoteExp;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static makeChildAxisStep:Lgnu/expr/QuoteExp; = null

.field public static makeDescendantAxisStep:Lgnu/expr/QuoteExp; = null

.field public static makeText:Lgnu/expr/Expression; = null

.field public static final treatAs:Lgnu/kawa/functions/Convert;

.field public static warnHidePreviousDeclaration:Z = false

.field public static warnOldVersion:Z = true


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:Lgnu/expr/Compilation;

.field public D:Lgnu/xml/NamespaceBinding;

.field public E:Lgnu/xml/NamespaceBinding;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field public g:I

.field public final h:Lgnu/xquery/lang/XQuery;

.field public i:Lgnu/xquery/util/NamedCollator;

.field public j:C

.field public k:Z

.field public l:Lgnu/text/Path;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Z

.field public t:[Lgnu/expr/Declaration;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    const-string v0, "$dot$"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    .line 62
    const-string v0, "$position$"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->G:Lgnu/mapping/Symbol;

    .line 65
    const-string v0, "$last$"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->H:Lgnu/mapping/Symbol;

    .line 67
    new-instance v0, Lgnu/kawa/reflect/InstanceOf;

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v1

    const-string v2, "instance"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/lang/XQParser;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 69
    sget-object v0, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    sput-object v0, Lgnu/xquery/lang/XQParser;->castableAs:Lgnu/xquery/util/CastableAs;

    .line 70
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sput-object v0, Lgnu/xquery/lang/XQParser;->treatAs:Lgnu/kawa/functions/Convert;

    .line 1528
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/xquery/lang/XQParser;->I:Lgnu/expr/PrimProcedure;

    .line 1958
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.xml.ChildAxis"

    const-string v2, "make"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1960
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.xml.DescendantAxis"

    invoke-direct {v0, v1, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    .line 2262
    const-string v0, "gnu.kawa.xml.MakeText"

    const-string v1, "makeText"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    .line 2448
    const-string v0, "gnu.kawa.xml.MakeCDATA"

    const-string v1, "makeCDATA"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->J:Lgnu/expr/Expression;

    .line 3654
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 3655
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xml"

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3656
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "xs"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3657
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xsi"

    const-string v5, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3658
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "fn"

    const-string v5, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3659
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "html"

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3660
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "kawa"

    const-string v5, "http://kawa.gnu.org/"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3661
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "qexo"

    const-string v5, "http://qexo.gnu.org/"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3662
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "local"

    const-string v5, "http://www.w3.org/2005/xquery-local-functions"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3663
    sput-object v0, Lgnu/xquery/lang/XQParser;->K:Lgnu/xml/NamespaceBinding;

    .line 3721
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v2, "getExternal"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v2, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    const/16 v0, 0xd

    .line 4275
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 4278
    const-string v2, "ancestor"

    aput-object v2, v0, v1

    .line 4279
    const-string v1, "ancestor-or-self"

    aput-object v1, v0, v4

    .line 4280
    const-string v1, "attribute"

    aput-object v1, v0, v5

    .line 4281
    const-string v1, "child"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    .line 4282
    const-string v2, "descendant"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 4283
    const-string v2, "descendant-or-self"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 4284
    const-string v2, "following"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 4285
    const-string v2, "following-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 4286
    const-string v2, "namespace"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 4287
    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 4288
    const-string v2, "preceding"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 4289
    const-string v2, "preceding-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 4290
    const-string v2, "self"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V
    .locals 0

    .line 1220
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    const/16 p2, 0x4c

    .line 77
    iput-char p2, p0, Lgnu/xquery/lang/XQParser;->j:C

    .line 80
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->l:Lgnu/text/Path;

    const/4 p1, 0x3

    .line 158
    iput p1, p0, Lgnu/xquery/lang/XQParser;->r:I

    .line 166
    sget-object p1, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 3646
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    .line 1221
    iput-object p3, p0, Lgnu/xquery/lang/XQParser;->h:Lgnu/xquery/lang/XQuery;

    const/4 p1, 0x1

    .line 1222
    iput p1, p0, Lgnu/text/Lexer;->nesting:I

    .line 1225
    sget-object p1, Lgnu/xquery/lang/XQParser;->K:Lgnu/xml/NamespaceBinding;

    .line 1226
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public static final D(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xb

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;
    .locals 3

    if-eqz p1, :cond_0

    .line 2552
    sget-object p1, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 2554
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-direct {v0, v1, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public static booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    const/4 v0, 0x1

    .line 2442
    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2443
    const-string p0, "gnu.xquery.util.BooleanValue"

    const-string v1, "booleanValue"

    invoke-static {p0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    .line 2445
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static g(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1435
    const-string p0, "gnu.kawa.xml.AttributeType"

    goto :goto_0

    :cond_0
    const-string p0, "gnu.kawa.xml.ElementType"

    :goto_0
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    .line 1438
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v2, "make"

    invoke-virtual {p0, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-direct {v1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    const/4 p0, 0x4

    .line 1440
    invoke-virtual {v1, p0}, Lgnu/expr/Expression;->setFlag(I)V

    if-nez p2, :cond_1

    return-object v1

    .line 1446
    :cond_1
    new-instance p0, Lgnu/expr/BeginExp;

    invoke-direct {p0, p2, v1}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object p0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 4295
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 4303
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-static {p0, p1, p2}, Lgnu/expr/Declaration;->getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v0

    if-gez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    return v0
.end method

.method public final B()I
    .locals 9

    .line 947
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    const/16 v2, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x43

    if-ne v0, v1, :cond_3

    .line 1187
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1189
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->c()I

    move-result v0

    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    .line 1191
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    .line 1193
    :cond_3
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 951
    :cond_4
    :goto_2
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v0

    .line 952
    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v3, v3, v1

    const-string v4, "element"

    const/16 v5, 0x24

    const/16 v6, 0x7b

    const/16 v7, 0x28

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-ne v0, v6, :cond_15

    .line 1067
    const-string v3, "validate"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf8

    .line 1068
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_2
    if-ne v0, v6, :cond_15

    .line 1063
    const-string v3, "unordered"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xfa

    .line 1064
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1049
    :pswitch_3
    const-string v3, "text"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v0, v7, :cond_6

    const/16 v0, 0xe7

    .line 1052
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_6
    if-ne v0, v6, :cond_7

    .line 1055
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0xfd

    .line 1056
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_7
    if-ne v0, v7, :cond_15

    .line 1059
    const-string v3, "typeswitch"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf2

    .line 1060
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_4
    if-ne v0, v5, :cond_8

    .line 1041
    const-string v3, "some"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v0, 0xf5

    .line 1042
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_8
    if-ne v0, v7, :cond_9

    .line 1043
    const-string v3, "schema-attribute"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v0, 0xef

    .line 1044
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_9
    if-ne v0, v7, :cond_15

    .line 1045
    const-string v3, "schema-element"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf0

    .line 1046
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1028
    :pswitch_5
    const-string v3, "processing-instruction"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_a

    const/16 v0, 0xe9

    .line 1031
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_a
    if-eq v0, v6, :cond_b

    int-to-char v3, v0

    .line 1032
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1034
    :cond_b
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0xff

    .line 1035
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_6
    if-ne v0, v6, :cond_15

    .line 1024
    const-string v3, "ordered"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf9

    .line 1025
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_7
    if-ne v0, v7, :cond_15

    .line 1020
    const-string v3, "node"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xe6

    .line 1021
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_8
    if-ne v0, v5, :cond_15

    .line 1016
    const-string v3, "let"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf4

    .line 1017
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_9
    if-ne v0, v7, :cond_c

    .line 1010
    const-string v3, "if"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0xf1

    .line 1011
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_c
    if-ne v0, v7, :cond_15

    .line 1012
    const-string v3, "item"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xed

    .line 1013
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_a
    if-ne v0, v5, :cond_15

    .line 1006
    const-string v3, "for"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf3

    .line 1007
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 989
    :pswitch_b
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-ne v0, v7, :cond_d

    const/16 v0, 0xeb

    .line 992
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_d
    if-eq v0, v6, :cond_e

    int-to-char v3, v0

    .line 993
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 995
    :cond_e
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0xfb

    .line 996
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_f
    if-ne v0, v7, :cond_10

    .line 1000
    const-string v3, "empty-sequence"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v0, 0xee

    .line 1001
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_10
    if-ne v0, v5, :cond_15

    .line 1002
    const-string v3, "every"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf6

    .line 1003
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :pswitch_c
    if-ne v0, v6, :cond_11

    .line 980
    const-string v3, "document"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 982
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0x100

    .line 983
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_11
    if-ne v0, v7, :cond_15

    .line 985
    const-string v3, "document-node"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xea

    .line 986
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 968
    :pswitch_d
    const-string v3, "comment"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_12

    const/16 v0, 0xe8

    .line 971
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_12
    if-ne v0, v6, :cond_15

    .line 974
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0xfe

    .line 975
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 955
    :pswitch_e
    const-string v3, "attribute"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_13

    const/16 v0, 0xec

    .line 958
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_13
    if-eq v0, v6, :cond_14

    int-to-char v3, v0

    .line 959
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 961
    :cond_14
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    const/16 v0, 0xfc

    .line 962
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_15
    :goto_4
    if-ne v0, v7, :cond_16

    .line 1071
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v3

    if-eq v3, v2, :cond_16

    const/16 v0, 0x46

    .line 1073
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_16
    if-ne v0, v2, :cond_17

    .line 1075
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v3

    if-ne v3, v2, :cond_17

    .line 1076
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->c()I

    move-result v0

    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1077
    :cond_17
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1078
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    const/16 v1, 0x73

    .line 1079
    const-string v2, "import"

    const-string v3, "define"

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x76

    const-string v5, "declare"

    if-eq v0, v1, :cond_27

    const/16 v1, 0x78

    const/16 v6, 0x53

    if-eq v0, v1, :cond_26

    const/16 v1, 0x4f

    const/16 v7, 0x45

    const-string v8, "default"

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_5

    .line 1146
    :pswitch_f
    const-string v1, "rdering"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x55

    .line 1147
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1148
    :cond_18
    const-string v1, "ption"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x6f

    .line 1149
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1135
    :pswitch_10
    const-string v1, "amespace"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v0, 0x4e

    .line 1136
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1137
    :cond_19
    invoke-virtual {p0, v8, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1139
    const-string v0, "replace \'default namespace\' by \'declare default element namespace\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1140
    iput v7, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v7

    .line 1142
    :cond_1a
    const-string v2, "module"

    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x4d

    .line 1143
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1131
    :pswitch_11
    const-string v1, "odule"

    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x49

    .line 1132
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1117
    :pswitch_12
    const-string v2, "unction"

    invoke-virtual {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x50

    if-eqz v4, :cond_1b

    .line 1118
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v5

    .line 1119
    :cond_1b
    invoke-virtual {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1121
    const-string v0, "replace \'define function\' by \'declare function\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1122
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v5

    .line 1124
    :cond_1c
    invoke-virtual {p0, v8, v2}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1126
    const-string v0, "replace \'default function\' by \'declare default function namespace\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1127
    iput v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v1

    .line 1094
    :pswitch_13
    const-string v2, "efault"

    invoke-virtual {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1096
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1097
    const-string v0, "function"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1098
    iput v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v1

    .line 1099
    :cond_1d
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1100
    iput v7, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v7

    .line 1101
    :cond_1e
    const-string v0, "collation"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x47

    .line 1102
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1103
    :cond_1f
    const-string v0, "order"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x48

    .line 1104
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1105
    :cond_20
    const-string v0, "unrecognized/unimplemented \'declare default\'"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 232
    :cond_21
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-ltz v0, :cond_22

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_21

    .line 1107
    :cond_22
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->B()I

    move-result v0

    return v0

    .line 1110
    :cond_23
    :pswitch_14
    const-string v1, "lement"

    invoke-virtual {p0, v8, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1112
    const-string v0, "replace \'default element\' by \'declare default element namespace\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1113
    iput v7, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v7

    .line 1088
    :pswitch_15
    const-string v1, "onstruction"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v0, 0x4b

    .line 1089
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1090
    :cond_24
    const-string v1, "opy-namespaces"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x4c

    .line 1091
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1082
    :pswitch_16
    const-string v1, "ase-uri"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x42

    .line 1083
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1084
    :cond_25
    const-string v1, "oundary-space"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1085
    iput v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v6

    .line 1167
    :cond_26
    const-string v1, "mlspace"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1169
    const-string v0, "replace \'define xmlspace\' by \'declare boundary-space\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1170
    iput v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v6

    .line 1156
    :cond_27
    const-string v1, "ariable"

    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x56

    if-eqz v2, :cond_28

    .line 1157
    iput v4, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v4

    .line 1158
    :cond_28
    invoke-virtual {p0, v3, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1160
    const-string v0, "replace \'define variable\' by \'declare variable\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 1161
    iput v4, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v4

    .line 1163
    :cond_29
    const-string v1, "xquery"

    const-string v2, "ersion"

    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x59

    .line 1164
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 1152
    :cond_2a
    const-string v1, "chema"

    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v0, 0x54

    .line 1153
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    :cond_2b
    :goto_5
    if-ltz v0, :cond_2c

    .line 1176
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    int-to-char v0, v0

    .line 1177
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v0, 0x57

    .line 1180
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 1183
    :cond_2c
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6d
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final C()I
    .locals 9

    .line 789
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 791
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    if-nez v0, :cond_0

    return v1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    :cond_1
    const/16 v1, 0x41

    if-ne v0, v1, :cond_12

    .line 797
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/16 v1, 0x69

    const/16 v2, 0x6c

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/16 v5, 0x1a6

    const/16 v6, 0x6f

    .line 799
    const-string v7, "as"

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 877
    :pswitch_1
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 879
    const-string v0, "use \'instanceof of\' (two words) instead of \'instanceof\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 880
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 873
    :pswitch_2
    const-string v0, "intersect"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a4

    .line 874
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 867
    :pswitch_3
    const-string v0, "instance"

    const-string v1, "of"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 869
    :cond_2
    const-string v0, "castable"

    invoke-virtual {p0, v0, v7}, Lgnu/xquery/lang/XQParser;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a8

    .line 870
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 863
    :pswitch_4
    const-string v0, "except"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a5

    .line 864
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 853
    :pswitch_5
    const-string v0, "where"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc4

    .line 854
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 855
    :cond_3
    const-string v0, "isnot"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x199

    .line 856
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 857
    :cond_4
    const-string v0, "union"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a3

    .line 858
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 859
    :cond_5
    const-string v0, "treat"

    invoke-virtual {p0, v0, v7}, Lgnu/xquery/lang/XQParser;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a7

    .line 860
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 847
    :pswitch_6
    const-string v0, "idiv"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1a1

    .line 848
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 849
    :cond_6
    const-string v0, "cast"

    invoke-virtual {p0, v0, v7}, Lgnu/xquery/lang/XQParser;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a9

    .line 850
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 827
    :pswitch_7
    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v4, v0, v4

    .line 828
    aget-char v5, v0, v8

    const/4 v7, 0x2

    .line 829
    aget-char v0, v0, v7

    const/16 v7, 0x61

    const/16 v8, 0x64

    if-ne v4, v7, :cond_7

    if-ne v5, v3, :cond_12

    if-ne v0, v8, :cond_12

    const/16 v0, 0x191

    .line 833
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x6d

    if-ne v4, v3, :cond_9

    const/16 v1, 0x75

    if-ne v5, v1, :cond_8

    if-ne v0, v2, :cond_8

    const/16 v1, 0x19f

    .line 837
    iput v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    :cond_8
    if-ne v5, v6, :cond_12

    if-ne v0, v8, :cond_12

    const/16 v0, 0x1a2

    .line 839
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    :cond_9
    if-ne v4, v8, :cond_12

    if-ne v5, v1, :cond_12

    const/16 v1, 0x76

    if-ne v0, v1, :cond_12

    const/16 v0, 0x1a0

    .line 843
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto/16 :goto_1

    .line 802
    :pswitch_8
    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v4, v0, v4

    .line 803
    aget-char v0, v0, v8

    if-ne v4, v6, :cond_a

    const/16 v5, 0x72

    if-ne v0, v5, :cond_a

    const/16 v0, 0x190

    .line 805
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_a
    const/16 v5, 0x74

    if-ne v4, v5, :cond_b

    if-ne v0, v6, :cond_b

    const/16 v0, 0x19c

    .line 807
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_b
    if-ne v4, v1, :cond_c

    const/16 v1, 0x73

    if-ne v0, v1, :cond_c

    const/16 v0, 0x198

    .line 809
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_c
    const/16 v1, 0x65

    if-ne v4, v1, :cond_d

    const/16 v6, 0x71

    if-ne v0, v6, :cond_d

    const/16 v0, 0x1aa

    .line 811
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_d
    if-ne v4, v3, :cond_e

    if-ne v0, v1, :cond_e

    const/16 v0, 0x1ab

    .line 813
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_e
    const/16 v3, 0x67

    if-ne v4, v3, :cond_10

    if-ne v0, v1, :cond_f

    const/16 v0, 0x1af

    .line 816
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_f
    if-ne v0, v5, :cond_12

    const/16 v0, 0x1ae

    .line 817
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_10
    if-ne v4, v2, :cond_12

    if-ne v0, v1, :cond_11

    const/16 v0, 0x1ad

    .line 821
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    goto :goto_1

    :cond_11
    if-ne v0, v5, :cond_12

    const/16 v0, 0x1ac

    .line 822
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 887
    :cond_12
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 1215
    :cond_0
    new-instance v0, Lgnu/xml/NamespaceBinding;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public final F(II)V
    .locals 0

    .line 485
    iput p1, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 486
    iget-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 487
    iget-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {p1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lgnu/xquery/lang/XQParser;->g:I

    return-void
.end method

.method public final G()V
    .locals 9

    .line 266
    iget v0, p0, Lgnu/xquery/lang/XQParser;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->x:I

    .line 267
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 268
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 269
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    iput v0, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 272
    iput v1, p0, Lgnu/xquery/lang/XQParser;->g:I

    const/16 v3, 0x65

    .line 273
    invoke-virtual {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_0
    const/16 v2, 0x3a

    .line 277
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 280
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v7

    if-ne v7, v2, :cond_1

    const/16 v8, 0x28

    if-ne v5, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    if-ne v5, v2, :cond_4

    if-nez v6, :cond_2

    .line 293
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->popNesting(C)V

    return-void

    :cond_2
    add-int/lit8 v6, v6, -0x1

    :cond_3
    :goto_1
    move v5, v7

    goto :goto_0

    :cond_4
    if-gez v7, :cond_3

    .line 300
    iput v0, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 301
    iput v1, p0, Lgnu/xquery/lang/XQParser;->g:I

    .line 302
    const-string v5, "non-terminated comment starting here"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final H()V
    .locals 7

    .line 242
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 243
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    .line 244
    const-string v3, "use (: :) instead of old-style comment {-- --}"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    .line 247
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_2

    if-lt v4, v2, :cond_2

    return-void

    :cond_2
    if-gez v5, :cond_0

    .line 254
    iput v0, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 255
    iput v1, p0, Lgnu/xquery/lang/XQParser;->g:I

    .line 256
    const-string v5, "non-terminated comment starting here"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final I(Z)I
    .locals 3

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3a

    .line 199
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->G()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    .line 208
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    return v1

    .line 211
    :cond_3
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 214
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    .line 215
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->unread(I)V

    return v1

    .line 218
    :cond_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->H()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    if-ltz v0, :cond_7

    int-to-char v1, v0

    .line 220
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_6
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    :cond_7
    :goto_1
    return v0
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    .line 4425
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4426
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x65

    goto :goto_1

    :cond_2
    const/16 v0, 0x77

    :goto_1
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    return-void
.end method

.method public final K(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5

    .line 2724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2726
    :cond_0
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    new-instance v2, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v4, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-direct {v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v4, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public appendNamedEntity(Ljava/lang/String;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 744
    const-string v0, "lt"

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    .line 746
    :cond_0
    const-string v0, "gt"

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    .line 748
    :cond_1
    const-string v0, "amp"

    if-ne p1, v0, :cond_2

    const/16 p1, 0x26

    goto :goto_0

    .line 750
    :cond_2
    const-string v0, "quot"

    if-ne p1, v0, :cond_3

    const/16 p1, 0x22

    goto :goto_0

    .line 752
    :cond_3
    const-string v0, "apos"

    if-ne p1, v0, :cond_4

    const/16 p1, 0x27

    goto :goto_0

    .line 755
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown enity reference: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    const/16 p1, 0x3f

    .line 756
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1199
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1200
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "XQST0070"

    const/16 v2, 0x65

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    .line 1203
    :cond_0
    const-string p1, "namespace uri cannot be the same as the prefined xml namespace"

    invoke-virtual {p0, v2, p1, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v0, :cond_3

    .line 1206
    const-string p2, "xmlns"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 1207
    :cond_3
    :goto_0
    const-string p1, "namespace prefix cannot be \'xml\' or \'xmlns\'"

    invoke-virtual {p0, v2, p1, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .locals 4

    .line 927
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 930
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    :cond_1
    if-ltz v1, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 935
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown axis name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPST0003"

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    :cond_3
    add-int/lit8 v1, v1, 0x64

    int-to-char v0, v1

    return v0
.end method

.method public final d()I
    .locals 10

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 505
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v0

    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_33

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    goto/16 :goto_e

    :cond_2
    const/4 v2, 0x1

    const/16 v3, 0x28

    const/16 v4, 0x3a

    if-ne v0, v3, :cond_5

    .line 513
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->G()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x23

    .line 515
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc5

    const/4 v1, 0x2

    .line 516
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v0

    .line 518
    :cond_4
    invoke-virtual {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v3

    :cond_5
    const/16 v3, 0x2d

    const/16 v5, 0x7b

    if-ne v0, v5, :cond_8

    .line 522
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 523
    invoke-virtual {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v5

    .line 524
    :cond_6
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 528
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    .line 529
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    .line 530
    invoke-virtual {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v5

    .line 532
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->H()V

    goto :goto_0

    :cond_8
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_0

    .line 537
    iput v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 538
    iget-object v6, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 539
    iget-object v6, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    iput v6, p0, Lgnu/xquery/lang/XQParser;->g:I

    int-to-char v0, v0

    const/16 v6, 0x21

    const/16 v7, 0x3d

    if-eq v0, v6, :cond_31

    const/16 v6, 0x22

    if-eq v0, v6, :cond_2c

    const/16 v8, 0x24

    if-eq v0, v8, :cond_32

    const/16 v8, 0x27

    if-eq v0, v8, :cond_2c

    const/16 v6, 0x2f

    if-eq v0, v6, :cond_2b

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_32

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_32

    const/16 v6, 0x7c

    if-eq v0, v6, :cond_2a

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_32

    packed-switch v0, :pswitch_data_0

    const/16 v6, 0x3e

    packed-switch v0, :pswitch_data_1

    .line 610
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    const/16 v9, 0x2e

    if-nez v6, :cond_15

    if-ne v0, v9, :cond_9

    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_4

    :cond_9
    if-ne v0, v9, :cond_a

    .line 670
    invoke-virtual {p0, v9}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v0, 0x33

    goto/16 :goto_d

    .line 674
    :cond_a
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 678
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 679
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    int-to-char v1, v0

    .line 681
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v1, 0x41

    if-gez v0, :cond_b

    const/16 v0, 0x41

    goto/16 :goto_d

    :cond_b
    if-eq v0, v4, :cond_c

    goto :goto_2

    .line 692
    :cond_c
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_d

    .line 694
    const-string v2, "unexpected end-of-file after NAME \':\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_d
    int-to-char v2, v0

    .line 696
    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 698
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 701
    :cond_e
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 702
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    int-to-char v2, v0

    .line 704
    invoke-static {v2}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x51

    goto :goto_2

    :cond_f
    if-ne v2, v7, :cond_10

    .line 711
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->unread(I)V

    goto :goto_2

    :cond_10
    const/16 v1, 0x43

    .line 717
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    :cond_11
    :goto_3
    move v0, v1

    goto/16 :goto_d

    :cond_12
    move v0, v1

    goto :goto_1

    :cond_13
    if-lt v0, v5, :cond_14

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_14

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_d

    .line 723
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid character \'\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_d

    :cond_15
    :goto_4
    if-ne v0, v9, :cond_16

    goto :goto_6

    :cond_16
    const/4 v4, 0x0

    .line 616
    :goto_5
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 617
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    if-gez v0, :cond_17

    goto :goto_7

    :cond_17
    int-to-char v5, v0

    if-ne v5, v9, :cond_19

    if-eqz v4, :cond_18

    goto :goto_7

    :cond_18
    move v0, v5

    :goto_6
    const/4 v4, 0x1

    goto :goto_5

    .line 626
    :cond_19
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_24

    .line 629
    :goto_7
    const-string v6, "missing separator"

    const-string v7, "XPST0003"

    const/16 v8, 0x65

    if-eq v0, v8, :cond_1d

    const/16 v2, 0x45

    if-ne v0, v2, :cond_1a

    goto :goto_9

    :cond_1a
    if-eqz v4, :cond_1b

    const/16 v1, 0x31

    goto :goto_8

    :cond_1b
    const/16 v1, 0x30

    :goto_8
    if-ltz v0, :cond_11

    int-to-char v2, v0

    .line 493
    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 494
    invoke-virtual {p0, v8, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_1c
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    goto :goto_3

    :cond_1d
    :goto_9
    int-to-char v0, v0

    .line 631
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 632
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_1e

    if-ne v0, v3, :cond_1f

    .line 635
    :cond_1e
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 636
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    :cond_1f
    :goto_a
    if-gez v0, :cond_20

    goto :goto_b

    :cond_20
    int-to-char v0, v0

    .line 644
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_23

    .line 493
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 494
    invoke-virtual {p0, v8, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_21
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    :goto_b
    if-nez v1, :cond_22

    .line 655
    const-string v0, "no digits following exponent"

    invoke-virtual {p0, v8, v0, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_22
    const/16 v0, 0x32

    goto/16 :goto_d

    .line 650
    :cond_23
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 651
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    move v0, v5

    goto :goto_5

    .line 578
    :pswitch_0
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x197

    goto/16 :goto_d

    :cond_25
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x19a

    goto/16 :goto_d

    :cond_26
    const/16 v0, 0x195

    goto/16 :goto_d

    .line 573
    :pswitch_1
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->checkNext(C)Z

    const/16 v0, 0x192

    goto/16 :goto_d

    .line 582
    :pswitch_2
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x196

    goto/16 :goto_d

    :cond_27
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x19b

    goto/16 :goto_d

    :cond_28
    const/16 v0, 0x194

    goto :goto_d

    .line 547
    :pswitch_3
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x4c

    goto :goto_d

    .line 549
    :cond_29
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v0, 0x58

    goto :goto_d

    :pswitch_4
    const/16 v0, 0x19e

    goto :goto_d

    :pswitch_5
    const/16 v0, 0x19d

    goto :goto_d

    :pswitch_6
    const/16 v0, 0x19f

    goto :goto_d

    :cond_2a
    const/16 v0, 0x1a3

    goto :goto_d

    .line 569
    :cond_2b
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v0, 0x44

    goto :goto_d

    .line 586
    :cond_2c
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v1

    .line 589
    :goto_c
    invoke-virtual {p0}, Lgnu/text/Lexer;->readUnicodeChar()I

    move-result v2

    if-gez v2, :cond_2d

    .line 591
    const-string v3, "unexpected end-of-file in string starting here"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_2d
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2e

    .line 594
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->l()V

    goto :goto_c

    :cond_2e
    if-ne v0, v2, :cond_30

    .line 599
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v2

    if-eq v0, v2, :cond_2f

    .line 606
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->popNesting(C)V

    const/16 v0, 0x22

    goto :goto_d

    .line 602
    :cond_2f
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v2

    .line 604
    :cond_30
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_c

    .line 565
    :cond_31
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v0, 0x193

    .line 725
    :cond_32
    :goto_d
    :pswitch_7
    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    return v0

    .line 508
    :cond_33
    :goto_e
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    if-gtz v0, :cond_0

    .line 509
    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->F(II)V

    return v2

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public declError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4359
    iget-boolean v0, p0, Lgnu/text/Lexer;->interactive:Z

    if-eqz v0, :cond_0

    .line 4360
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 4361
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 4364
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 4366
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    .line 4368
    :cond_2
    :goto_1
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 898
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 901
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    .line 904
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v2

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    if-gez v2, :cond_1

    return p1

    :cond_1
    int-to-char p2, v2

    .line 909
    invoke-static {p2}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 911
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 917
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0

    .line 920
    :cond_5
    :goto_1
    iget-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lgnu/text/LineBufferedReader;->skip(I)I

    return v0
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4410
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4353
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4344
    invoke-virtual {p0}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4345
    new-instance v1, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->f:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->g:I

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4347
    iput-object p3, v1, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4348
    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public final f(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .line 1294
    const-string v0, "gnu.kawa.xml.IntersectNodes"

    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "gnu.xquery.util.ArithOp"

    const-string v3, "gnu.xquery.util.Compare"

    packed-switch p1, :pswitch_data_0

    .line 1376
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "unimplemented binary op: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1330
    :pswitch_1
    const-string p1, "valGe"

    const-string v0, "ge"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1327
    :pswitch_2
    const-string p1, "valGt"

    const-string v0, "gt"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1324
    :pswitch_3
    const-string p1, "valLe"

    const-string v0, "le"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1321
    :pswitch_4
    const-string p1, "valLt"

    const-string v0, "lt"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1318
    :pswitch_5
    const-string p1, "valNe"

    const-string v0, "ne"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1315
    :pswitch_6
    const-string p1, "valEq"

    const-string v0, "eq"

    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1373
    :pswitch_7
    const-string p1, "exceptNodes"

    invoke-static {v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1369
    :pswitch_8
    const-string p1, "intersectNodes"

    invoke-static {v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1366
    :pswitch_9
    const-string p1, "gnu.kawa.xml.UnionNodes"

    const-string v0, "unionNodes"

    invoke-static {p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1312
    :pswitch_a
    const-string p1, "mod"

    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1309
    :pswitch_b
    const-string p1, "idiv"

    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1306
    :pswitch_c
    const-string p1, "div"

    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1303
    :pswitch_d
    const-string p1, "mul"

    const-string v0, "*"

    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    .line 1300
    :pswitch_e
    const-string p1, "sub"

    const-string v0, "-"

    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1297
    :pswitch_f
    const-string p1, "add"

    const-string v0, "+"

    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1363
    :pswitch_10
    const-string p1, "gnu.xquery.util.IntegerRange"

    const-string v0, "integerRange"

    invoke-static {p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1360
    :pswitch_11
    const-string p1, "$Ls"

    const-string v0, "<<"

    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1357
    :pswitch_12
    const-string p1, "$Gr"

    const-string v0, ">>"

    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1354
    :pswitch_13
    const-string p1, "$Ne"

    const-string v0, "isnot"

    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1351
    :pswitch_14
    const-string p1, "$Eq"

    const-string v0, "is"

    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1348
    :pswitch_15
    const-string p1, ">="

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1342
    :pswitch_16
    const-string p1, "<="

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1345
    :pswitch_17
    const-string p1, ">"

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1339
    :pswitch_18
    const-string p1, "<"

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1336
    :pswitch_19
    const-string p1, "!="

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    .line 1333
    :pswitch_1a
    const-string p1, "="

    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    .line 1279
    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 1280
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-direct {p2, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x192
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
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4415
    invoke-virtual {p0}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4416
    new-instance v1, Lgnu/text/SourceError;

    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->f:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->g:I

    const/16 v2, 0x66

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4418
    iput-object p2, v1, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4419
    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4420
    new-instance p1, Lgnu/text/SyntaxException;

    invoke-direct {p1, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1
.end method

.method public getDelimited(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->readDelimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected end-of-file looking for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getStaticBaseUri()Ljava/lang/String;
    .locals 4

    .line 107
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->l:Lgnu/text/Path;

    if-nez v0, :cond_6

    .line 110
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 111
    const-string v2, ""

    const-string v3, "base-uri"

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    instance-of v2, v1, Lgnu/text/Path;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 124
    instance-of v2, v0, Lgnu/text/FilePath;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lgnu/text/Path;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lgnu/mapping/TtyInPort;

    if-nez v2, :cond_3

    instance-of v1, v1, Lgnu/mapping/CharArrayInPort;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 132
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v3

    .line 99
    :cond_4
    invoke-virtual {v3}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lgnu/text/FilePath;

    if-eqz v1, :cond_5

    .line 101
    invoke-virtual {v0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    .line 135
    :cond_5
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->l:Lgnu/text/Path;

    .line 138
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 762
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->mark()V

    .line 765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 766
    invoke-virtual {p0, p2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 769
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    return v1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be followed by \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPST0003"

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final i(I)Lgnu/expr/Expression;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1673
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->y()Lgnu/expr/Expression;

    move-result-object v3

    .line 1676
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->C()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x194

    if-ne v4, v5, :cond_0

    .line 1677
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_0

    goto/16 :goto_3

    .line 1681
    :cond_0
    invoke-static {v4}, Lgnu/xquery/lang/XQParser;->D(I)I

    move-result v5

    if-ge v5, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v6, 0x25

    .line 1684
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v6

    .line 1685
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1686
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->popNesting(C)V

    .line 1687
    const-string v6, "instanceOf"

    const/16 v7, 0x1a6

    const-string v8, "gnu.xquery.lang.XQParser"

    if-lt v4, v7, :cond_4

    const/16 v9, 0x1a9

    if-gt v4, v9, :cond_4

    if-eq v4, v9, :cond_2

    const/16 v5, 0x1a8

    if-ne v4, v5, :cond_3

    :cond_2
    const/16 v5, 0x43

    .line 1690
    iput v5, p0, Lgnu/xquery/lang/XQParser;->c:I

    .line 1691
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v5

    .line 1692
    iput v1, p0, Lgnu/xquery/lang/XQParser;->c:I

    .line 1693
    new-array v7, v0, [Lgnu/expr/Expression;

    packed-switch v4, :pswitch_data_0

    .line 1715
    aput-object v5, v7, v1

    .line 1716
    aput-object v3, v7, v2

    .line 1717
    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v4, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_1

    .line 1704
    :pswitch_0
    aput-object v3, v7, v1

    .line 1705
    aput-object v5, v7, v2

    .line 1706
    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v4, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_1

    .line 1709
    :pswitch_1
    aput-object v5, v7, v1

    .line 1710
    aput-object v3, v7, v2

    .line 1711
    const-string v3, "treatAs"

    invoke-static {v8, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_1

    .line 1698
    :pswitch_2
    aput-object v3, v7, v1

    .line 1699
    aput-object v5, v7, v2

    .line 1700
    invoke-static {v8, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 1720
    :goto_1
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v3, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    :goto_2
    move-object v3, v4

    goto :goto_0

    :cond_4
    if-ne v4, v7, :cond_5

    .line 1724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v4

    new-array v5, v0, [Lgnu/expr/Expression;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    .line 1725
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-static {v8, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_0

    :cond_5
    add-int/2addr v5, v2

    .line 1731
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->i(I)Lgnu/expr/Expression;

    move-result-object v5

    const/16 v6, 0x191

    if-ne v4, v6, :cond_6

    .line 1733
    new-instance v4, Lgnu/expr/IfExp;

    invoke-static {v3}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    sget-object v6, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v4, v3, v5, v6}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_2

    :cond_6
    const/16 v6, 0x190

    if-ne v4, v6, :cond_7

    .line 1735
    new-instance v4, Lgnu/expr/IfExp;

    invoke-static {v3}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    sget-object v6, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v4, v3, v6, v5}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_2

    .line 1737
    :cond_7
    invoke-virtual {p0, v4, v3, v5}, Lgnu/xquery/lang/XQParser;->f(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1a6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(CLjava/util/Vector;)V
    .locals 11

    const/4 v0, 0x0

    .line 2273
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 2274
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2276
    iget-boolean v3, p0, Lgnu/xquery/lang/XQParser;->n:Z

    const/16 v4, 0x3c

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v5, v3

    .line 2280
    :goto_1
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v6

    if-ne v6, p1, :cond_a

    if-ne p1, v4, :cond_9

    .line 2285
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v6

    .line 2287
    iget v7, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez v7, :cond_1

    .line 2289
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-direct {v8, v9, v0, v7}, Ljava/lang/String;-><init>([CII)V

    .line 2290
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v8, v2, [Lgnu/expr/Expression;

    aput-object v7, v8, v0

    .line 2291
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v9, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v7, v9, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 2293
    :goto_2
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_2

    if-eqz v7, :cond_18

    if-nez v5, :cond_18

    .line 2297
    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 2300
    :cond_2
    invoke-virtual {p0, v6, v2}, Lgnu/xquery/lang/XQParser;->z(IZ)Lgnu/expr/Expression;

    move-result-object v6

    .line 2303
    instance-of v8, v6, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_4

    .line 2305
    move-object v8, v6

    check-cast v8, Lgnu/expr/ApplyExp;

    .line 2306
    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    sget-object v10, Lgnu/xquery/lang/XQParser;->J:Lgnu/expr/Expression;

    if-ne v9, v10, :cond_4

    .line 2309
    invoke-virtual {v8, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2310
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-eqz v7, :cond_6

    if-eqz v5, :cond_5

    if-eqz v9, :cond_6

    .line 2314
    :cond_5
    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    if-eqz v9, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    if-nez v8, :cond_8

    .line 2320
    invoke-virtual {p2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2321
    :cond_8
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    goto :goto_1

    .line 2324
    :cond_9
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->checkNext(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2326
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x7b

    if-eq v6, p1, :cond_13

    if-ltz v6, :cond_13

    if-ne v6, v7, :cond_b

    goto :goto_6

    :cond_b
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_d

    .line 2371
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v6

    if-ne v6, v7, :cond_c

    .line 2374
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_8

    .line 2379
    :cond_c
    const-string v7, "unexpected \'}\' in element content"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->unread(I)V

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0x26

    if-ne v6, v7, :cond_e

    .line 2385
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->l()V

    goto :goto_8

    :cond_e
    if-eq p1, v4, :cond_10

    const/16 v7, 0x9

    if-eq v6, v7, :cond_f

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    const/16 v7, 0xd

    if-ne v6, v7, :cond_10

    :cond_f
    const/16 v6, 0x20

    :cond_10
    if-ne v6, v4, :cond_11

    const/16 v7, 0x65

    .line 2394
    const-string v8, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {p0, v7, v8}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_11
    if-eqz v5, :cond_12

    int-to-char v5, v6

    .line 2396
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    :cond_12
    int-to-char v6, v6

    .line 2397
    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto/16 :goto_1

    :cond_13
    :goto_6
    if-ne v6, v7, :cond_14

    .line 2332
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v8

    goto :goto_7

    :cond_14
    const/4 v8, -0x1

    :goto_7
    if-ne v8, v7, :cond_15

    .line 2335
    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2342
    :cond_15
    iget v9, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez v9, :cond_16

    if-nez v5, :cond_16

    .line 2343
    new-instance v7, Ljava/lang/String;

    iget-object v10, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    invoke-direct {v7, v10, v0, v9}, Ljava/lang/String;-><init>([CII)V

    goto :goto_9

    :cond_16
    if-ne v6, v7, :cond_17

    .line 2344
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v1, v7, :cond_17

    .line 2347
    const-string v7, ""

    .line 2350
    :goto_9
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v7, v2, [Lgnu/expr/Expression;

    aput-object v9, v7, v0

    .line 2351
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v9, v10, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2353
    :cond_17
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-ne v6, p1, :cond_19

    :cond_18
    return-void

    :cond_19
    if-gez v6, :cond_1a

    .line 2357
    const-string v6, "unexpected end-of-file"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2360
    :cond_1a
    invoke-virtual {p0, v8}, Lgnu/text/Lexer;->unread(I)V

    .line 2361
    iget v1, p0, Lgnu/xquery/lang/XQParser;->B:I

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/xquery/lang/XQParser;->B:I

    .line 2362
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object v1

    .line 2363
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 2365
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    goto/16 :goto_0
.end method

.method public final k()Lgnu/expr/Expression;
    .locals 10

    .line 2408
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2409
    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    const/16 v1, 0x7b

    .line 2410
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v1

    .line 2411
    const-string v2, "unexpected end-of-file after \'{\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 2413
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v3

    .line 2414
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v5

    .line 2418
    :goto_0
    iget v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_0

    goto :goto_3

    :cond_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const/16 v7, 0x29

    if-eq v6, v7, :cond_3

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x2c

    if-eq v6, v7, :cond_2

    .line 2426
    const-string v5, "missing \'}\' or \',\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_1

    .line 2428
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1638
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v6

    .line 1285
    const-string v7, "gnu.kawa.functions.AppendValues"

    const-string v8, "appendValues"

    invoke-static {v7, v8}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    const/4 v8, 0x2

    .line 1279
    new-array v8, v8, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    aput-object v6, v8, v3

    .line 1280
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 2422
    :cond_3
    :goto_2
    const-string v3, "missing \'}\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 2433
    :goto_3
    invoke-virtual {p0, v5, v2, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2434
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2435
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    return-object v5
.end method

.method public final l()V
    .locals 6

    .line 2197
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x23

    const/16 v2, 0x3b

    if-ne v0, v1, :cond_9

    .line 2201
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 2205
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ltz v0, :cond_3

    int-to-char v4, v0

    .line 2213
    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v5, 0x8000000

    if-lt v3, v5, :cond_2

    goto :goto_2

    :cond_2
    mul-int v3, v3, v1

    add-int/2addr v3, v4

    .line 2220
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v0, v2, :cond_4

    .line 2224
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    .line 2225
    const-string v0, "invalid character reference"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-void

    :cond_4
    if-lez v3, :cond_5

    const v0, 0xd7ff

    if-le v3, v0, :cond_7

    :cond_5
    const v0, 0xe000

    if-lt v3, v0, :cond_6

    const v0, 0xfffd

    if-le v3, v0, :cond_7

    :cond_6
    const/high16 v0, 0x10000

    if-lt v3, v0, :cond_8

    const v0, 0x10ffff

    if-gt v3, v0, :cond_8

    .line 2231
    :cond_7
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    return-void

    .line 2233
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid character value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XQST0090"

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2237
    :cond_9
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    :goto_3
    if-ltz v0, :cond_b

    int-to-char v3, v0

    .line 2241
    invoke-static {v3}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    .line 2243
    :cond_a
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 2244
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    goto :goto_3

    :cond_b
    :goto_4
    if-eq v0, v2, :cond_c

    .line 2248
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    .line 2249
    const-string v0, "invalid entity reference"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-void

    .line 2252
    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2254
    iput v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 2255
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->appendNamedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public final m()Lgnu/expr/Expression;
    .locals 1

    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public mark()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-super {p0}, Lgnu/text/Lexer;->mark()V

    .line 471
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->z:I

    .line 472
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->A:Ljava/lang/String;

    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .locals 4

    .line 3159
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x41

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 3161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3162
    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-eq v1, v0, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 3166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3167
    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public maybeSetLine(Lgnu/expr/Declaration;II)V
    .locals 1

    .line 4442
    invoke-virtual {p0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4445
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setFile(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Declaration;->setLine(II)V

    :cond_0
    return-void
.end method

.method public maybeSetLine(Lgnu/expr/Expression;II)V
    .locals 2

    .line 4431
    invoke-virtual {p0}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4432
    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lgnu/expr/QuoteExp;

    if-nez v1, :cond_0

    .line 4435
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Expression;->setLine(II)V

    :cond_0
    return-void
.end method

.method public final n(IZ)Lgnu/expr/Expression;
    .locals 5

    .line 2752
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, p1, :cond_7

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p2, 0x0

    .line 2761
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 1285
    :cond_1
    const-string v2, "gnu.kawa.functions.AppendValues"

    const-string v3, "appendValues"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x2

    .line 1279
    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object v0, v3, p2

    .line 1280
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-direct {p2, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2764
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, p1, :cond_6

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 2766
    :cond_2
    iget v2, p0, Lgnu/text/Lexer;->nesting:I

    if-nez v2, :cond_3

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_5

    const/16 p2, 0x29

    if-ne p1, p2, :cond_4

    .line 2769
    const-string p1, "expected \')\'"

    goto :goto_2

    :cond_4
    const-string p1, "confused by syntax error"

    :goto_2
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 2771
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    :cond_6
    :goto_3
    return-object p2

    :cond_7
    :goto_4
    if-nez p2, :cond_8

    .line 2755
    const-string p1, "missing expression"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2756
    :cond_8
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p1
.end method

.method public namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;
    .locals 5

    .line 3668
    const-string v0, "class:"

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 p2, 0x0

    .line 3669
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "(functions)"

    goto :goto_0

    :cond_1
    sget-object p2, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 3672
    :goto_0
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->D:Lgnu/xml/NamespaceBinding;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-static {p2, v2, v3}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    if-gez v1, :cond_2

    .line 3678
    const-string v2, ""

    goto :goto_1

    .line 3679
    :cond_2
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3683
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 3693
    invoke-virtual {p0}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    const-string v2, "unknown namespace prefix \'"

    const-string v3, "\'"

    .line 0
    invoke-static {v2, p2, v3}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3693
    const-string v3, "XPST0081"

    const/16 v4, 0x65

    invoke-virtual {v0, v4, v2, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3696
    const-string v2, "(unknown namespace)"

    :cond_4
    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 3699
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3700
    :goto_2
    invoke-static {v2, p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public final o()Lgnu/expr/Expression;
    .locals 10

    .line 1646
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->B()I

    .line 1647
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x190

    .line 1666
    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->D(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->i(I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1664
    :pswitch_0
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1662
    :pswitch_1
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1660
    :pswitch_2
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1658
    :pswitch_3
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_4
    const/16 v0, 0x74

    .line 2779
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v1

    .line 2780
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->r()Lgnu/expr/Expression;

    move-result-object v3

    .line 2781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2784
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2785
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2786
    :goto_0
    const-string v3, "case"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "return"

    const-string v6, "(arg)"

    const/16 v7, 0x65

    const-string v8, "missing Variable after \'$\'"

    const/16 v9, 0x24

    if-eqz v3, :cond_4

    const/16 v3, 0x63

    .line 2788
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->pushNesting(C)C

    .line 2789
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2790
    iget v3, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v3, v9, :cond_2

    .line 2792
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2794
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2796
    const-string v6, "as"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2797
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_1

    .line 2799
    :cond_1
    const-string v6, "missing \'as\'"

    invoke-virtual {p0, v7, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 2802
    :cond_2
    new-instance v3, Lgnu/expr/Declaration;

    invoke-direct {v3, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2803
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 2804
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2805
    new-instance v6, Lgnu/expr/LambdaExp;

    invoke-direct {v6, v2}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2806
    invoke-virtual {v6, v3}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2807
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2808
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_2

    .line 2810
    :cond_3
    const-string v3, "missing \'return\' after \'case\'"

    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 2811
    :goto_2
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3, v6}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    const/16 v3, 0x72

    .line 2812
    invoke-virtual {p0, v3}, Lgnu/text/Lexer;->pushNesting(C)C

    .line 2813
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->m()Lgnu/expr/Expression;

    move-result-object v3

    .line 2814
    iput-object v3, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2815
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2816
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2817
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 2820
    :cond_4
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2822
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0, v2}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2823
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2825
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v2, v9, :cond_6

    .line 2827
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2829
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2830
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_3

    .line 2833
    :cond_6
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v6}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2834
    :goto_3
    invoke-virtual {v0, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2836
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2837
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_4

    .line 2839
    :cond_7
    const-string v2, "missing \'return\' after \'default\'"

    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 2840
    :goto_4
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2841
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->m()Lgnu/expr/Expression;

    move-result-object v2

    .line 2842
    iput-object v2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2843
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2844
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 2848
    :cond_8
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v7, 0x77

    :goto_5
    const-string v0, "no \'default\' clause in \'typeswitch\'"

    const-string v2, "XPST0003"

    invoke-virtual {p0, v7, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2852
    :goto_6
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2853
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 2854
    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2855
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v2, "gnu.kawa.reflect.TypeSwitch"

    const-string v3, "typeSwitch"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    .line 1654
    :pswitch_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIfExpr()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Z)Lgnu/expr/Expression;
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1829
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x51

    const/16 v4, 0x3a

    const-string v5, ""

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 1831
    iget p1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 1832
    :goto_0
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int/lit8 v3, p1, -0x1

    aget-char v7, v2, v3

    if-eq v7, v4, :cond_0

    move p1, v3

    goto :goto_0

    .line 1833
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v6, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1835
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v7, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v7, p1

    invoke-direct {v2, v3, p1, v7}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_2

    :cond_1
    const/16 v3, 0x19f

    const/16 v7, 0x2a

    const/16 v8, 0x41

    const/4 v9, 0x0

    if-ne v2, v3, :cond_7

    .line 1840
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 1843
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-gez p1, :cond_3

    .line 1848
    const-string v0, "unexpected end-of-file after \'*:\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_3
    int-to-char v0, p1

    .line 1849
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1851
    invoke-virtual {p0}, Lgnu/text/Lexer;->unread()V

    .line 1852
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1853
    iget p1, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq p1, v8, :cond_4

    .line 1854
    const-string p1, "invalid name test"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 1856
    :cond_4
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v1, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {p1, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    if-eq p1, v7, :cond_6

    .line 1860
    const-string p1, "missing local-name after \'*:\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1862
    :cond_6
    :goto_1
    new-instance p1, Lgnu/mapping/Symbol;

    invoke-direct {p1, v9, v5}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    return-object p1

    :cond_7
    if-ne v2, v8, :cond_9

    .line 1866
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    if-eqz p1, :cond_8

    .line 1868
    new-instance p1, Lgnu/expr/QuoteExp;

    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-direct {p1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    move-object v4, v9

    goto :goto_2

    :cond_9
    const/16 p1, 0x43

    if-ne v2, p1, :cond_b

    .line 1873
    new-instance v4, Ljava/lang/String;

    iget-object p1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v4, p1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1874
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-eq p1, v7, :cond_a

    .line 1876
    const-string p1, "invalid characters after \'NCName:\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_a
    move-object v2, v5

    goto :goto_2

    :cond_b
    move-object v2, v9

    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_c

    .line 1880
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1882
    :cond_c
    new-instance p1, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v7, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    invoke-direct {v3, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v7

    new-array v8, v1, [Lgnu/expr/Expression;

    aput-object v7, v8, v6

    invoke-direct {p1, v3, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1884
    new-instance v3, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_d

    goto :goto_3

    :cond_d
    move-object v5, v2

    :goto_3
    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 1885
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v4, v0, [Lgnu/expr/Expression;

    aput-object p1, v4, v6

    aput-object v3, v4, v1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    .line 1886
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v2, "make"

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    const/4 v0, 0x4

    .line 1889
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    return-object p1
.end method

.method public parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const/4 v9, 0x1

    .line 3730
    iput-object v7, v1, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    .line 188
    invoke-virtual {v1, v9}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    goto :goto_1

    .line 3734
    :cond_0
    iget v4, v1, Lgnu/xquery/lang/XQParser;->w:I

    add-int/2addr v4, v9

    iput v4, v1, Lgnu/xquery/lang/XQParser;->w:I

    .line 3735
    invoke-virtual {v1, v2}, Lgnu/text/Lexer;->unread(I)V

    .line 3736
    invoke-virtual {v1}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v4

    add-int/2addr v4, v9

    .line 3737
    invoke-virtual {v1}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v5

    add-int/2addr v5, v9

    const/16 v6, 0x23

    const/16 v10, 0xa

    if-ne v2, v6, :cond_3

    if-ne v4, v9, :cond_3

    if-ne v5, v9, :cond_3

    .line 3742
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    .line 3743
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result v2

    const/16 v6, 0x21

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result v2

    const/16 v6, 0x2f

    if-eq v2, v6, :cond_2

    .line 3744
    :cond_1
    const-string v6, "\'#\' is only allowed in initial \'#!/PROGRAM\'"

    invoke-virtual {v1, v6}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/16 v6, 0xd

    if-eq v2, v6, :cond_3

    if-eq v2, v10, :cond_3

    if-ltz v2, :cond_3

    .line 3746
    invoke-virtual {v1}, Lgnu/text/Lexer;->read()I

    move-result v2

    goto :goto_0

    .line 3749
    :cond_3
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    :goto_1
    return-object v3

    .line 3751
    :cond_4
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->B()I

    .line 3753
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v11, 0x77

    const-string v12, "namespace"

    const/16 v13, 0x41

    if-ne v2, v13, :cond_6

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3756
    sget-boolean v2, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v2, :cond_5

    .line 3757
    const-string v2, "use \'declare namespace\' instead of \'namespace\'"

    invoke-virtual {v1, v11, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_5
    const/16 v2, 0x4e

    .line 3758
    iput v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    .line 3766
    :cond_6
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v14, 0x42

    if-eq v2, v14, :cond_6a

    sget-object v14, Lgnu/xquery/lang/XQParser;->K:Lgnu/xml/NamespaceBinding;

    const/16 v15, 0x45

    if-eq v2, v15, :cond_20

    const/16 v15, 0x59

    if-eq v2, v15, :cond_4e

    const/16 v15, 0x6f

    if-eq v2, v15, :cond_4b

    const-string v15, "XQST0088"

    const-string v11, "\'"

    const-string v0, "missing uri in namespace declaration"

    const-string v8, "missing \'=\' in namespace declaration"

    const-string v13, "missing namespace prefix"

    packed-switch v2, :pswitch_data_0

    const-string v3, "strip"

    const-string v10, "preserve"

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 4261
    invoke-virtual {v1, v6, v9}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v0

    .line 4262
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    .line 4263
    invoke-virtual {v1, v3}, Lgnu/text/Lexer;->unread(I)V

    .line 4264
    :cond_7
    invoke-virtual {v1, v0, v4, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 4265
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 4266
    const-string v2, "query body in a library module"

    const-string v3, "XPST0003"

    const/16 v4, 0x65

    invoke-virtual {v1, v4, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 3769
    :pswitch_0
    invoke-virtual {v1}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3770
    invoke-virtual {v1}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    .line 3771
    const-string v3, "unexpected end-of-file after \'define QName\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_9

    .line 3774
    const-string v3, "\'missing \'function\' after \'define\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    const/16 v3, 0x41

    .line 3775
    iput v3, v1, Lgnu/xquery/lang/XQParser;->a:I

    .line 3776
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3779
    :cond_9
    const-string v0, "missing keyword after \'define\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3795
    :pswitch_1
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3796
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3798
    const-string v0, "missing Variable"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3799
    :cond_a
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 3800
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 3802
    invoke-virtual {v1}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    iget-object v6, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    iget v8, v1, Lgnu/xquery/lang/XQParser;->f:I

    iget v10, v1, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {v3, v6, v8, v10}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3803
    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 3805
    :cond_b
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 3807
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3808
    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    const-string v3, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v7}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3810
    :cond_c
    const-string v2, "variable not in namespace of library module"

    const-string v3, "XQST0048"

    const/16 v6, 0x65

    invoke-virtual {v1, v6, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3813
    :cond_d
    invoke-virtual {v7}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3814
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3815
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v2

    .line 3816
    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    const-wide/16 v6, 0x4000

    .line 3818
    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3821
    iget v3, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x192

    if-eq v3, v6, :cond_f

    const/16 v7, 0x4c

    if-ne v3, v7, :cond_e

    goto :goto_2

    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    :cond_f
    :goto_2
    if-ne v3, v6, :cond_10

    .line 3824
    const-string v3, "declare variable contains \'=\' instead of \':=\'"

    invoke-virtual {v1, v3}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 3825
    :cond_10
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    const/4 v3, 0x1

    .line 3828
    :goto_3
    iget v6, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_11

    .line 3830
    const-string v3, "obsolete \'{\' in variable declaration"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object v3

    .line 3832
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    goto :goto_8

    .line 3834
    :cond_11
    const-string v6, "external"

    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3836
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lgnu/xquery/lang/XQParser;->a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v3

    if-nez v2, :cond_12

    sget-object v7, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    :goto_4
    const/4 v8, 0x2

    goto :goto_5

    :cond_12
    move-object v7, v2

    goto :goto_4

    :goto_5
    new-array v8, v8, [Lgnu/expr/Expression;

    aput-object v3, v8, v6

    aput-object v7, v8, v9

    .line 3841
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v6, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    invoke-direct {v3, v6, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3842
    iget v6, v1, Lgnu/xquery/lang/XQParser;->f:I

    iget v7, v1, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {v1, v3, v6, v7}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3843
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_8

    .line 1638
    :cond_13
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v6

    if-eqz v3, :cond_15

    if-nez v6, :cond_14

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    goto :goto_7

    .line 3850
    :cond_15
    :goto_6
    const-string v3, "expected \':= init\' or \'external\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    :goto_7
    if-nez v6, :cond_16

    goto :goto_8

    :cond_16
    move-object v3, v6

    :goto_8
    if-eqz v2, :cond_17

    .line 3855
    invoke-static {v3, v2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    .line 3856
    :cond_17
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3857
    invoke-static {v0, v3}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v0

    .line 3858
    invoke-virtual {v1, v0, v4, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3859
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->d:Z

    return-object v0

    .line 4192
    :pswitch_2
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->p:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_18

    .line 4193
    const-string v0, "duplicate \'declare ordering\' seen"

    const-string v2, "XQST0065"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4194
    :cond_18
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->p:Z

    .line 4195
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4196
    const-string v0, "ordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_9

    .line 4198
    :cond_19
    const-string v0, "unordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4202
    :goto_9
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4203
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4201
    :cond_1a
    const-string v0, "ordering declaration must be ordered or unordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4091
    :pswitch_3
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4092
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x192

    if-ne v0, v6, :cond_1b

    .line 4094
    const-string v0, "obsolate \'=\' in boundary-space declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 4095
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4097
    :cond_1b
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->o:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_1c

    .line 4098
    const-string v0, "duplicate \'declare boundary-space\' seen"

    const-string v2, "XQST0068"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4099
    :cond_1c
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->o:Z

    .line 4100
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4101
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->n:Z

    goto :goto_a

    .line 4102
    :cond_1d
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v3, 0x0

    .line 4103
    iput-boolean v3, v1, Lgnu/xquery/lang/XQParser;->n:Z

    goto :goto_a

    :cond_1e
    const/4 v3, 0x0

    .line 4104
    const-string v0, "skip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4106
    const-string v0, "update: declare boundary-space skip -> strip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 4107
    iput-boolean v3, v1, Lgnu/xquery/lang/XQParser;->n:Z

    .line 4111
    :goto_a
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4112
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4110
    :cond_1f
    const-string v0, "boundary-space declaration must be preserve or strip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3782
    :pswitch_4
    invoke-virtual {v1}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3783
    invoke-virtual {v1}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    .line 3784
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3785
    const-string v3, "unexpected end-of-file after \'define function\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    const/16 v3, 0x64

    .line 3786
    invoke-virtual {v1, v3}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v3

    .line 3787
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    .line 3788
    invoke-virtual {v1, v3}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3789
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 3790
    invoke-virtual {v1, v0, v4, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3791
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->d:Z

    return-object v0

    :cond_20
    :pswitch_5
    const/16 v10, 0x65

    goto/16 :goto_24

    :pswitch_6
    const/16 v3, 0x4d

    if-ne v2, v3, :cond_21

    .line 3865
    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    if-eqz v6, :cond_21

    .line 3867
    const-string v6, "duplicate module declaration"

    const/16 v10, 0x65

    invoke-virtual {v1, v10, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_b

    :cond_21
    const/16 v10, 0x65

    .line 3868
    iget-boolean v6, v1, Lgnu/xquery/lang/XQParser;->d:Z

    if-eqz v6, :cond_22

    iget-boolean v6, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v6, :cond_22

    .line 3869
    const-string v6, "namespace declared after function/variable/option"

    invoke-virtual {v1, v10, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3870
    :cond_22
    :goto_b
    iget v6, v1, Lgnu/text/Lexer;->nesting:I

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    goto :goto_c

    :cond_23
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v6

    if-ltz v6, :cond_2b

    .line 3873
    invoke-virtual {v1}, Lgnu/text/Lexer;->unread()V

    int-to-char v6, v6

    .line 3874
    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 3876
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3877
    iget v4, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v5, 0x41

    if-eq v4, v5, :cond_24

    .line 3878
    invoke-virtual {v1, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3879
    :cond_24
    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v6, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v9, 0x0

    invoke-direct {v4, v5, v9, v6}, Ljava/lang/String;-><init>([CII)V

    .line 3880
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3881
    iget v5, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x192

    if-eq v5, v6, :cond_25

    .line 3882
    invoke-virtual {v1, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3883
    :cond_25
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3884
    iget v5, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x22

    if-eq v5, v6, :cond_26

    .line 3885
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3886
    :cond_26
    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v6, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v9, 0x0

    invoke-direct {v0, v5, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3887
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 3888
    iget-object v5, v1, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    :goto_d
    if-eq v5, v14, :cond_28

    .line 3892
    invoke-virtual {v5}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v4, :cond_27

    .line 3894
    const-string v5, "duplicate declarations for the same namespace prefix \'"

    .line 0
    invoke-static {v5, v4, v11}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3894
    const-string v6, "XQST0033"

    const/16 v10, 0x65

    invoke-virtual {v1, v10, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 3890
    :cond_27
    invoke-virtual {v5}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v5

    goto :goto_d

    .line 3901
    :cond_28
    :goto_e
    invoke-virtual {v1, v4, v0}, Lgnu/xquery/lang/XQParser;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 3902
    invoke-virtual {v1, v4, v0, v9}, Lgnu/xquery/lang/XQParser;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    if-ne v2, v3, :cond_2a

    .line 3906
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 3907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3909
    invoke-virtual {v2, v3}, Lgnu/mapping/PropertySet;->setName(Ljava/lang/String;)V

    .line 3910
    new-instance v4, Lgnu/bytecode/ClassType;

    invoke-direct {v4, v3}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v4, v7, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 3911
    invoke-virtual {v2, v4}, Lgnu/expr/LambdaExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3912
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 3913
    invoke-virtual {v3, v7}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v3

    .line 3914
    invoke-virtual {v3, v0}, Lgnu/expr/ModuleInfo;->setNamespaceUri(Ljava/lang/String;)V

    .line 3915
    iget-object v3, v7, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/LambdaExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3916
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 3917
    const-string v0, "zero-length module namespace"

    invoke-virtual {v1, v0, v15}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3918
    :cond_29
    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    .line 3920
    :cond_2a
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 3925
    :cond_2b
    :pswitch_7
    const-string v2, "\'import schema\' not implemented"

    const-string v3, "XQST0009"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4129
    :pswitch_8
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4130
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->q:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_2c

    .line 4131
    const-string v0, "duplicate \'declare copy-namespaces\' seen"

    const-string v2, "XQST0055"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4132
    :cond_2c
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->q:Z

    .line 4133
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4134
    iget v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    or-int/2addr v0, v9

    iput v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    goto :goto_f

    .line 4135
    :cond_2d
    const-string v0, "no-preserve"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4136
    iget v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    .line 4139
    :goto_f
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4140
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_2e

    .line 4141
    const-string v0, "missing \',\' in copy-namespaces declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4142
    :cond_2e
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4143
    const-string v0, "inherit"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4144
    iget v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    const/16 v16, 0x2

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    goto :goto_10

    .line 4145
    :cond_2f
    const-string v0, "no-inherit"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4146
    iget v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v1, Lgnu/xquery/lang/XQParser;->r:I

    .line 4149
    :goto_10
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4150
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4148
    :cond_30
    const-string v0, "expected \'inherit\' or \'no-inherit\' in copy-namespaces declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4138
    :cond_31
    const-string v0, "expected \'preserve\' or \'no-preserve\' after \'declare copy-namespaces\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4115
    :pswitch_9
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4116
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->s:Z

    if-eqz v0, :cond_32

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_32

    .line 4117
    const-string v0, "duplicate \'declare construction\' seen"

    const-string v2, "XQST0067"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4118
    :cond_32
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->s:Z

    .line 4119
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_11

    .line 4121
    :cond_33
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4125
    :goto_11
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4126
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4124
    :cond_34
    const-string v0, "construction declaration must be strip or preserve"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3928
    :goto_12
    :pswitch_a
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3930
    invoke-virtual {v1, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3932
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3933
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x41

    if-eq v2, v3, :cond_35

    .line 3934
    invoke-virtual {v1, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3935
    :cond_35
    new-instance v3, Ljava/lang/String;

    iget-object v2, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v6, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v3, v2, v10, v6}, Ljava/lang/String;-><init>([CII)V

    .line 3936
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3937
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x192

    if-eq v2, v6, :cond_36

    .line 3938
    invoke-virtual {v1, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3939
    :cond_36
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_13

    :cond_37
    const/4 v3, 0x0

    .line 3941
    :goto_13
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x22

    if-eq v2, v6, :cond_38

    .line 3942
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3943
    :cond_38
    iget v0, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-nez v0, :cond_39

    .line 3944
    const-string v0, "zero-length target namespace"

    invoke-virtual {v1, v0, v15}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3945
    :cond_39
    new-instance v2, Ljava/lang/String;

    iget-object v6, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_3a

    .line 3948
    invoke-virtual {v1, v3, v8, v10}, Lgnu/xquery/lang/XQParser;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lgnu/xquery/lang/XQParser;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_3a
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3953
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    .line 3956
    invoke-virtual {v7}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    .line 3957
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 3958
    invoke-static {v8}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3959
    iget-object v3, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v4, v5}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 3960
    const-string v3, "at"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 3964
    :goto_14
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3965
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x22

    if-eq v0, v3, :cond_3b

    .line 3966
    const-string v0, "missing module location"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3967
    :cond_3b
    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v0, v3, v10, v4}, Ljava/lang/String;-><init>([CII)V

    .line 3968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v2, v3

    .line 3971
    invoke-static {v0, v6}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 3973
    const-string v4, "malformed URL: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x65

    invoke-virtual {v7, v10, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_15

    :cond_3c
    const/16 v10, 0x65

    :goto_15
    const/4 v4, 0x0

    .line 3974
    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 3976
    iget v0, v1, Lgnu/text/Lexer;->nesting:I

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_16

    :cond_3d
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_3e

    .line 3979
    invoke-virtual {v1, v0}, Lgnu/text/Lexer;->unread(I)V

    .line 3983
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    goto :goto_19

    :cond_3e
    move-object v2, v5

    goto :goto_14

    :cond_3f
    move-object v5, v2

    const/16 v10, 0x65

    .line 3987
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v11

    .line 3991
    :try_start_0
    invoke-virtual {v11, v0}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    .line 4000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error loading map for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_17

    :catch_0
    nop

    :goto_17
    const/4 v0, 0x0

    const/16 v17, 0x0

    .line 4004
    :goto_18
    invoke-virtual {v11, v0}, Lgnu/expr/ModuleManager;->getModule(I)Lgnu/expr/ModuleInfo;

    move-result-object v3

    if-nez v3, :cond_43

    if-nez v17, :cond_40

    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no module found for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4015
    :cond_40
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_41

    .line 4016
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4018
    :cond_41
    :goto_19
    iget-object v0, v7, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_42

    .line 4020
    const-string v0, "module import forms a cycle"

    const-string v2, "XQST0073"

    invoke-virtual {v1, v10, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_42
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 4023
    invoke-virtual {v5, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4024
    invoke-static {v0}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4007
    :cond_43
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_1a

    :cond_44
    add-int/lit8 v17, v17, 0x1

    .line 4010
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    :goto_1a
    add-int/2addr v0, v9

    move-object/from16 v7, p1

    goto :goto_18

    .line 4153
    :pswitch_b
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4154
    const-string v0, "empty"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    .line 4155
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->k:Z

    if-eqz v2, :cond_45

    iget-boolean v2, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v2, :cond_45

    .line 4156
    const-string v2, "duplicate \'declare default empty order\' seen"

    const-string v3, "XQST0069"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4157
    :cond_45
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->k:Z

    .line 4158
    const-string v2, "expected \'empty greatest\' or \'empty least\'"

    if-eqz v0, :cond_46

    .line 4159
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_1b

    .line 4161
    :cond_46
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4162
    :goto_1b
    const-string v0, "greatest"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x47

    .line 4163
    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->j:C

    goto :goto_1c

    .line 4164
    :cond_47
    const-string v0, "least"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v7, 0x4c

    .line 4165
    iput-char v7, v1, Lgnu/xquery/lang/XQParser;->j:C

    .line 4168
    :goto_1c
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4169
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4167
    :cond_48
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :pswitch_c
    const/16 v10, 0x65

    .line 4027
    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    const-string v2, "XQST0038"

    if-eqz v0, :cond_49

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_49

    .line 4028
    const-string v0, "duplicate default collation declaration"

    invoke-virtual {v1, v10, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_49
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->x()Ljava/lang/Object;

    move-result-object v0

    .line 4030
    instance-of v3, v0, Lgnu/expr/Expression;

    if-eqz v3, :cond_4a

    .line 4031
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4032
    :cond_4a
    check-cast v0, Ljava/lang/String;

    .line 4035
    :try_start_1
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4036
    invoke-static {v0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v3

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1d

    .line 4040
    :catch_1
    sget-object v3, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    .line 4041
    const-string v3, "unknown collation \'"

    .line 0
    invoke-static {v3, v0, v11}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4041
    invoke-virtual {v1, v10, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4043
    :goto_1d
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4044
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4172
    :cond_4b
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4173
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x51

    if-eq v0, v2, :cond_4c

    .line 4174
    const-string v0, "expected QName after \'declare option\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1e

    .line 4177
    :cond_4c
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v0, v2, v10, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4178
    invoke-virtual {v1}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    iget-object v3, v1, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lgnu/xquery/lang/XQParser;->f:I

    iget v5, v1, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 4179
    invoke-virtual {v1, v0, v10}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 4180
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4181
    iget v3, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x22

    if-eq v3, v6, :cond_4d

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected string literal after \'declare option "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1e

    .line 4185
    :cond_4d
    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v0, v3, v10, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2, v0}, Lgnu/xquery/lang/XQParser;->handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V

    .line 4187
    :goto_1e
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4188
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->d:Z

    .line 4189
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_4e
    const/16 v10, 0x65

    .line 4206
    iget v0, v1, Lgnu/xquery/lang/XQParser;->w:I

    if-eq v0, v9, :cond_4f

    .line 4207
    const-string v0, "\'xquery version\' does not start module"

    invoke-virtual {v1, v10, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_1f

    .line 4208
    :cond_4f
    iget v0, v1, Lgnu/xquery/lang/XQParser;->x:I

    if-lez v0, :cond_50

    .line 4209
    const-string v0, "comments should not precede \'xquery version\'"

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4210
    :cond_50
    :goto_1f
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4211
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x22

    if-ne v0, v3, :cond_5e

    .line 4213
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4214
    const-string v2, "1.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 4215
    const-string v2, "unrecognized xquery version "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "XQST0031"

    invoke-virtual {v1, v10, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_51
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4220
    const-string v0, "encoding"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 4222
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4223
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x22

    if-eq v0, v3, :cond_52

    .line 4224
    const-string v0, "invalid encoding specification"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4227
    :cond_52
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4228
    iget v0, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    if-nez v0, :cond_53

    goto :goto_23

    :cond_53
    const/4 v8, 0x0

    :cond_54
    :goto_20
    add-int/2addr v0, v6

    if-ltz v0, :cond_5a

    if-nez v8, :cond_5a

    .line 4232
    iget-object v2, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_56

    const/16 v4, 0x5a

    if-le v2, v4, :cond_55

    goto :goto_22

    :cond_55
    :goto_21
    const/16 v4, 0x2e

    goto :goto_20

    :cond_56
    :goto_22
    const/16 v4, 0x61

    if-lt v2, v4, :cond_57

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_57

    goto :goto_21

    :cond_57
    if-eqz v0, :cond_59

    const/16 v4, 0x30

    if-lt v2, v4, :cond_58

    const/16 v4, 0x39

    if-le v2, v4, :cond_55

    :cond_58
    const/16 v4, 0x2e

    if-eq v2, v4, :cond_54

    const/16 v5, 0x5f

    if-eq v2, v5, :cond_54

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_54

    goto :goto_23

    :cond_59
    const/16 v4, 0x2e

    :goto_23
    const/4 v8, 0x1

    goto :goto_20

    :cond_5a
    if-eqz v8, :cond_5b

    .line 4241
    const-string v0, "invalid encoding name syntax"

    const-string v2, "XQST0087"

    invoke-virtual {v1, v10, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4243
    :cond_5b
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4246
    :cond_5c
    iget v0, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_5d

    .line 4247
    const-string v0, "missing \';\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4248
    :cond_5d
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4219
    :cond_5e
    const-string v0, "missing version string after \'xquery version\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :goto_24
    const/16 v0, 0x4f

    if-ne v2, v0, :cond_5f

    const/4 v3, 0x1

    goto :goto_25

    :cond_5f
    const/4 v3, 0x0

    :goto_25
    if-eqz v3, :cond_60

    .line 4049
    const-string v0, "(functions)"

    goto :goto_26

    :cond_60
    sget-object v0, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 4051
    :goto_26
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->E:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v2, v0, v14}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 4052
    const-string v2, "duplicate default namespace declaration"

    const-string v4, "XQST0066"

    invoke-virtual {v1, v10, v2, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 4055
    :cond_61
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->d:Z

    if-eqz v2, :cond_62

    iget-boolean v2, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v2, :cond_62

    .line 4056
    const-string v2, "default namespace declared after function/variable/option"

    invoke-virtual {v1, v10, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4057
    :cond_62
    :goto_27
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4058
    invoke-virtual {v1, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4059
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v6, 0x192

    goto :goto_28

    .line 4063
    :cond_63
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const-string v4, "expected \'namespace\' keyword"

    const/16 v6, 0x22

    if-eq v2, v6, :cond_64

    const/16 v6, 0x192

    if-eq v2, v6, :cond_65

    .line 4064
    invoke-virtual {v1, v4}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_64
    const/16 v6, 0x192

    .line 4066
    :cond_65
    invoke-virtual {v1, v4}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 4068
    :goto_28
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v2, v6, :cond_66

    const/16 v7, 0x4c

    if-ne v2, v7, :cond_67

    .line 4070
    :cond_66
    const-string v2, "extra \'=\' in default namespace declaration"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->d()I

    .line 4073
    :cond_67
    iget v2, v1, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x22

    if-eq v2, v6, :cond_68

    .line 4074
    const-string v0, "missing namespace uri"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4075
    :cond_68
    new-instance v2, Ljava/lang/String;

    iget-object v4, v1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v5, v1, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v2, v4, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_69

    .line 4078
    new-array v3, v9, [Lgnu/mapping/Namespace;

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 4079
    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    aput-object v4, v3, v10

    .line 4085
    :cond_69
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    invoke-virtual {v1, v0, v2, v10}, Lgnu/xquery/lang/XQParser;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4087
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4088
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4251
    :cond_6a
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->m:Z

    if-eqz v0, :cond_6b

    iget-boolean v0, v1, Lgnu/text/Lexer;->interactive:Z

    if-nez v0, :cond_6b

    .line 4252
    const-string v0, "duplicate \'declare base-uri\' seen"

    const-string v2, "XQST0032"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4253
    :cond_6b
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->m:Z

    .line 4254
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->x()Ljava/lang/Object;

    move-result-object v0

    .line 4255
    instance-of v2, v0, Lgnu/expr/Expression;

    if-eqz v2, :cond_6c

    .line 4256
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4257
    :cond_6c
    invoke-virtual {v1}, Lgnu/xquery/lang/XQParser;->t()V

    .line 4258
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->setStaticBaseUri(Ljava/lang/String;)V

    .line 4259
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x53
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseDataType()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseItemType()Lgnu/expr/Expression;

    move-result-object v0

    const/16 v1, 0x19f

    const/16 v2, 0x19d

    const/16 v3, 0x3f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    .line 1476
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0xee

    if-eq v0, v6, :cond_0

    .line 1477
    const-string v0, "bad syntax - expected DataType"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1478
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1479
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1484
    :cond_1
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_2

    .line 1481
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1482
    const-string v0, "occurrence-indicator meaningless after empty-sequence()"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1488
    :cond_3
    iget v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v6, v3, :cond_4

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    if-ne v6, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    if-ne v6, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 1508
    :goto_2
    iget v2, p0, Lgnu/xquery/lang/XQParser;->c:I

    const/16 v6, 0x43

    if-ne v2, v6, :cond_7

    if-eq v3, v5, :cond_7

    .line 1511
    const-string v0, "type to \'cast as\' or \'castable as\' must be a \'SingleType\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_7
    if-eq v1, v3, :cond_8

    .line 1515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1516
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 1519
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/xquery/lang/XQParser;->I:Lgnu/expr/PrimProcedure;

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v1, 0x4

    .line 1522
    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setFlag(I)V

    :cond_8
    return-object v0
.end method

.method public parseFLWRExpression(Z)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3208
    iget v0, p0, Lgnu/xquery/lang/XQParser;->u:I

    .line 3209
    iget v1, p0, Lgnu/xquery/lang/XQParser;->v:I

    iput v1, p0, Lgnu/xquery/lang/XQParser;->u:I

    .line 3210
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 3212
    const-string v2, "order"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0x6c

    .line 3214
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result p1

    .line 3215
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3216
    const-string v0, "by"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3217
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_1

    .line 3219
    :cond_1
    const-string v0, "missing \'by\' following \'order\'"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 3220
    :goto_1
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 3224
    :goto_2
    iget-char v0, p0, Lgnu/xquery/lang/XQParser;->j:C

    .line 3226
    new-instance v3, Lgnu/expr/LambdaExp;

    iget v4, p0, Lgnu/xquery/lang/XQParser;->v:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->u:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3227
    iget v4, p0, Lgnu/xquery/lang/XQParser;->u:I

    :goto_3
    iget v5, p0, Lgnu/xquery/lang/XQParser;->v:I

    if-ge v4, v5, :cond_2

    .line 3228
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3229
    :cond_2
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3230
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3231
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3232
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    const-string v3, "ascending"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 3235
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_4

    .line 3236
    :cond_3
    const-string v3, "descending"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3238
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, 0x0

    .line 3241
    :goto_5
    const-string v6, "empty"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3243
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3244
    const-string v6, "greatest"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3246
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v0, 0x47

    goto :goto_6

    .line 3249
    :cond_5
    const-string v6, "least"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3251
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v0, 0x4c

    goto :goto_6

    .line 3255
    :cond_6
    const-string v6, "\'empty\' sequence order must be \'greatest\' or \'least\'"

    invoke-virtual {p0, v6}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 3258
    :cond_7
    :goto_6
    new-instance v6, Lgnu/expr/QuoteExp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_8

    const-string v3, "D"

    goto :goto_7

    :cond_8
    const-string v3, "A"

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->i:Lgnu/xquery/util/NamedCollator;

    .line 3260
    const-string v3, "collation"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3262
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->x()Ljava/lang/Object;

    move-result-object v3

    .line 3263
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 3267
    :try_start_0
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3268
    invoke-static {v6}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 3272
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown collation \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "XQST0076"

    const/16 v7, 0x65

    invoke-virtual {p0, v7, v3, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3275
    :cond_9
    :goto_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3277
    :cond_a
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_e

    .line 3282
    const-string v0, "return"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3283
    const-string p1, "expected \'return\' clause"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3284
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3286
    new-instance v0, Lgnu/expr/LambdaExp;

    iget v3, p0, Lgnu/xquery/lang/XQParser;->v:I

    iget v6, p0, Lgnu/xquery/lang/XQParser;->u:I

    sub-int/2addr v3, v6

    invoke-direct {v0, v3}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3288
    iget v3, p0, Lgnu/xquery/lang/XQParser;->u:I

    :goto_9
    iget v6, p0, Lgnu/xquery/lang/XQParser;->v:I

    if-ge v3, v6, :cond_c

    .line 3289
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3290
    :cond_c
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3291
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3292
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3293
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3294
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 v3, p1, 0x2

    .line 3295
    new-array v3, v3, [Lgnu/expr/Expression;

    .line 3296
    aput-object v1, v3, v5

    .line 3297
    aput-object v0, v3, v4

    :goto_a
    if-ge v5, p1, :cond_d

    add-int/lit8 v0, v5, 0x2

    .line 3299
    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    aput-object v1, v3, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 3300
    :cond_d
    new-instance p1, Lgnu/expr/ApplyExp;

    const-string v0, "gnu.xquery.util.OrderedMap"

    const-string v1, "orderedMap"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1

    .line 3280
    :cond_e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto/16 :goto_2

    .line 3305
    :cond_f
    iget p1, p0, Lgnu/xquery/lang/XQParser;->u:I

    iput p1, p0, Lgnu/xquery/lang/XQParser;->v:I

    .line 3306
    iput v0, p0, Lgnu/xquery/lang/XQParser;->u:I

    return-object v1
.end method

.method public parseFLWRInner(Z)Lgnu/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/16 v4, 0x66

    goto :goto_0

    :cond_0
    const/16 v4, 0x6c

    .line 3321
    :goto_0
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v4

    const/16 v5, 0x24

    .line 3322
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 3323
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v6

    if-nez v6, :cond_9

    .line 3325
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "missing Variable - saw "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4311
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    const/16 v4, 0x22

    if-eq v2, v4, :cond_5

    const/16 v3, 0x41

    if-eq v2, v3, :cond_4

    const/16 v3, 0x46

    if-eq v2, v3, :cond_3

    const/16 v3, 0x51

    if-eq v2, v3, :cond_4

    if-lt v2, v0, :cond_1

    add-int/lit8 v1, v2, -0x64

    const/16 v3, 0xd

    if-ge v1, v3, :cond_1

    .line 4335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    iget v3, p0, Lgnu/xquery/lang/XQParser;->a:I

    sub-int/2addr v3, v0

    aget-object v0, v2, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::-axis("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x20

    if-lt v2, v0, :cond_2

    const/16 v0, 0x7f

    if-ge v2, v0, :cond_2

    .line 4337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4338
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4326
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, " + \'(\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4329
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 4314
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4316
    :goto_1
    iget v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-ge v1, v2, :cond_7

    .line 4318
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v2, v2, v1

    if-ne v2, v4, :cond_6

    .line 4320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4321
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v1, v3

    goto :goto_1

    .line 4323
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 4331
    :cond_8
    const-string v0, "<EOF>"

    .line 3325
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3326
    :cond_9
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    if-nez v0, :cond_a

    const/16 v0, 0x8

    .line 3327
    new-array v0, v0, [Lgnu/expr/Declaration;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    goto :goto_3

    .line 3328
    :cond_a
    iget v7, p0, Lgnu/xquery/lang/XQParser;->v:I

    array-length v8, v0

    if-lt v7, v8, :cond_b

    mul-int/lit8 v8, v7, 0x2

    .line 3330
    new-array v8, v8, [Lgnu/expr/Declaration;

    .line 3331
    invoke-static {v0, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    iput-object v8, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    .line 3334
    :cond_b
    :goto_3
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    iget v7, p0, Lgnu/xquery/lang/XQParser;->v:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lgnu/xquery/lang/XQParser;->v:I

    aput-object v6, v0, v7

    .line 3335
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3337
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v0

    .line 3339
    new-array v7, v3, [Lgnu/expr/Expression;

    const/16 v8, 0x4c

    .line 3341
    const-string v9, "in"

    const/4 v10, 0x0

    if-eqz p1, :cond_12

    .line 3343
    const-string v11, "at"

    invoke-virtual {p0, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    .line 3344
    new-instance v12, Lgnu/expr/LambdaExp;

    if-eqz v11, :cond_c

    const/4 v13, 0x2

    goto :goto_4

    :cond_c
    const/4 v13, 0x1

    :goto_4
    invoke-direct {v12, v13}, Lgnu/expr/LambdaExp;-><init>(I)V

    if-eqz v11, :cond_e

    .line 3347
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3348
    iget v11, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v11, v5, :cond_d

    .line 3350
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    .line 3351
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_5

    :cond_d
    move-object v11, v10

    :goto_5
    if-nez v11, :cond_f

    .line 3354
    const-string v13, "missing Variable after \'at\'"

    invoke-virtual {p0, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_6

    :cond_e
    move-object v11, v10

    .line 3357
    :cond_f
    :goto_6
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3358
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_8

    .line 3361
    :cond_10
    iget v9, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v9, v8, :cond_11

    .line 3362
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3363
    :cond_11
    const-string v8, "missing \'in\' in \'for\' clause"

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_8

    .line 3368
    :cond_12
    iget v11, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v11, v8, :cond_13

    .line 3369
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_7

    .line 3372
    :cond_13
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3373
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3374
    :cond_14
    const-string v8, "missing \':=\' in \'let\' clause"

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3376
    :goto_7
    new-instance v12, Lgnu/expr/LetExp;

    invoke-direct {v12, v7}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v11, v10

    .line 3379
    :goto_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v8

    aput-object v8, v7, v1

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    .line 3381
    invoke-static {v8, v0}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v8

    aput-object v8, v7, v1

    .line 3382
    :cond_15
    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3383
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v4, v12}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3384
    invoke-virtual {v12, v6}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    if-eqz v0, :cond_16

    .line 3386
    invoke-virtual {v6, v0}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    :cond_16
    const-wide/32 v8, 0x40000

    if-eqz p1, :cond_17

    .line 3389
    invoke-virtual {v6, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3390
    invoke-virtual {v6, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_17
    if-eqz v11, :cond_18

    .line 3394
    invoke-virtual {v12, v11}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3395
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 3396
    invoke-virtual {v11, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3397
    invoke-virtual {v11, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3400
    :cond_18
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_1a

    .line 3402
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3403
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, v5, :cond_19

    .line 3404
    const-string p1, "missing $NAME after \',\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3405
    :cond_19
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_c

    .line 3407
    :cond_1a
    const-string v0, "for"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3409
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3410
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, v5, :cond_1b

    .line 3411
    const-string p1, "missing $NAME after \'for\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3412
    :cond_1b
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_c

    .line 3414
    :cond_1c
    const-string v4, "let"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3416
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3417
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v0, v5, :cond_1d

    .line 3418
    const-string p1, "missing $NAME after \'let\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3419
    :cond_1d
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_c

    :cond_1e
    const/16 v5, 0x77

    .line 3424
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v5

    .line 3425
    iget v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v8, 0xc4

    if-ne v6, v8, :cond_1f

    .line 3427
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3428
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v10

    goto :goto_9

    .line 3430
    :cond_1f
    const-string v6, "where"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 3432
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v10

    .line 3436
    :cond_20
    :goto_9
    invoke-virtual {p0, v5}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3437
    const-string v5, "stable"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3439
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3440
    :cond_21
    const-string v5, "return"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    .line 3441
    const-string v6, "order"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v5, :cond_22

    if-nez v6, :cond_22

    .line 3442
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 3443
    const-string p1, "missing \'return\' clause"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_22
    if-nez v6, :cond_23

    .line 3445
    const-string v0, "unexpected eof-of-file after \'return\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    .line 3446
    :cond_23
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v3

    .line 3447
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v3

    if-eqz v5, :cond_24

    .line 3449
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    :cond_24
    if-eqz v6, :cond_26

    .line 3452
    iget v5, p0, Lgnu/xquery/lang/XQParser;->v:I

    iget v6, p0, Lgnu/xquery/lang/XQParser;->u:I

    sub-int/2addr v5, v6

    .line 3453
    new-array v6, v5, [Lgnu/expr/Expression;

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v5, :cond_25

    .line 3455
    new-instance v9, Lgnu/expr/ReferenceExp;

    iget-object v11, p0, Lgnu/xquery/lang/XQParser;->t:[Lgnu/expr/Declaration;

    iget v13, p0, Lgnu/xquery/lang/XQParser;->u:I

    add-int/2addr v13, v8

    aget-object v11, v11, v13

    invoke-direct {v9, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v9, v6, v8

    add-int/2addr v8, v3

    goto :goto_a

    .line 3456
    :cond_25
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v8, Lgnu/expr/PrimProcedure;

    const-string v9, "gnu.xquery.util.OrderedMap"

    const-string v11, "makeTuple$V"

    invoke-direct {v8, v9, v11, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v8, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_b

    .line 3461
    :cond_26
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v5

    :goto_b
    if-eqz v10, :cond_27

    .line 3463
    new-instance v6, Lgnu/expr/IfExp;

    invoke-static {v10}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    sget-object v9, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v6, v8, v5, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v5, v6

    .line 3464
    :cond_27
    invoke-virtual {p0, v5, v0, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    move-object v0, v5

    .line 3466
    :goto_c
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v4, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    if-eqz p1, :cond_29

    .line 3469
    move-object p1, v12

    check-cast p1, Lgnu/expr/LambdaExp;

    .line 3470
    iput-object v0, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3471
    aget-object v0, v7, v1

    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object v12, v2, v1

    aput-object v0, v2, v3

    .line 3472
    new-instance v0, Lgnu/expr/ApplyExp;

    iget p1, p1, Lgnu/expr/LambdaExp;->min_args:I

    if-ne p1, v3, :cond_28

    const-string p1, "valuesMap"

    goto :goto_d

    :cond_28
    const-string p1, "valuesMapWithPos"

    :goto_d
    const-string v1, "gnu.kawa.functions.ValuesMap"

    invoke-static {v1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0

    .line 3478
    :cond_29
    move-object p1, v12

    check-cast p1, Lgnu/expr/LetExp;

    invoke-virtual {p1, v0}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    return-object v12
.end method

.method public parseFunctionDefinition(II)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3544
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    .line 3545
    const-string p1, "missing function name"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3546
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3547
    invoke-virtual {p0}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->f:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {v1, v2, v3, v4}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    const/4 v1, 0x1

    .line 3548
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 3549
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 3550
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const/16 v5, 0x65

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2001/XMLSchema-instance"

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2005/xpath-functions"

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 3559
    :cond_1
    const-string v4, ""

    if-ne v3, v4, :cond_3

    .line 3561
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x77

    :goto_0
    const-string v3, "cannot declare function in empty namespace"

    const-string v4, "XQST0060"

    invoke-virtual {p0, v5, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3565
    :cond_3
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->e:Ljava/lang/String;

    if-eqz v4, :cond_6

    if-eq v3, v4, :cond_6

    const-string v4, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3568
    :cond_4
    const-string v3, "function not in namespace of library module"

    const-string v4, "XQST0048"

    invoke-virtual {p0, v5, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3555
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cannot declare function in standard namespace \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XQST0045"

    invoke-virtual {p0, v5, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3571
    iget v3, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v4, 0x28

    if-eq v3, v4, :cond_7

    .line 3572
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "missing parameter list:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lgnu/xquery/lang/XQParser;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3573
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3574
    new-instance v3, Lgnu/expr/LambdaExp;

    invoke-direct {v3}, Lgnu/expr/LambdaExp;-><init>()V

    .line 3575
    invoke-virtual {p0, v3, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3576
    invoke-virtual {v3, v0}, Lgnu/mapping/PropertySet;->setName(Ljava/lang/String;)V

    .line 3577
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 3578
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v4, 0x800

    .line 3579
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_8
    const/16 v2, 0x800

    .line 3580
    invoke-virtual {v3, v2}, Lgnu/expr/Expression;->setFlag(I)V

    .line 3581
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3582
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 3583
    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3584
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {p1, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3585
    iget p1, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 p2, 0x29

    if-eq p1, p2, :cond_10

    .line 3590
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object p1

    if-nez p1, :cond_9

    .line 3592
    const-string p1, "missing parameter name"

    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 3595
    :cond_9
    invoke-virtual {v3, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3596
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3597
    iget v2, v3, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v2, v1

    iput v2, v3, Lgnu/expr/LambdaExp;->min_args:I

    .line 3598
    iget v2, v3, Lgnu/expr/LambdaExp;->max_args:I

    add-int/2addr v2, v1

    iput v2, v3, Lgnu/expr/LambdaExp;->max_args:I

    .line 3599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3601
    :goto_4
    iget p1, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne p1, p2, :cond_a

    goto :goto_6

    :cond_a
    const/16 v2, 0x2c

    if-eq p1, v2, :cond_f

    .line 3605
    const-string p1, "missing \',\' in parameter list"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    .line 3608
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3609
    iget v4, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ltz v4, :cond_e

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_e

    if-ne v4, v5, :cond_c

    goto :goto_5

    :cond_c
    if-ne v4, p2, :cond_d

    goto :goto_6

    :cond_d
    if-ne v4, v2, :cond_b

    goto :goto_3

    :cond_e
    :goto_5
    return-object p1

    .line 3618
    :cond_f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_3

    .line 3621
    :cond_10
    :goto_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3622
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object p1

    .line 3623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3624
    iget-object p2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    if-eqz p1, :cond_11

    .line 3626
    iget-object p2, p0, Lgnu/xquery/lang/XQParser;->h:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v3, p1, p2}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 3627
    :cond_11
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v0, v3}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 3628
    invoke-virtual {p1, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 3629
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-object p1
.end method

.method public parseIfExpr()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x69

    .line 3135
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v0

    .line 3136
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v1, 0x28

    .line 3137
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v1

    const/16 v2, 0x29

    const/4 v3, 0x0

    .line 3138
    invoke-virtual {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v2

    .line 3139
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3140
    iget v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 3141
    const-string v1, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3143
    const-string v1, "then"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3144
    const-string v1, "missing \'then\'"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0

    .line 3146
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1638
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v1

    .line 3148
    const-string v3, "else"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3149
    const-string v3, "missing \'else\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 3151
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3152
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v0

    .line 3154
    new-instance v3, Lgnu/expr/IfExp;

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v3, v2, v1, v0}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v3
.end method

.method public parseItemType()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->B()I

    .line 1587
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1591
    iget v1, p0, Lgnu/xquery/lang/XQParser;->c:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 1593
    sget-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    :cond_0
    return-object v0

    .line 1597
    :cond_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0xed

    if-ne v0, v1, :cond_2

    .line 1599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1600
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v0

    .line 1613
    :goto_0
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x41

    if-eq v0, v1, :cond_4

    const/16 v1, 0x51

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 1604
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1605
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 1606
    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    .line 1607
    iget v0, p0, Lgnu/xquery/lang/XQParser;->f:I

    iget v2, p0, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 1608
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    return-object v1
.end method

.method public parseMaybeKindTest()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1536
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v2

    :pswitch_0
    const/16 v2, 0xec

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 1540
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNamedNodeType(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1553
    :pswitch_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1554
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1563
    :pswitch_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1565
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x41

    if-eq v0, v3, :cond_1

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    .line 1567
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1568
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1570
    :cond_2
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    .line 1571
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    .line 1573
    :cond_3
    const-string v0, "expected \')\'"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 1574
    :goto_0
    invoke-static {v2}, Lgnu/kawa/xml/ProcessingInstructionType;->getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;

    move-result-object v0

    goto :goto_1

    .line 1548
    :pswitch_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1549
    sget-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1543
    :pswitch_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1544
    sget-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1558
    :pswitch_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->u()V

    .line 1559
    sget-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1580
    :goto_1
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public parseNamedNodeType(Z)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1396
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    .line 1398
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 1399
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_4

    :cond_0
    const/16 v3, 0x41

    const/16 v4, 0x51

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x19f

    if-eq v0, v5, :cond_2

    .line 1408
    const-string v0, "expected QName or *"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1409
    :cond_2
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    goto :goto_1

    .line 1404
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->p(Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 1412
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1413
    iget v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    .line 1415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1416
    iget v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v5, v4, :cond_5

    if-ne v5, v3, :cond_4

    goto :goto_2

    .line 1421
    :cond_4
    const-string v3, "expected QName"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_3

    .line 1418
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v1

    .line 1423
    :cond_6
    :goto_3
    iget v3, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v3, v2, :cond_7

    .line 1424
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_4

    .line 1426
    :cond_7
    const-string v2, "expected \')\' after element"

    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 1428
    :goto_4
    invoke-static {p1, v0, v1}, Lgnu/xquery/lang/XQParser;->g(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public parseOptionalTypeDeclaration()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1463
    const-string v0, "as"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1466
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public parseQuantifiedExpr(Z)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v2, 0x65

    goto :goto_0

    :cond_0
    const/16 v2, 0x73

    .line 3488
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v2

    const/16 v3, 0x24

    .line 3489
    iput v3, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 3490
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3492
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "missing Variable token:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3493
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3495
    new-instance v5, Lgnu/expr/LambdaExp;

    invoke-direct {v5, v1}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3496
    invoke-virtual {v5, v4}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    const/4 v6, 0x0

    .line 3497
    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v6, 0x40000

    .line 3498
    invoke-virtual {v4, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3499
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3501
    const-string v4, "in"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3502
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_1

    .line 3505
    :cond_2
    iget v4, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_3

    .line 3506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3507
    :cond_3
    const-string v4, "missing \'in\' in QuantifiedExpr"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3509
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v4

    new-array v6, v1, [Lgnu/expr/Expression;

    aput-object v4, v6, v0

    .line 3510
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3511
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v2, v5}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3513
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v4, 0x2c

    const-string v7, "some"

    const-string v8, "every"

    if-ne v2, v4, :cond_5

    .line 3515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3516
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v2, v3, :cond_4

    .line 3517
    const-string p1, "missing $NAME after \',\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3518
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_2

    .line 3522
    :cond_5
    const-string v2, "satisfies"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3523
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3524
    const-string p1, "missing \'satisfies\' clause"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3525
    :cond_6
    const-string v3, "unexpected eof-of-file after \'satisfies\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    .line 3526
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v3

    add-int/2addr v3, v1

    .line 3527
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v2, :cond_7

    .line 3529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3530
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->o()Lgnu/expr/Expression;

    move-result-object v2

    .line 3531
    invoke-virtual {p0, v2, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3533
    :goto_2
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v3, v5}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3534
    iput-object v2, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3535
    aget-object v2, v6, v0

    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v5, v3, v0

    aput-object v2, v3, v1

    .line 3536
    new-instance v0, Lgnu/expr/ApplyExp;

    if-eqz p1, :cond_8

    move-object v7, v8

    :cond_8
    const-string p1, "gnu.xquery.util.ValuesEvery"

    invoke-static {p1, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parseVariable()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3178
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 3179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_0

    .line 3181
    :cond_0
    const-string v0, "missing \'$\' before variable name"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3182
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3185
    iget v1, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x41

    if-ne v1, v2, :cond_2

    .line 3188
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseVariableDeclaration()Lgnu/expr/Declaration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3196
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3199
    :cond_0
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 3200
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    return-object v1
.end method

.method public final q(I)Lgnu/expr/Expression;
    .locals 8

    .line 1896
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->B()I

    const/4 v0, 0x1

    .line 1897
    new-array v1, v0, [Lgnu/expr/Expression;

    .line 1899
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1903
    aput-object v2, v1, v3

    goto :goto_3

    .line 1905
    :cond_0
    iget v4, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v5, 0x41

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0x51

    if-eq v4, v5, :cond_3

    const/16 v5, 0x43

    if-eq v4, v5, :cond_3

    const/16 v5, 0x19f

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported axis \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v6

    :cond_3
    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-ne p1, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 1908
    :goto_2
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->p(Z)Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v5, v4, v6}, Lgnu/xquery/lang/XQParser;->g(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1917
    :goto_3
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    iget-object v4, v4, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1920
    const-string v4, "node test when context item is undefined"

    const-string v5, "XPDY0002"

    invoke-virtual {p0, v4, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_4

    .line 1922
    :cond_6
    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v5, v4}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v4, v6

    :goto_4
    if-nez v2, :cond_7

    .line 1924
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    :cond_7
    const/4 v2, 0x3

    const/4 v5, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_6

    :cond_8
    if-ne p1, v5, :cond_9

    .line 1930
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    goto :goto_7

    :cond_9
    packed-switch p1, :pswitch_data_0

    .line 1946
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 1937
    :pswitch_1
    const-string p1, "Self"

    goto :goto_5

    .line 1944
    :pswitch_2
    const-string p1, "PrecedingSibling"

    goto :goto_5

    .line 1943
    :pswitch_3
    const-string p1, "Preceding"

    goto :goto_5

    .line 1938
    :pswitch_4
    const-string p1, "Parent"

    goto :goto_5

    .line 1942
    :pswitch_5
    const-string p1, "FollowingSibling"

    goto :goto_5

    .line 1941
    :pswitch_6
    const-string p1, "Following"

    goto :goto_5

    .line 1936
    :pswitch_7
    const-string p1, "DescendantOrSelf"

    goto :goto_5

    .line 1945
    :pswitch_8
    const-string p1, "Attribute"

    goto :goto_5

    .line 1940
    :pswitch_9
    const-string p1, "AncestorOrSelf"

    goto :goto_5

    .line 1939
    :pswitch_a
    const-string p1, "Ancestor"

    .line 1948
    :goto_5
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v6, "gnu.kawa.xml."

    const-string v7, "Axis"

    .line 0
    invoke-static {v6, p1, v7}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1948
    const-string v6, "make"

    invoke-direct {v2, p1, v6, v0}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    goto :goto_7

    .line 1928
    :cond_a
    :goto_6
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1953
    :goto_7
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1954
    invoke-virtual {v2, v5}, Lgnu/expr/Expression;->setFlag(I)V

    .line 1955
    new-instance p1, Lgnu/expr/ApplyExp;

    new-array v0, v0, [Lgnu/expr/Expression;

    aput-object v4, v0, v3

    invoke-direct {p1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final r()Lgnu/expr/Expression;
    .locals 3

    .line 2740
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v0, 0x28

    .line 2741
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v0

    const/16 v1, 0x29

    const/4 v2, 0x1

    .line 2742
    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v1

    .line 2743
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2744
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2745
    const-string v0, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3636
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget v0, p0, Lgnu/xquery/lang/XQParser;->z:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 479
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->A:Ljava/lang/String;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    .line 480
    invoke-super {p0}, Lgnu/text/Lexer;->reset()V

    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lgnu/expr/Expression;
    .locals 13

    .line 1798
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    sget-object v1, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    const/16 v2, 0x44

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->v()Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_3

    .line 1800
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, v1, v4}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1803
    const-string v0, "context item is undefined"

    const-string v6, "XPDY0002"

    invoke-virtual {p0, v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_1

    .line 1805
    :cond_2
    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v0, v6

    .line 1806
    :goto_1
    new-instance v6, Lgnu/expr/ApplyExp;

    const-string v7, "gnu.xquery.util.NodeUtils"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string v8, "rootDocument"

    invoke-virtual {v7, v8, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    new-array v8, v3, [Lgnu/expr/Expression;

    aput-object v0, v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1809
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v0

    .line 1810
    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->unread(I)V

    if-ltz v0, :cond_a

    const/16 v7, 0x29

    if-eq v0, v7, :cond_a

    const/16 v7, 0x7d

    if-ne v0, v7, :cond_4

    goto/16 :goto_8

    :cond_4
    move-object v0, v6

    :goto_3
    const/4 v7, 0x0

    move-object v6, v7

    .line 1969
    :goto_4
    iget v8, p0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v8, v5, :cond_6

    if-ne v8, v2, :cond_5

    goto :goto_5

    :cond_5
    return-object v0

    :cond_6
    :goto_5
    if-ne v8, v2, :cond_7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 1973
    :goto_6
    new-instance v9, Lgnu/expr/LambdaExp;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1974
    invoke-virtual {v9, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v10

    const-wide/32 v11, 0x40000

    .line 1975
    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1976
    sget-object v11, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 1977
    invoke-virtual {v10, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1978
    sget-object v11, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    sget-object v12, Lgnu/xquery/lang/XQParser;->G:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v12, v11}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1979
    sget-object v12, Lgnu/xquery/lang/XQParser;->H:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v12, v11}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1980
    iget-object v11, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v11, v9}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    if-eqz v8, :cond_8

    .line 1983
    iput v5, p0, Lgnu/xquery/lang/XQParser;->a:I

    .line 1984
    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v1, v10}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 1985
    new-array v8, v3, [Lgnu/expr/Expression;

    aput-object v6, v8, v4

    .line 1986
    sget-object v6, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    .line 1987
    new-instance v10, Lgnu/expr/ApplyExp;

    invoke-direct {v10, v6, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v10, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v6, v0

    goto :goto_7

    .line 1992
    :cond_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1993
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->v()Lgnu/expr/Expression;

    move-result-object v8

    if-eqz v6, :cond_9

    .line 1998
    instance-of v10, v8, Lgnu/expr/ApplyExp;

    if-eqz v10, :cond_9

    move-object v10, v8

    check-cast v10, Lgnu/expr/ApplyExp;

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    instance-of v11, v10, Lgnu/expr/ApplyExp;

    if-eqz v11, :cond_9

    check-cast v10, Lgnu/expr/ApplyExp;

    invoke-virtual {v10}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v11

    sget-object v12, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    if-ne v11, v12, :cond_9

    .line 2003
    sget-object v0, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    invoke-virtual {v10, v0}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    move-object v0, v6

    .line 2007
    :cond_9
    iput-object v8, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v6, v7

    .line 2010
    :goto_7
    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v8, v9}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    const/4 v8, 0x2

    .line 2046
    new-array v8, v8, [Lgnu/expr/Expression;

    aput-object v0, v8, v4

    aput-object v9, v8, v3

    .line 2047
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v9, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    invoke-direct {v0, v9, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto/16 :goto_4

    .line 1813
    :cond_a
    :goto_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    return-object v6
.end method

.method public setInteractive(Z)V
    .locals 1

    .line 1231
    iget-boolean v0, p0, Lgnu/text/Lexer;->interactive:Z

    if-eq v0, p1, :cond_1

    .line 1232
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lgnu/text/Lexer;->nesting:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lgnu/text/Lexer;->interactive:Z

    return-void
.end method

.method public setStaticBaseUri(Ljava/lang/String;)V
    .locals 2

    .line 87
    :try_start_0
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object p1

    .line 100
    instance-of v0, p1, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p1

    .line 87
    :cond_0
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->l:Lgnu/text/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    instance-of v0, p1, Lgnu/mapping/WrappedException;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lgnu/mapping/WrappedException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid URI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4405
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x65

    .line 4379
    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4380
    iget-boolean p2, p0, Lgnu/text/Lexer;->interactive:Z

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 4382
    iput p1, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 p2, 0x0

    .line 4383
    iput-object p2, p0, Lgnu/xquery/lang/XQParser;->b:Ljava/lang/String;

    .line 4384
    iput p1, p0, Lgnu/text/Lexer;->nesting:I

    .line 4385
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    check-cast p1, Lgnu/mapping/InPort;

    const/16 p2, 0xa

    iput-char p2, p1, Lgnu/text/LineBufferedReader;->readState:C

    .line 4388
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result p1

    if-ltz p1, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4393
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->unread(I)V

    .line 4397
    :cond_1
    new-instance p1, Lgnu/text/SyntaxException;

    invoke-virtual {p0}, Lgnu/text/Lexer;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p2

    invoke-direct {p1, p2}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1

    .line 4399
    :cond_2
    new-instance p2, Lgnu/expr/ErrorExp;

    invoke-direct {p2, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final t()V
    .locals 4

    .line 3706
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3707
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 3708
    iget v3, p0, Lgnu/text/Lexer;->nesting:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 3711
    :cond_1
    sget-boolean v3, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    .line 3713
    iput v0, p0, Lgnu/xquery/lang/XQParser;->f:I

    .line 3714
    iput v2, p0, Lgnu/xquery/lang/XQParser;->g:I

    const/16 v0, 0x77

    .line 3715
    const-string v2, "missing \';\' after declaration"

    invoke-virtual {p0, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_2
    if-ltz v1, :cond_3

    .line 3718
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->unread(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1384
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1385
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 1386
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    return-void

    .line 1388
    :cond_0
    const-string v0, "expected \')\'"

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final v()Lgnu/expr/Expression;
    .locals 17

    move-object/from16 v0, p0

    .line 2056
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x2e

    if-eq v2, v5, :cond_37

    const/16 v6, 0x33

    if-ne v2, v6, :cond_0

    goto/16 :goto_19

    .line 2075
    :cond_0
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->B()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    if-ltz v2, :cond_1

    const/16 v5, 0xd

    if-ge v2, v5, :cond_1

    .line 2079
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2080
    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->q(I)Lgnu/expr/Expression;

    move-result-object v1

    move v4, v2

    goto/16 :goto_18

    .line 2082
    :cond_1
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v5, 0x40

    const/4 v6, 0x2

    if-ne v2, v5, :cond_2

    .line 2084
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2086
    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->q(I)Lgnu/expr/Expression;

    move-result-object v1

    :goto_0
    const/4 v4, 0x2

    goto/16 :goto_18

    :cond_2
    const/16 v5, 0xec

    if-ne v2, v5, :cond_3

    .line 2091
    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->q(I)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_0

    .line 2095
    :cond_3
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->q(I)Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v4, 0x3

    move-object v1, v2

    goto/16 :goto_18

    .line 2867
    :cond_4
    iget v2, v0, Lgnu/xquery/lang/XQParser;->f:I

    .line 2868
    iget v5, v0, Lgnu/xquery/lang/XQParser;->g:I

    .line 2869
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->B()I

    move-result v6

    const/16 v7, 0x22

    if-eq v6, v7, :cond_33

    const/16 v7, 0x24

    if-eq v6, v7, :cond_31

    const/16 v7, 0x28

    if-eq v6, v7, :cond_30

    const/16 v8, 0x46

    const/16 v9, 0x2c

    const/4 v10, 0x0

    const/16 v11, 0x29

    const/16 v12, 0xa

    if-eq v6, v8, :cond_2c

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_2b

    const/16 v8, 0xc5

    const/16 v13, 0x51

    const/16 v14, 0x41

    const/16 v15, 0x7d

    if-eq v6, v8, :cond_20

    const/16 v8, 0x194

    if-eq v6, v8, :cond_1c

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_17

    .line 3028
    :pswitch_0
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3029
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/16 v10, 0xfe

    const/16 v11, 0x100

    const/16 v12, 0xff

    const/16 v16, 0x1

    const/16 v1, 0xfb

    if-eq v6, v1, :cond_c

    const/16 v4, 0xfc

    if-ne v6, v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v6, v11, :cond_6

    .line 3053
    const-string v4, "gnu.kawa.xml.DocumentConstructor"

    const-string v13, "documentConstructor"

    invoke-static {v4, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto/16 :goto_8

    :cond_6
    if-ne v6, v10, :cond_7

    .line 3056
    const-string v4, "gnu.kawa.xml.CommentConstructor"

    const-string v13, "commentConstructor"

    invoke-static {v4, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto/16 :goto_8

    :cond_7
    if-ne v6, v12, :cond_b

    .line 3061
    iget v4, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v4, v14, :cond_8

    .line 3062
    new-instance v4, Lgnu/expr/QuoteExp;

    new-instance v13, Ljava/lang/String;

    iget-object v14, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v11, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v13, v14, v3, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    if-ne v4, v7, :cond_9

    .line 3066
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_1

    .line 3070
    :cond_9
    const-string v4, "expected NCName or \'{\' after \'processing-instruction\'"

    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 3071
    iget v11, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v11, v13, :cond_a

    move-object v10, v4

    goto/16 :goto_17

    .line 3074
    :cond_a
    :goto_1
    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3075
    const-string v4, "gnu.kawa.xml.MakeProcInst"

    const-string v11, "makeProcInst"

    invoke-static {v4, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 3077
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_8

    .line 3080
    :cond_b
    const-string v4, "gnu.kawa.xml.MakeText"

    const-string v11, "makeText"

    invoke-static {v4, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_8

    .line 3035
    :cond_c
    :goto_2
    iget v4, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v4, v14, :cond_f

    if-ne v4, v13, :cond_d

    goto :goto_3

    :cond_d
    if-ne v4, v7, :cond_e

    .line 3038
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_5

    .line 3040
    :cond_e
    const-string v1, "missing element/attribute name"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    goto/16 :goto_17

    :cond_f
    :goto_3
    if-eq v6, v1, :cond_10

    const/4 v4, 0x1

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    .line 3036
    :goto_4
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->p(Z)Lgnu/expr/Expression;

    move-result-object v4

    :goto_5
    if-ne v6, v1, :cond_11

    const/4 v11, 0x1

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    .line 3041
    :goto_6
    invoke-static {v4, v11}, Lgnu/xquery/lang/XQParser;->a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-ne v6, v1, :cond_12

    .line 3044
    new-instance v4, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v4}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 3045
    iget v11, v0, Lgnu/xquery/lang/XQParser;->r:I

    iput v11, v4, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 3046
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v4, v11

    goto :goto_7

    .line 3049
    :cond_12
    sget-object v4, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .line 3050
    :goto_7
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3082
    :goto_8
    invoke-virtual {v0, v7}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v11

    .line 3083
    const-string v13, "unexpected end-of-file after \'{\'"

    invoke-virtual {v0, v13}, Lgnu/xquery/lang/XQParser;->A(Ljava/lang/String;)I

    .line 3084
    iget v13, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v13, v7, :cond_13

    .line 3085
    const-string v1, "missing \'{\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    goto/16 :goto_17

    .line 3086
    :cond_13
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v7, 0xfd

    if-eq v6, v7, :cond_15

    if-eq v6, v10, :cond_15

    if-ne v6, v12, :cond_14

    goto :goto_a

    .line 3090
    :cond_14
    iget v3, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v3, v15, :cond_17

    .line 3092
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->m()Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3093
    :goto_9
    iget v3, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v3, v9, :cond_17

    .line 3095
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3096
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->m()Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    :goto_a
    if-ne v6, v12, :cond_16

    const/4 v3, 0x1

    .line 3089
    :cond_16
    invoke-virtual {v0, v15, v3}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3099
    :cond_17
    invoke-virtual {v0, v11}, Lgnu/text/Lexer;->popNesting(C)V

    .line 3100
    iget v3, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v3, v15, :cond_18

    .line 3101
    const-string v1, "missing \'}\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    goto/16 :goto_17

    .line 3102
    :cond_18
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 3103
    invoke-virtual {v8, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3104
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-direct {v7, v4, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3105
    invoke-virtual {v0, v7, v2, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    const/16 v2, 0x100

    if-eq v6, v2, :cond_1a

    if-ne v6, v1, :cond_19

    goto :goto_b

    :cond_19
    move-object v10, v7

    goto/16 :goto_16

    .line 3107
    :cond_1a
    :goto_b
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->K(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    :goto_c
    move-object v10, v1

    goto/16 :goto_16

    .line 3112
    :pswitch_1
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 3113
    invoke-virtual {v0, v15, v3}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_c

    .line 2972
    :pswitch_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x31

    if-ne v6, v2, :cond_1b

    .line 2977
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 2979
    :cond_1b
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2980
    :goto_d
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v3

    goto/16 :goto_16

    .line 2984
    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid decimal literal: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_c

    .line 2966
    :pswitch_3
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-static {v2, v3, v4, v12, v3}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    .line 2937
    :cond_1c
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_1f

    .line 2940
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2942
    iget v1, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v1, v14, :cond_1e

    if-eq v1, v13, :cond_1e

    const/16 v4, 0x43

    if-ne v1, v4, :cond_1d

    goto :goto_e

    .line 2946
    :cond_1d
    const-string v1, "saw end tag \'</\' not in an element constructor"

    goto :goto_f

    .line 2944
    :cond_1e
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "saw end tag \'</"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v7, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v4, v6, v3, v7}, Ljava/lang/String;-><init>([CII)V

    const-string v3, ">\' not in an element constructor"

    .line 0
    invoke-static {v1, v4, v3}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2947
    :goto_f
    iput v2, v0, Lgnu/xquery/lang/XQParser;->f:I

    .line 2948
    iput v5, v0, Lgnu/xquery/lang/XQParser;->g:I

    .line 2949
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    .line 2950
    :goto_10
    iget v1, v0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v2, 0x195

    if-eq v1, v2, :cond_34

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    if-eq v1, v12, :cond_34

    .line 2951
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_10

    .line 2956
    :cond_1f
    invoke-virtual {v0, v1, v3}, Lgnu/xquery/lang/XQParser;->z(IZ)Lgnu/expr/Expression;

    move-result-object v1

    .line 2957
    invoke-virtual {v0, v1, v2, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_c

    :cond_20
    const/16 v16, 0x1

    .line 2881
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 2884
    :cond_21
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2886
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v2, v13, :cond_22

    if-eq v2, v14, :cond_22

    .line 2887
    const-string v2, "missing pragma name"

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_11

    .line 2889
    :cond_22
    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v5, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 2890
    :goto_11
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, -0x1

    .line 2894
    :cond_23
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-ltz v5, :cond_24

    int-to-char v6, v5

    .line 2895
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_23

    :cond_24
    :goto_12
    const/16 v6, 0x23

    if-ne v5, v6, :cond_28

    .line 2896
    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v6

    if-eq v6, v11, :cond_25

    goto :goto_13

    .line 2906
    :cond_25
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    .line 2907
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2909
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v2, v8, :cond_21

    if-ne v2, v7, :cond_27

    .line 2914
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2915
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v2, v15, :cond_26

    .line 2917
    invoke-virtual {v0, v7}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v2

    .line 2918
    invoke-virtual {v0, v15, v3}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    invoke-virtual {v0, v2}, Lgnu/text/Lexer;->popNesting(C)V

    .line 2920
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 2921
    const-string v2, "missing \'}\' - unexpected end-of-file"

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2923
    :cond_26
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 2924
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2925
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v4, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    invoke-direct {v3, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_c

    .line 2928
    :cond_27
    const-string v1, "missing \'{\' after pragma"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto/16 :goto_c

    :cond_28
    :goto_13
    if-gez v5, :cond_29

    .line 2899
    const-string v6, "pragma ended by end-of-file"

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_29
    if-nez v4, :cond_2a

    .line 2901
    const-string v4, "missing space between pragma and extension content"

    invoke-virtual {v0, v4}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    :cond_2a
    int-to-char v4, v5

    .line 2903
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2904
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v5

    const/4 v4, 0x1

    goto :goto_12

    .line 2932
    :cond_2b
    const-string v1, "saw unexpected \'{\' - assume you meant \'(\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2933
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    goto/16 :goto_c

    :cond_2c
    const/16 v16, 0x1

    .line 2995
    new-instance v1, Ljava/lang/String;

    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v6, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v1, v4, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 2996
    invoke-virtual {v0, v7}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v3

    .line 2997
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2998
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v12}, Ljava/util/Vector;-><init>(I)V

    .line 2999
    iget v6, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v6, v11, :cond_2f

    .line 3003
    :goto_14
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->m()Lgnu/expr/Expression;

    move-result-object v6

    .line 3004
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3005
    iget v6, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-ne v6, v11, :cond_2d

    goto :goto_15

    :cond_2d
    if-eq v6, v9, :cond_2e

    .line 3008
    const-string v1, "missing \')\' after function call"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    goto :goto_17

    .line 3009
    :cond_2e
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_14

    .line 3012
    :cond_2f
    :goto_15
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 3014
    invoke-virtual {v4, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3015
    new-instance v4, Lgnu/expr/ReferenceExp;

    invoke-direct {v4, v1, v10}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    const/4 v1, 0x1

    .line 3016
    invoke-virtual {v4, v1}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 3017
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v4, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3018
    invoke-virtual {v0, v1, v2, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3019
    invoke-virtual {v0, v3}, Lgnu/text/Lexer;->popNesting(C)V

    goto/16 :goto_c

    .line 2877
    :cond_30
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->r()Lgnu/expr/Expression;

    move-result-object v1

    goto/16 :goto_c

    .line 2988
    :cond_31
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    .line 2990
    const-string v1, "missing Variable"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v10

    goto :goto_17

    .line 2991
    :cond_32
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 2992
    iget v1, v0, Lgnu/xquery/lang/XQParser;->f:I

    iget v3, v0, Lgnu/xquery/lang/XQParser;->g:I

    invoke-virtual {v0, v2, v1, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    move-object v10, v2

    goto :goto_16

    .line 2962
    :cond_33
    new-instance v1, Lgnu/expr/QuoteExp;

    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v5, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 3128
    :goto_16
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    :cond_34
    :goto_17
    if-nez v10, :cond_35

    .line 2186
    const-string v1, "missing expression"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2187
    iget v2, v0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_36

    .line 2188
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    goto :goto_18

    :cond_35
    const/4 v4, -0x1

    move-object v1, v10

    .line 2106
    :cond_36
    :goto_18
    invoke-virtual {v0, v4, v1}, Lgnu/xquery/lang/XQParser;->w(ILgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    :cond_37
    :goto_19
    const/16 v1, 0x9

    const/16 v6, 0xc

    if-ne v2, v5, :cond_38

    const/16 v2, 0xc

    goto :goto_1a

    :cond_38
    const/16 v2, 0x9

    .line 2059
    :goto_1a
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2060
    iget-object v5, v0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v7, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    invoke-virtual {v5, v7, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v5

    if-nez v5, :cond_39

    .line 2063
    const-string v5, "context item is undefined"

    const-string v7, "XPDY0002"

    invoke-virtual {v0, v5, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_1b

    .line 2065
    :cond_39
    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v7, v5}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v5, v8

    :goto_1b
    if-ne v2, v1, :cond_3a

    const/4 v1, 0x1

    .line 2068
    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object v5, v1, v3

    .line 2069
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-static {v3}, Lgnu/kawa/xml/ParentAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;

    move-result-object v3

    invoke-direct {v5, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    :cond_3a
    if-ne v2, v6, :cond_3b

    goto :goto_1c

    :cond_3b
    move v4, v2

    .line 2073
    :goto_1c
    invoke-virtual {v0, v4, v5}, Lgnu/xquery/lang/XQParser;->w(ILgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final w(ILgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2114
    :goto_0
    iget v2, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_5

    .line 2116
    invoke-virtual {p0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 2117
    invoke-virtual {p0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v3

    add-int/2addr v3, v1

    .line 2120
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2121
    new-instance v4, Lgnu/expr/LambdaExp;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2122
    invoke-virtual {p0, v4, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2123
    sget-object v5, Lgnu/xquery/lang/XQParser;->F:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    if-ltz p1, :cond_0

    .line 2125
    sget-object v6, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 2127
    :cond_0
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 2128
    :goto_1
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sget-object v7, Lgnu/xquery/lang/XQParser;->G:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v7, v6}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2129
    sget-object v7, Lgnu/xquery/lang/XQParser;->H:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v7, v6}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2130
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v6, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    const/4 v6, 0x0

    .line 2131
    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const/16 v5, 0x5d

    .line 2132
    invoke-virtual {p0, v5, v0}, Lgnu/xquery/lang/XQParser;->n(IZ)Lgnu/expr/Expression;

    move-result-object v5

    .line 2133
    iget v6, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 2134
    const-string v6, "missing \']\' - unexpected end-of-file"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_1
    if-gez p1, :cond_2

    .line 2140
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_4

    const/16 v6, 0x9

    if-eq p1, v6, :cond_4

    const/16 v6, 0xa

    if-eq p1, v6, :cond_4

    const/16 v6, 0xb

    if-ne p1, v6, :cond_3

    goto :goto_2

    .line 2152
    :cond_3
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_3

    .line 2147
    :cond_4
    :goto_2
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 2158
    :goto_3
    invoke-virtual {p0, v5, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2159
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->C:Lgnu/expr/Compilation;

    invoke-virtual {v2, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2160
    iput-object v5, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2161
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    const/4 v2, 0x2

    .line 2162
    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object p2, v2, v0

    aput-object v4, v2, v1

    .line 2163
    new-instance p2, Lgnu/expr/ApplyExp;

    invoke-direct {p2, v6, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto/16 :goto_0

    :cond_5
    return-object p2
.end method

.method public final x()Ljava/lang/Object;
    .locals 4

    .line 1623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1624
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 1625
    const-string v0, "expected a URILiteral"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x1

    .line 1627
    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lgnu/expr/Expression;
    .locals 7

    .line 1746
    iget v0, p0, Lgnu/xquery/lang/XQParser;->a:I

    const/16 v1, 0x19e

    const/16 v2, 0x19d

    if-eq v0, v1, :cond_4

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 1781
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->s()Lgnu/expr/Expression;

    move-result-object v0

    .line 1784
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->C()I

    move-result v1

    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_3

    const/16 v3, 0x1a5

    if-eq v1, v3, :cond_3

    move-object v4, v0

    .line 1768
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->C()I

    move-result v5

    const/16 v0, 0x1a3

    if-eq v5, v0, :cond_1

    return-object v4

    .line 1771
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->s()Lgnu/expr/Expression;

    move-result-object v0

    .line 1784
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->C()I

    move-result v1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 1773
    invoke-virtual {p0, v5, v4, v0}, Lgnu/xquery/lang/XQParser;->f(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_1

    .line 1787
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1788
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->s()Lgnu/expr/Expression;

    move-result-object v6

    .line 1789
    invoke-virtual {p0, v1, v0, v6}, Lgnu/xquery/lang/XQParser;->f(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_2

    .line 1787
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1788
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->s()Lgnu/expr/Expression;

    move-result-object v2

    .line 1789
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->f(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    .line 1749
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 1750
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->y()Lgnu/expr/Expression;

    move-result-object v1

    if-ne v0, v2, :cond_5

    .line 1751
    const-string v3, "plus"

    goto :goto_4

    :cond_5
    const-string v3, "minus"

    :goto_4
    if-ne v0, v2, :cond_6

    const-string v0, "+"

    goto :goto_5

    :cond_6
    const-string v0, "-"

    :goto_5
    const-string v2, "gnu.xquery.util.ArithOp"

    invoke-static {v2, v3, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1755
    new-instance v2, Lgnu/expr/ApplyExp;

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method public final z(IZ)Lgnu/expr/Expression;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x21

    const/16 v3, 0x65

    const/16 v4, 0x41

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_6

    .line 2461
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    .line 2462
    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v7

    if-ne v7, v2, :cond_3

    .line 2464
    invoke-virtual {v0}, Lgnu/text/Lexer;->skip()V

    .line 2465
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2467
    iget v1, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 2471
    iget-object v4, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    aget-char v4, v4, v1

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 2480
    const-string v1, "consecutive or final hyphen in XML comment"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 2483
    :cond_2
    new-instance v1, Lgnu/expr/QuoteExp;

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v2, v5, [Lgnu/expr/Expression;

    aput-object v1, v2, v6

    .line 2485
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.kawa.xml.CommentConstructor"

    const-string v4, "commentConstructor"

    invoke-static {v3, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    :cond_3
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_5

    .line 2490
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    const/16 v7, 0x43

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    const/16 v7, 0x54

    if-ne v1, v7, :cond_5

    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v1

    if-ne v1, v2, :cond_5

    if-nez p2, :cond_4

    .line 2495
    const-string v1, "CDATA section must be in element content"

    invoke-virtual {v0, v3, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2496
    :cond_4
    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2497
    new-instance v1, Lgnu/expr/QuoteExp;

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v2, v5, [Lgnu/expr/Expression;

    aput-object v1, v2, v6

    .line 2499
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/xquery/lang/XQParser;->J:Lgnu/expr/Expression;

    invoke-direct {v1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    .line 2502
    :cond_5
    const-string v1, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    :cond_6
    const/16 v2, 0x3f

    if-ne v1, v2, :cond_c

    .line 2506
    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v1

    if-ltz v1, :cond_7

    int-to-char v1, v1

    .line 2507
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 2509
    :cond_7
    const-string v1, "missing target after \'<?\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2510
    :cond_8
    new-instance v2, Ljava/lang/String;

    iget-object v1, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v3, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v2, v1, v6, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x0

    .line 2514
    :goto_2
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v3

    if-gez v3, :cond_9

    goto :goto_3

    :cond_9
    int-to-char v3, v3

    .line 2517
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_b

    .line 2519
    invoke-virtual {v0}, Lgnu/text/Lexer;->unread()V

    .line 2524
    :goto_3
    const-string v3, "?>"

    invoke-virtual {v0, v3}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    if-nez v1, :cond_a

    .line 2525
    iget v1, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    if-lez v1, :cond_a

    .line 2526
    const-string v1, "target must be followed by space or \'?>\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2527
    :cond_a
    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v1, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2528
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object v3, v1, v6

    aput-object v2, v1, v5

    .line 2529
    new-instance v2, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.kawa.xml.MakeProcInst"

    const-string v4, "makeProcInst"

    invoke-static {v3, v4}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2

    :cond_b
    add-int/2addr v1, v5

    goto :goto_2

    :cond_c
    if-ltz v1, :cond_2a

    int-to-char v2, v1

    .line 2533
    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_14

    .line 2537
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lgnu/text/Lexer;->unread(I)V

    .line 2538
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    const/16 v1, 0x3c

    .line 2539
    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->pushNesting(C)C

    move-result v2

    .line 2570
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v9, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v7, v8, v6, v9}, Ljava/lang/String;-><init>([CII)V

    .line 2571
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2573
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v9, v5}, Lgnu/xquery/lang/XQParser;->a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2574
    const-string v9, "comment not allowed in element start tag"

    iput-object v9, v0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v10, v9

    .line 2580
    :goto_4
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v11

    const/4 v12, 0x0

    :goto_5
    if-ltz v11, :cond_e

    int-to-char v13, v11

    .line 2581
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2583
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v11

    const/4 v12, 0x1

    goto :goto_5

    :cond_e
    const/16 v13, 0x2f

    const/16 v14, 0x3e

    if-ltz v11, :cond_f

    if-eq v11, v14, :cond_f

    if-ne v11, v13, :cond_10

    :cond_f
    :goto_6
    move-object v1, v9

    goto/16 :goto_11

    :cond_10
    if-nez v12, :cond_11

    .line 2589
    const-string v12, "missing space before attribute"

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2590
    :cond_11
    invoke-virtual {v0, v11}, Lgnu/text/Lexer;->unread(I)V

    .line 2591
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2592
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v12

    .line 2593
    iget v15, v0, Lgnu/xquery/lang/XQParser;->a:I

    if-eq v15, v4, :cond_12

    const/16 v1, 0x51

    if-eq v15, v1, :cond_12

    goto :goto_6

    .line 2595
    :cond_12
    new-instance v1, Ljava/lang/String;

    iget-object v11, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v13, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v1, v11, v6, v13}, Ljava/lang/String;-><init>([CII)V

    .line 2596
    invoke-virtual {v0}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v11

    add-int/2addr v11, v5

    .line 2597
    invoke-virtual {v0}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v13

    add-int/2addr v13, v5

    iget v14, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v13, v14

    .line 2599
    iget v14, v0, Lgnu/xquery/lang/XQParser;->a:I

    const-string v15, ""

    if-ne v14, v4, :cond_13

    .line 2601
    const-string v14, "xmlns"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object v14, v15

    goto :goto_7

    .line 2606
    :cond_13
    const-string v14, "xmlns:"

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x6

    .line 2607
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_14
    move-object v14, v9

    :goto_7
    if-eqz v14, :cond_15

    move-object v4, v9

    goto :goto_8

    .line 2609
    :cond_15
    sget-object v16, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object/from16 v4, v16

    .line 2612
    :goto_8
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lgnu/xquery/lang/XQParser;->a(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v1

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_16

    .line 2616
    iput-object v9, v0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    .line 2617
    const-string v1, "missing \'=\' after attribute"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto/16 :goto_13

    .line 188
    :cond_16
    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v1

    .line 2620
    iget v3, v0, Lgnu/xquery/lang/XQParser;->B:I

    const/16 v9, 0x7b

    if-ne v1, v9, :cond_17

    .line 2623
    const-string v1, "enclosed attribute value expression should be quoted"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->J(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->k()Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    int-to-char v1, v1

    .line 2627
    invoke-virtual {v0, v1, v8}, Lgnu/xquery/lang/XQParser;->j(CLjava/util/Vector;)V

    .line 2628
    :goto_9
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v12

    if-eqz v14, :cond_20

    if-ne v1, v5, :cond_18

    :goto_a
    move-object v1, v15

    goto :goto_b

    .line 2634
    :cond_18
    iget v1, v0, Lgnu/xquery/lang/XQParser;->B:I

    if-le v1, v3, :cond_19

    .line 2635
    const-string v1, "enclosed expression not allowed in namespace declaration"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_a

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 2638
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 2640
    instance-of v3, v1, Lgnu/expr/ApplyExp;

    if-eqz v3, :cond_1a

    move-object v3, v1

    check-cast v3, Lgnu/expr/ApplyExp;

    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    sget-object v9, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    if-ne v4, v9, :cond_1a

    .line 2642
    invoke-virtual {v3, v6}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 2643
    :cond_1a
    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2646
    :goto_b
    invoke-virtual {v8, v12}, Ljava/util/Vector;->setSize(I)V

    .line 2647
    invoke-virtual {v0, v14, v1, v5}, Lgnu/xquery/lang/XQParser;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v14, v15, :cond_1b

    const/4 v14, 0x0

    :cond_1b
    move-object v3, v10

    :goto_c
    if-eqz v3, :cond_1e

    .line 2653
    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-ne v4, v14, :cond_1d

    if-nez v14, :cond_1c

    .line 2655
    const-string v3, "duplicate default namespace declaration"

    goto :goto_d

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duplicate namespace prefix \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_d
    const-string v4, "XQST0071"

    const/16 v9, 0x65

    invoke-virtual {v0, v9, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    const/16 v9, 0x65

    .line 2651
    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_c

    :cond_1e
    const/16 v9, 0x65

    .line 2663
    :goto_e
    new-instance v3, Lgnu/xml/NamespaceBinding;

    if-ne v1, v15, :cond_1f

    const/4 v1, 0x0

    :cond_1f
    invoke-direct {v3, v14, v1, v10}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v10, v3

    goto :goto_10

    :cond_20
    const/16 v9, 0x65

    .line 2670
    new-array v3, v1, [Lgnu/expr/Expression;

    :goto_f
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_21

    add-int v14, v12, v1

    .line 2672
    invoke-virtual {v8, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Expression;

    aput-object v14, v3, v1

    goto :goto_f

    .line 2673
    :cond_21
    invoke-virtual {v8, v12}, Ljava/util/Vector;->setSize(I)V

    .line 2674
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v4, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2675
    invoke-virtual {v0, v1, v11, v13}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2676
    invoke-virtual {v8, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_10
    const/16 v1, 0x3c

    const/16 v3, 0x65

    const/16 v4, 0x41

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2679
    :goto_11
    iput-object v1, v0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    if-ne v11, v13, :cond_23

    .line 2683
    invoke-virtual {v0}, Lgnu/text/Lexer;->read()I

    move-result v11

    if-ne v11, v14, :cond_22

    const/4 v1, 0x1

    goto :goto_12

    .line 2687
    :cond_22
    invoke-virtual {v0, v11}, Lgnu/text/Lexer;->unread(I)V

    :cond_23
    const/4 v1, 0x0

    :goto_12
    if-nez v1, :cond_28

    if-eq v11, v14, :cond_24

    .line 2692
    const-string v1, "missing \'>\' after start element"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_13

    :cond_24
    const/16 v1, 0x3c

    .line 2693
    invoke-virtual {v0, v1, v8}, Lgnu/xquery/lang/XQParser;->j(CLjava/util/Vector;)V

    .line 2694
    invoke-virtual {v0}, Lgnu/text/Lexer;->peek()I

    move-result v1

    if-ltz v1, :cond_27

    int-to-char v1, v1

    .line 2697
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 2698
    const-string v1, "invalid tag syntax after \'</\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_13

    .line 2699
    :cond_25
    invoke-virtual {v0}, Lgnu/xquery/lang/XQParser;->d()I

    .line 2700
    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v4, v0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v1, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2701
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2702
    const-string v3, "\'<"

    const-string v4, ">\' closed by \'</"

    const-string v5, ">\'"

    .line 0
    invoke-static {v3, v7, v4, v1, v5}, L_COROUTINE/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_13

    .line 2703
    :cond_26
    const-string v1, "comment not allowed in element end tag"

    iput-object v1, v0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->I(Z)I

    move-result v1

    const/4 v3, 0x0

    .line 2705
    iput-object v3, v0, Lgnu/xquery/lang/XQParser;->y:Ljava/lang/String;

    :cond_27
    if-eq v1, v14, :cond_28

    .line 2708
    const-string v1, "missing \'>\' after end element"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_13

    .line 2710
    :cond_28
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 2711
    invoke-virtual {v8, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2712
    new-instance v3, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v3}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 2713
    iget v4, v0, Lgnu/xquery/lang/XQParser;->r:I

    iput v4, v3, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 2717
    invoke-virtual {v3, v10}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 2718
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v1, v4

    :goto_13
    if-nez p2, :cond_29

    .line 2542
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->K(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2543
    :cond_29
    invoke-virtual {v0, v2}, Lgnu/text/Lexer;->popNesting(C)V

    return-object v1

    .line 2534
    :cond_2a
    :goto_14
    const-string v1, "expected QName after \'<\'"

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method
