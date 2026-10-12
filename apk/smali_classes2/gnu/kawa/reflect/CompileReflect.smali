.class public Lgnu/kawa/reflect/CompileReflect;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I
    .locals 2

    .line 16
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 25
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;
    .locals 4

    .line 38
    invoke-virtual {p2}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 41
    array-length v2, v1

    if-le v2, p1, :cond_0

    .line 43
    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {v0, p2}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 47
    array-length p2, v1

    new-array p2, p2, [Lgnu/expr/Expression;

    .line 48
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v1, p2, p1

    .line 50
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 51
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static validateApplyInstanceOf(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1

    .line 60
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    const/4 p2, 0x1

    .line 61
    invoke-static {p0, p2, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 63
    array-length p3, p1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    const/4 p3, 0x0

    .line 65
    aget-object p3, p1, p3

    .line 66
    aget-object p1, p1, p2

    .line 67
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_5

    .line 69
    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 70
    instance-of v0, p1, Lgnu/bytecode/Type;

    if-eqz v0, :cond_5

    .line 72
    check-cast p1, Lgnu/bytecode/Type;

    .line 73
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lgnu/bytecode/PrimType;

    invoke-virtual {p1}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 75
    :cond_0
    instance-of v0, p3, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_2

    .line 76
    check-cast p3, Lgnu/expr/QuoteExp;

    invoke-virtual {p3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    return-object p0

    :cond_1
    sget-object p0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 78
    :cond_2
    invoke-virtual {p3}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    invoke-virtual {p1, p3}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    if-eq p1, p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, -0x3

    if-ne p1, p2, :cond_5

    .line 84
    sget-object p0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    return-object p0

    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :cond_5
    return-object p0
.end method

.method public static validateApplySlotGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, 0x2

    .line 95
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 98
    move-object/from16 v5, p3

    check-cast v5, Lgnu/kawa/reflect/SlotGet;

    .line 99
    iget-boolean v5, v5, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 101
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    const/4 v7, 0x0

    .line 102
    aget-object v8, v6, v7

    const/4 v9, 0x1

    .line 103
    aget-object v10, v6, v9

    .line 104
    invoke-virtual {v10}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v11

    .line 106
    instance-of v12, v11, Ljava/lang/String;

    if-nez v12, :cond_0

    instance-of v12, v11, Lgnu/lists/FString;

    if-nez v12, :cond_0

    instance-of v12, v11, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v5, :cond_5

    .line 114
    invoke-virtual {v4, v8}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v12

    .line 115
    invoke-static {v12, v3}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v13

    if-gez v13, :cond_2

    :cond_1
    return-object v0

    .line 118
    :cond_2
    const-string v14, "class"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    if-lez v13, :cond_3

    .line 121
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 122
    :cond_3
    sget-object v0, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v1, "getReflectClass"

    invoke-virtual {v0, v1, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 124
    new-instance v1, Lgnu/expr/ApplyExp;

    new-array v2, v9, [Lgnu/expr/Expression;

    aput-object v8, v2, v7

    invoke-direct {v1, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v1

    :cond_4
    if-eqz v12, :cond_6

    .line 128
    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-direct {v13, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    new-array v14, v2, [Lgnu/expr/Expression;

    aput-object v13, v14, v7

    aput-object v10, v14, v9

    .line 130
    new-instance v10, Lgnu/expr/ApplyExp;

    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    invoke-direct {v10, v13, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 131
    invoke-virtual {v10, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-object v0, v10

    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 137
    :cond_6
    :goto_0
    instance-of v10, v12, Lgnu/bytecode/ArrayType;

    if-eqz v10, :cond_7

    return-object v0

    .line 139
    :cond_7
    instance-of v10, v12, Lgnu/bytecode/ObjectType;

    if-eqz v10, :cond_f

    .line 141
    move-object v10, v12

    check-cast v10, Lgnu/bytecode/ObjectType;

    .line 142
    iget-object v13, v3, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v13, :cond_8

    goto :goto_1

    :cond_8
    iget-object v13, v3, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 144
    :goto_1
    invoke-static {v10, v11, v13}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v14

    .line 145
    instance-of v15, v14, Lgnu/bytecode/Field;

    const/16 p2, 0x8

    const-string v1, " is not accessible here"

    const/16 v16, 0x0

    const/16 v7, 0x27

    const/16 v17, 0x1

    const-string v9, "\' using `"

    if-eqz v15, :cond_b

    .line 147
    move-object v15, v14

    check-cast v15, Lgnu/bytecode/Field;

    .line 148
    invoke-virtual {v15}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v18

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    goto :goto_2

    :cond_9
    const/16 v18, 0x0

    :goto_2
    if-eqz v5, :cond_a

    if-nez v18, :cond_a

    .line 151
    new-instance v0, Lgnu/expr/ErrorExp;

    const-string v1, "cannot access non-static field `"

    .line 0
    invoke-static {v1, v11, v9}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/PropertySet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v0

    :cond_a
    if-eqz v13, :cond_d

    .line 153
    invoke-virtual {v13, v15, v10}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 155
    new-instance v0, Lgnu/expr/ErrorExp;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "field "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v0

    .line 159
    :cond_b
    instance-of v15, v14, Lgnu/bytecode/Method;

    if-eqz v15, :cond_d

    .line 161
    move-object v15, v14

    check-cast v15, Lgnu/bytecode/Method;

    .line 162
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 163
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v7

    .line 164
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v19

    if-eqz v5, :cond_c

    if-nez v19, :cond_c

    .line 166
    new-instance v0, Lgnu/expr/ErrorExp;

    const-string v1, "cannot call non-static getter method `"

    .line 0
    invoke-static {v1, v11, v9}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/PropertySet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v0

    :cond_c
    if-eqz v13, :cond_d

    .line 168
    invoke-virtual {v13, v2, v10, v7}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 169
    new-instance v0, Lgnu/expr/ErrorExp;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "method "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v0

    :cond_d
    if-eqz v14, :cond_e

    .line 174
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object v8, v2, v16

    aput-object v1, v2, v17

    .line 176
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 177
    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    return-object v1

    .line 180
    :cond_e
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v12, v1, :cond_10

    invoke-virtual {v3}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 181
    const-string v1, "no slot `"

    const-string v2, "\' in "

    .line 0
    invoke-static {v1, v11, v2}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v3, v2, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_3

    :cond_f
    const/16 p2, 0x8

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 184
    :cond_10
    :goto_3
    invoke-static {v11}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "get"

    invoke-static {v2, v11}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "is"

    invoke-static {v3, v11}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v8, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const-string v9, "gnu.kawa.reflect.SlotGet"

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    const-string v10, "getSlotValue"

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    if-eqz v5, :cond_11

    sget-object v5, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_4

    :cond_11
    sget-object v5, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_4
    aget-object v6, v6, v16

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v11

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    const/16 v12, 0x9

    new-array v12, v12, [Lgnu/expr/Expression;

    aput-object v9, v12, v16

    aput-object v10, v12, v17

    const/16 v18, 0x2

    aput-object v5, v12, v18

    const/4 v5, 0x3

    aput-object v6, v12, v5

    const/4 v5, 0x4

    aput-object v11, v12, v5

    const/4 v5, 0x5

    aput-object v1, v12, v5

    const/4 v1, 0x6

    aput-object v2, v12, v1

    const/4 v1, 0x7

    aput-object v3, v12, v1

    aput-object v4, v12, p2

    invoke-direct {v7, v8, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 202
    invoke-virtual {v7, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 203
    invoke-virtual {v1, v7, v0}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static validateApplySlotSet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 210
    check-cast p3, Lgnu/kawa/reflect/SlotSet;

    .line 215
    iget-boolean p2, p3, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p2

    iget-boolean p2, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz p2, :cond_0

    .line 217
    invoke-static {p0, v0, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 218
    :cond_0
    iget-boolean p1, p3, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object p0
.end method

.method public static validateApplyTypeSwitch(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 3

    .line 227
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 228
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x1

    .line 229
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 231
    aget-object v1, p2, v0

    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 233
    check-cast v1, Lgnu/expr/LambdaExp;

    .line 234
    invoke-virtual {v1, p3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 235
    iput-object p0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
