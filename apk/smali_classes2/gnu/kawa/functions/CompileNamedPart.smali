.class public Lgnu/kawa/functions/CompileNamedPart;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final typeHasNamedParts:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    const-string v0, "gnu.mapping.HasNamedParts"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 1

    .line 228
    invoke-virtual {p1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_2

    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    invoke-virtual {v0}, Lgnu/expr/AccessExp;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p0, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v0, :cond_2

    check-cast p0, Lgnu/kawa/functions/GetNamedExp;

    iget-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeExp(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 244
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, p1}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 189
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    check-cast v4, Lkawa/lang/Translator;

    .line 190
    sget-object v5, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v5, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 191
    iget-object v4, v4, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v4, v5, v0}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    .line 192
    invoke-static {v4}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    new-instance p0, Lgnu/expr/ReferenceExp;

    invoke-direct {p0, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    return-object p0

    :cond_0
    if-eqz v5, :cond_1

    .line 196
    invoke-virtual {v2, v5, v3}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    new-instance p0, Lgnu/expr/ReferenceExp;

    invoke-direct {p0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 199
    :cond_1
    instance-of v4, p0, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_3

    move-object v4, p0

    check-cast v4, Lgnu/expr/ReferenceExp;

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->isUnknown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual {v4}, Lgnu/expr/AccessExp;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    .line 203
    instance-of v6, v5, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_2

    check-cast v5, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 205
    :goto_0
    invoke-virtual {v2, v5, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 207
    invoke-virtual {v4}, Lgnu/expr/AccessExp;->getName()Ljava/lang/String;

    move-result-object v2

    .line 210
    :try_start_0
    invoke-static {v2}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    const/4 v2, 0x2

    .line 218
    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object p0, v2, v0

    const/4 p0, 0x1

    aput-object p1, v2, p0

    .line 219
    new-instance p0, Lgnu/kawa/functions/GetNamedExp;

    invoke-direct {p0, v2}, Lgnu/kawa/functions/GetNamedExp;-><init>([Lgnu/expr/Expression;)V

    .line 220
    iput-object v1, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    return-object p0
.end method

.method public static makeExp(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 239
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .line 315
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 317
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 318
    instance-of v1, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_0

    .line 319
    new-instance p0, Lgnu/kawa/functions/GetNamedInstancePart;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/kawa/functions/GetNamedInstancePart;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p0

    return-object p0

    .line 322
    :cond_0
    new-instance v0, Lgnu/expr/QuoteExp;

    const-string v1, "gnu.kawa.functions.GetNamedInstancePart"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 323
    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    .line 324
    new-instance p0, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {p0, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object p0
.end method

.method public static validateGetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6

    .line 330
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 331
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    .line 334
    check-cast p3, Lgnu/kawa/functions/GetNamedInstancePart;

    .line 335
    iget-boolean v0, p3, Lgnu/kawa/functions/GetNamedInstancePart;->isField:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 337
    new-array v0, v1, [Lgnu/expr/Expression;

    aget-object p0, p0, v2

    aput-object p0, v0, v2

    new-instance p0, Lgnu/expr/QuoteExp;

    iget-object p3, p3, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {p0, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p0, v0, v3

    .line 338
    sget-object p0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    goto :goto_0

    .line 342
    :cond_0
    array-length v0, p0

    add-int/lit8 v4, v0, 0x1

    .line 343
    new-array v4, v4, [Lgnu/expr/Expression;

    .line 344
    aget-object v5, p0, v2

    aput-object v5, v4, v2

    .line 345
    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object p3, p3, Lgnu/kawa/functions/GetNamedInstancePart;->pname:Ljava/lang/String;

    invoke-direct {v2, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v4, v3

    sub-int/2addr v0, v3

    .line 346
    invoke-static {p0, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    sget-object p0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    move-object v0, v4

    .line 349
    :goto_0
    new-instance p3, Lgnu/expr/ApplyExp;

    invoke-direct {p3, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, p3, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static validateGetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 13
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 14
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 15
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    aget-object v6, v5, v4

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_12

    instance-of v6, v0, Lgnu/kawa/functions/GetNamedExp;

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 18
    :cond_0
    aget-object v6, v5, v3

    .line 20
    instance-of v8, v6, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_2

    .line 22
    move-object v8, v6

    check-cast v8, Lgnu/expr/ReferenceExp;

    .line 23
    invoke-virtual {v8}, Lgnu/expr/AccessExp;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 24
    aget-object v0, v5, v4

    invoke-static {v0}, Lgnu/kawa/functions/CompileNamedPart;->makeGetNamedInstancePartExp(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 25
    :cond_1
    invoke-virtual {v8}, Lgnu/expr/AccessExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 28
    :goto_0
    aget-object v9, v5, v4

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 30
    sget v11, Lgnu/expr/QuoteExp;->EXPLICITLY_TYPED:I

    .line 31
    invoke-virtual {v1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v11

    .line 32
    invoke-virtual {v11}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v12

    .line 33
    invoke-virtual {v12, v6, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v6

    .line 34
    iget-object v13, v11, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    iget-object v13, v11, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 37
    :goto_1
    move-object v14, v0

    check-cast v14, Lgnu/kawa/functions/GetNamedExp;

    if-eqz v6, :cond_7

    .line 41
    const-string v15, "<>"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 42
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 44
    :cond_4
    instance-of v15, v6, Lgnu/bytecode/ObjectType;

    if-eqz v15, :cond_7

    .line 46
    const-string v15, "new"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v0, 0x4e

    .line 47
    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v0

    return-object v0

    .line 48
    :cond_5
    const-string v15, "instance?"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v0, 0x49

    .line 49
    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v0

    return-object v0

    .line 50
    :cond_6
    const-string v15, "@"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v0, 0x43

    .line 51
    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v0

    return-object v0

    .line 54
    :cond_7
    instance-of v15, v6, Lgnu/bytecode/ObjectType;

    if-eqz v15, :cond_b

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_8

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x2e

    if-ne v4, v7, :cond_8

    .line 61
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/kawa/functions/NamedPart;

    const/16 v2, 0x44

    invoke-direct {v1, v6, v9, v2}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 63
    :cond_8
    invoke-static {v6, v11}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v4

    if-gez v4, :cond_9

    goto/16 :goto_2

    .line 65
    :cond_9
    check-cast v6, Lgnu/bytecode/ObjectType;

    invoke-static {v9}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3, v13, v12}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 69
    array-length v4, v3

    if-lez v4, :cond_a

    .line 71
    iput-object v3, v14, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    const/16 v0, 0x53

    .line 72
    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v0

    return-object v0

    .line 74
    :cond_a
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 75
    invoke-virtual {v3, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 76
    invoke-virtual {v1, v3, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 91
    :cond_b
    sget-object v6, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v6}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_2

    .line 98
    :cond_c
    instance-of v6, v10, Lgnu/bytecode/ObjectType;

    if-eqz v6, :cond_11

    .line 100
    move-object v6, v10

    check-cast v6, Lgnu/bytecode/ObjectType;

    .line 101
    invoke-static {v9}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 p3, 0x0

    const/16 v3, 0x56

    invoke-static {v6, v15, v3, v13, v12}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 104
    array-length v12, v3

    if-lez v12, :cond_d

    .line 106
    iput-object v3, v14, Lgnu/kawa/functions/GetNamedExp;->methods:[Lgnu/expr/PrimProcedure;

    const/16 v0, 0x4d

    .line 107
    invoke-virtual {v14, v0}, Lgnu/kawa/functions/GetNamedExp;->setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;

    move-result-object v0

    return-object v0

    .line 110
    :cond_d
    sget-object v3, Lgnu/kawa/functions/CompileNamedPart;->typeHasNamedParts:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v8, :cond_e

    .line 113
    invoke-static {v8}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 116
    check-cast v1, Lgnu/mapping/HasNamedParts;

    .line 117
    invoke-interface {v1, v9}, Lgnu/mapping/HasNamedParts;->isConstant(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 119
    invoke-interface {v1, v9}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 123
    :cond_e
    aget-object v1, v5, p3

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    new-array v5, v7, [Lgnu/expr/Expression;

    aput-object v1, v5, p3

    aput-object v2, v5, v4

    .line 124
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v2, "get"

    invoke-virtual {v3, v2, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 128
    :cond_f
    invoke-static {v6, v9, v13}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v3

    if-nez v3, :cond_10

    .line 129
    const-string v3, "length"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    instance-of v3, v10, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_11

    .line 134
    :cond_10
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 135
    invoke-virtual {v3, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 136
    invoke-virtual {v1, v3, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 140
    :cond_11
    invoke-virtual {v11}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 141
    const-string v1, "no known slot \'"

    const-string v2, "\' in "

    .line 0
    invoke-static {v1, v9, v2}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v11, v2, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_12
    :goto_2
    return-object v0
.end method

.method public static validateNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4

    .line 250
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 251
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 252
    check-cast p3, Lgnu/kawa/functions/NamedPart;

    .line 253
    iget-char v1, p3, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return-object p0

    .line 256
    :cond_0
    iget-object v1, p3, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    .line 257
    new-array v3, v3, [Lgnu/expr/Expression;

    .line 258
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    aput-object v1, v3, v2

    .line 260
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 262
    aget-object v0, v0, v2

    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object p3, p3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v1, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p3

    aput-object p3, v3, v2

    .line 264
    sget-object p3, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    goto :goto_0

    .line 268
    :cond_1
    iget-object p3, p3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    aput-object p3, v3, v2

    .line 269
    sget-object p3, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    .line 271
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p3, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 272
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 273
    invoke-virtual {p1, v0, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static validateNamedPartSetter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 5

    .line 281
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 282
    check-cast p3, Lgnu/kawa/functions/NamedPartSetter;

    invoke-virtual {p3}, Lgnu/kawa/functions/NamedPartSetter;->getGetter()Lgnu/mapping/Procedure;

    move-result-object p3

    check-cast p3, Lgnu/kawa/functions/NamedPart;

    .line 283
    iget-char v0, p3, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 285
    new-array v0, v0, [Lgnu/expr/Expression;

    .line 286
    iget-object v1, p3, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    aput-object v1, v0, v2

    .line 287
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 289
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 291
    iget-object p3, p3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p3

    aput-object p3, v0, v3

    .line 292
    sget-object p3, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 296
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    aget-object v1, v1, v3

    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object p3, p3, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v2, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p3

    aput-object p3, v0, v3

    .line 298
    sget-object p3, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 302
    :goto_0
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 303
    invoke-virtual {v1, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 304
    invoke-virtual {p1, v1, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static validateSetNamedInstancePart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4

    .line 355
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 356
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p0

    .line 357
    check-cast p3, Lgnu/kawa/functions/SetNamedInstancePart;

    iget-object p3, p3, Lgnu/kawa/functions/SetNamedInstancePart;->pname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 358
    aget-object v1, p0, v0

    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, p3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 p3, 0x1

    aget-object p0, p0, p3

    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v1, v3, v0

    aput-object v2, v3, p3

    const/4 p3, 0x2

    aput-object p0, v3, p3

    .line 360
    new-instance p0, Lgnu/expr/ApplyExp;

    sget-object p3, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {p0, p3, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p1, p0, p2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static validateSetNamedPart(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 3

    .line 148
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 149
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 150
    array-length p3, p2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    const/4 p3, 0x1

    aget-object p3, p2, p3

    instance-of v0, p3, Lgnu/expr/QuoteExp;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 152
    aget-object v0, p2, v0

    .line 153
    check-cast p3, Lgnu/expr/QuoteExp;

    invoke-virtual {p3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 154
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 157
    invoke-virtual {v2, v0}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 158
    iget-object v2, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 162
    :goto_0
    instance-of p1, v0, Lgnu/bytecode/ClassType;

    if-eqz p1, :cond_2

    .line 164
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p3, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {p1, p3, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_1

    .line 166
    :cond_2
    instance-of p1, v1, Lgnu/bytecode/ClassType;

    if-eqz p1, :cond_3

    .line 168
    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {v1, p3, v2}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 173
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p3, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {p1, p3, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_1

    :cond_3
    move-object p1, p0

    :goto_1
    if-eq p1, p0, :cond_4

    .line 177
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 178
    :cond_4
    sget-object p0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, p0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p1

    :cond_5
    :goto_2
    return-object p0
.end method
