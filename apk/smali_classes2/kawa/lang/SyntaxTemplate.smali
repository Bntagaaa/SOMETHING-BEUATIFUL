.class public Lkawa/lang/SyntaxTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BUILD_CONS:I = 0x1

.field static final BUILD_DOTS:I = 0x5

.field static final BUILD_LIST1:I = 0x8

.field static final BUILD_LITERAL:I = 0x4

.field static final BUILD_MISC:I = 0x0

.field static final BUILD_NIL:I = 0x10

.field static final BUILD_SYNTAX:I = 0x18

.field static final BUILD_VAR:I = 0x2

.field static final BUILD_VAR_CAR:I = 0x3

.field static final BUILD_VECTOR:I = 0x28

.field static final BUILD_WIDE:I = 0x7

.field static final dots3:Ljava/lang/String; = "..."


# instance fields
.field literal_values:[Ljava/lang/Object;

.field max_nesting:I

.field patternNesting:Ljava/lang/String;

.field template_program:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 10

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    .line 164
    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 169
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    .line 173
    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 176
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, v1, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 177
    invoke-virtual {v6, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 159
    iput p4, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    return-void
.end method

.method private get_count(Ljava/lang/Object;I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 377
    check-cast p1, [Ljava/lang/Object;

    aget v1, p3, v0

    aget-object p1, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .line 379
    array-length p1, p1

    return p1
.end method

.method public static indexOf(Ljava/util/Vector;Ljava/lang/Object;)I
    .locals 3

    .line 364
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I
    .locals 19

    move-object/from16 v3, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    .line 218
    :goto_0
    instance-of v0, v9, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 220
    move-object v2, v9

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 221
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 224
    :cond_0
    instance-of v0, v9, Lgnu/lists/Pair;

    const/4 v10, -0x2

    if-nez v0, :cond_1

    instance-of v1, v9, Lgnu/lists/FVector;

    if-eqz v1, :cond_3

    .line 226
    :cond_1
    move-object/from16 v1, p6

    check-cast v1, Ljava/util/IdentityHashMap;

    .line 227
    invoke-virtual {v1, v9}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    const-string v0, "self-referential (cyclic) syntax template"

    invoke-virtual {v8, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v10

    .line 233
    :cond_2
    invoke-virtual {v1, v9, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v12, 0x8

    const/4 v13, -0x1

    .line 238
    const-string v14, "..."

    if-eqz v0, :cond_f

    .line 240
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .line 243
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-virtual {v8, v1, v14}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 249
    instance-of v5, v4, Lgnu/lists/Pair;

    if-eqz v5, :cond_4

    .line 251
    check-cast v4, Lgnu/lists/Pair;

    .line 252
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_4

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move-object v9, v14

    const/16 p1, -0x2

    const/16 v18, 0x8

    goto/16 :goto_7

    .line 260
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 263
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 267
    :goto_1
    instance-of v5, v0, Lgnu/lists/Pair;

    const/4 v6, 0x5

    if-eqz v5, :cond_5

    .line 269
    move-object v5, v0

    check-cast v5, Lgnu/lists/Pair;

    .line 270
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7, v14}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 273
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 274
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    add-int v4, p4, v16

    const/4 v7, 0x0

    move-object/from16 v6, p6

    move-object v11, v0

    move v10, v5

    const/16 p1, -0x2

    const/16 p2, 0x3

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    .line 276
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v1

    .line 280
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v11, v0, :cond_7

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v15

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    .line 283
    invoke-virtual {v3, v15, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move v12, v1

    move-object v1, v11

    const/16 v18, 0x8

    move v11, v4

    move/from16 v4, p4

    .line 285
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move v12, v1

    move v11, v4

    const/16 v18, 0x8

    const/4 v1, -0x2

    :goto_3
    if-lez v16, :cond_9

    if-gez v12, :cond_8

    .line 292
    const-string v2, "... follows template with no suitably-nested pattern variable"

    invoke-virtual {v8, v2}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_8
    :goto_4
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_9

    shl-int/lit8 v2, v12, 0x3

    add-int/lit8 v2, v2, 0x5

    int-to-char v2, v2

    add-int v4, v15, v16

    add-int/lit8 v4, v4, 0x1

    .line 296
    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 298
    iget v2, v0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    if-lt v11, v2, :cond_8

    .line 299
    iput v11, v0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    goto :goto_4

    :cond_9
    if-ltz v12, :cond_a

    return v12

    :cond_a
    if-ltz v1, :cond_b

    return v1

    :cond_b
    if-eq v12, v13, :cond_e

    if-ne v1, v13, :cond_c

    goto :goto_5

    :cond_c
    if-eqz p7, :cond_d

    return p1

    .line 313
    :cond_d
    invoke-virtual {v5, v10}, Ljava/util/Vector;->setSize(I)V

    .line 314
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_7

    :cond_e
    :goto_5
    return v13

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v5, p5

    const/16 p1, -0x2

    const/16 p2, 0x3

    const/16 v18, 0x8

    .line 316
    instance-of v1, v9, Lgnu/lists/FVector;

    if-eqz v1, :cond_10

    const/16 v1, 0x28

    .line 318
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    check-cast v9, Lgnu/lists/FVector;

    invoke-static {v9}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    const/4 v7, 0x1

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v1

    return v1

    :cond_10
    move/from16 v4, p4

    .line 323
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v1, :cond_11

    const/16 v1, 0x10

    .line 325
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p1

    .line 328
    :cond_11
    instance-of v1, v9, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_15

    if-eqz v8, :cond_15

    iget-object v1, v8, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v1, :cond_15

    .line 331
    iget-object v1, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-static {v1, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_15

    .line 334
    iget-object v2, v0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_12

    const/4 v11, 0x3

    goto :goto_6

    :cond_12
    const/4 v11, 0x2

    :goto_6
    shr-int/lit8 v2, v2, 0x1

    if-le v2, v4, :cond_13

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "inconsistent ... nesting of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_13
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v11

    int-to-char v5, v5

    .line 342
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v2, v4, :cond_14

    return v1

    :cond_14
    return v13

    .line 347
    :cond_15
    :goto_7
    invoke-static {v5, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_16

    .line 350
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 351
    invoke-virtual {v5, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    :cond_16
    instance-of v2, v9, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_17

    .line 354
    invoke-virtual {v8}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lkawa/lang/Translator;->noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 355
    :cond_17
    instance-of v2, v9, Lkawa/lang/SyntaxForm;

    if-nez v2, :cond_18

    if-eq v9, v14, :cond_18

    const/16 v2, 0x18

    .line 356
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_18
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 357
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v9, v14, :cond_19

    return v13

    :cond_19
    return p1
.end method

.method public execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 12

    .line 500
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0xd

    .line 509
    iget-object v1, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v5, p1, 0x1

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 512
    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 515
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object p1

    :cond_2
    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 518
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    .line 519
    sget-object p2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, p2, :cond_3

    return-object p1

    :cond_3
    move-object/from16 v10, p6

    invoke-static {p1, v10}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    move-object/from16 v10, p6

    const/4 v2, 0x3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x0

    move-object v11, v1

    :goto_1
    add-int/lit8 v5, p1, 0x1

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 528
    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object p1

    if-nez v1, :cond_5

    move-object v11, p1

    goto :goto_2

    .line 533
    :cond_5
    invoke-virtual {v1, p1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 534
    :goto_2
    instance-of v6, p1, Lgnu/lists/Pair;

    if-eqz v6, :cond_6

    .line 536
    move-object v1, p1

    check-cast v1, Lgnu/lists/Pair;

    .line 537
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    shr-int/lit8 p1, v0, 0x3

    add-int/2addr v5, p1

    .line 540
    iget-object p1, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 p1, v0, 0x7

    if-eq p1, v3, :cond_8

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 544
    invoke-virtual/range {v4 .. v10}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_7

    return-object p1

    .line 548
    :cond_7
    invoke-virtual {v1, p1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    return-object v11

    :cond_8
    move-object/from16 v10, p6

    move p1, v5

    goto :goto_1

    :cond_9
    const/16 v4, 0x28

    if-ne v0, v4, :cond_a

    add-int/lit8 v1, p1, 0x1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 553
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    .line 554
    new-instance p2, Lgnu/lists/FVector;

    check-cast p1, Lgnu/lists/LList;

    invoke-direct {p2, p1}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    return-object p2

    :cond_a
    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    shr-int/lit8 p1, v0, 0x3

    .line 563
    iget-object p2, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1

    :cond_b
    and-int/lit8 v3, v0, 0x6

    const/4 v5, 0x2

    if-ne v3, v5, :cond_d

    shr-int/lit8 p1, v0, 0x3

    move-object/from16 v8, p4

    .line 567
    invoke-virtual {p0, p1, p2, v8}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p1

    if-ne v1, v2, :cond_c

    .line 569
    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    :cond_c
    return-object p1

    .line 573
    :cond_d
    new-instance p2, Ljava/lang/Error;

    const-string v1, "unknown template code: "

    const-string v2, " at "

    .line 0
    invoke-static {v0, p1, v1, v2}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8

    .line 408
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkawa/lang/Translator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8

    .line 431
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;
    .locals 10

    .line 453
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0xd

    .line 455
    iget-object v2, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    shr-int/lit8 p1, v0, 0x3

    .line 458
    invoke-virtual {p0, p1, p2, p4}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 459
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p1, p2, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    shr-int/lit8 p1, v0, 0x3

    .line 464
    aget-object p1, p2, p1

    .line 465
    invoke-direct {p0, p1, p3, p4}, Lkawa/lang/SyntaxTemplate;->get_count(Ljava/lang/Object;I[I)I

    move-result p1

    .line 466
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, p1, :cond_4

    .line 471
    aput v9, p4, p3

    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 472
    invoke-virtual/range {v2 .. v8}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v5

    if-nez v1, :cond_2

    move-object v0, v5

    goto :goto_2

    .line 477
    :cond_2
    invoke-virtual {v1, v5}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 480
    :goto_2
    instance-of v2, v5, Lgnu/lists/Pair;

    if-eqz v2, :cond_3

    .line 482
    move-object v1, v5

    check-cast v1, Lgnu/lists/Pair;

    .line 483
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lgnu/lists/LList;

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 488
    :cond_5
    invoke-virtual/range {p0 .. p6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    .line 489
    new-instance p2, Lgnu/lists/Pair;

    sget-object p3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p2, p1, p3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 2

    .line 436
    aget-object p2, p2, p1

    .line 437
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 441
    check-cast p2, [Ljava/lang/Object;

    aget v1, p3, v0

    aget-object p2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 591
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 592
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    iput p1, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
