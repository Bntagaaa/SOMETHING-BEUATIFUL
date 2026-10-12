.class public Lkawa/lang/SyntaxPattern;
.super Lkawa/lang/Pattern;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final MATCH_ANY:I = 0x3

.field static final MATCH_ANY_CAR:I = 0x7

.field static final MATCH_EQUALS:I = 0x2

.field static final MATCH_IGNORE:I = 0x18

.field static final MATCH_LENGTH:I = 0x6

.field static final MATCH_LREPEAT:I = 0x5

.field static final MATCH_MISC:I = 0x0

.field static final MATCH_NIL:I = 0x8

.field static final MATCH_PAIR:I = 0x4

.field static final MATCH_VECTOR:I = 0x10

.field static final MATCH_WIDE:I = 0x1


# instance fields
.field literals:[Ljava/lang/Object;

.field program:Ljava/lang/String;

.field varCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 6

    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 106
    iput-object p1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 108
    iput p3, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 9

    .line 121
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 122
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p4

    move-object v8, p5

    .line 123
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 126
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, v0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 127
    invoke-virtual {v5, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    iget-object p1, v8, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object p1, p1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    iput p1, v0, Lkawa/lang/SyntaxPattern;->varCount:I

    return-void
.end method

.method private static addInt(Ljava/lang/StringBuffer;I)V
    .locals 1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    shl-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, 0x1

    .line 409
    invoke-static {p0, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    :cond_0
    int-to-char p1, p1

    .line 410
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 632
    new-array p0, p0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 634
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public static getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 8

    .line 670
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 671
    invoke-static {p0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x65

    if-gez v0, :cond_0

    .line 674
    const-string v0, "missing or malformed literals list"

    invoke-virtual {p2, v1, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 677
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_4

    .line 680
    :goto_1
    instance-of v4, p0, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_1

    .line 682
    check-cast p0, Lkawa/lang/SyntaxForm;

    .line 683
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 685
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    .line 686
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 689
    instance-of v5, v4, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_2

    .line 692
    move-object v5, v4

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 696
    :goto_2
    instance-of v6, v5, Lgnu/mapping/Symbol;

    if-nez v6, :cond_3

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "non-symbol \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' in literals list"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 698
    :cond_3
    aput-object v4, v2, v3

    .line 699
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 701
    :cond_4
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v2
.end method

.method private static insertInt(ILjava/lang/StringBuffer;I)I
    .locals 1

    const v0, 0xffff

    if-le p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, 0x1

    .line 416
    invoke-static {p0, p1, v0}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v0

    add-int/2addr p0, v0

    :cond_0
    int-to-char p2, p2

    .line 417
    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z
    .locals 5

    const/4 v0, 0x0

    if-eq p0, p2, :cond_1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 641
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 649
    instance-of v4, p1, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_4

    .line 651
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 654
    :cond_3
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    .line 656
    instance-of p0, p3, Lgnu/expr/ModuleExp;

    if-nez p0, :cond_6

    .line 658
    invoke-virtual {p3, p2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 661
    :cond_5
    iget-object p3, p3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v3, v2, :cond_7

    return v1

    :cond_7
    return v0
.end method


# virtual methods
.method public disassemble()V
    .locals 4

    .line 158
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    iget-object v2, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V
    .locals 8

    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge p3, p4, :cond_8

    .line 175
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    and-int/lit8 v4, v3, 0x7

    shl-int/lit8 v2, v2, 0xd

    shr-int/lit8 v6, v3, 0x3

    or-int/2addr v2, v6

    .line 180
    const-string v6, "]"

    const/4 v7, 0x3

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 211
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - LENGTH "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pairs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const-string v2, "pure list"

    goto :goto_3

    :cond_1
    const-string v2, "impure list"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - LREPEAT["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v2, p3

    .line 205
    invoke-virtual {p0, p1, p2, p3, v2}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 207
    const-string p3, ": - repeat first var:"

    .line 0
    invoke-static {v2, v5, p3}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 207
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/2addr v3, v7

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": - repeast nested vars:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/2addr v3, v7

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v2

    goto/16 :goto_1

    .line 201
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - PAIR["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v7, :cond_2

    const-string v4, " - ANY["

    goto :goto_4

    :cond_2
    const-string v4, " - ANY_CAR["

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-ltz v2, :cond_3

    .line 195
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 198
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_1

    .line 186
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - EQUALS["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    if-eqz v3, :cond_4

    if-ltz v2, :cond_4

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 188
    aget-object v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_1

    .line 183
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - WIDE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 215
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[misc ch:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " n:8]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x8

    if-ne v3, v5, :cond_5

    .line 218
    const-string v2, " - NIL"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0x10

    if-ne v3, v5, :cond_6

    .line 223
    const-string v2, " - VECTOR"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/16 v5, 0x18

    if-ne v3, v5, :cond_7

    .line 228
    const-string v2, " - IGNORE"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 79
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v5, p5

    :goto_0
    const/4 v3, 0x0

    .line 450
    :goto_1
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 452
    move-object v5, v1

    check-cast v5, Lkawa/lang/SyntaxForm;

    .line 453
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 455
    :cond_0
    iget-object v7, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    move v8, v4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit8 v7, v2, 0x7

    shl-int/lit8 v3, v3, 0xd

    shr-int/lit8 v9, v2, 0x3

    or-int/2addr v9, v3

    const/16 v3, 0x8

    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_0

    .line 608
    :pswitch_0
    invoke-virtual {v0}, Lkawa/lang/SyntaxPattern;->disassemble()V

    .line 609
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unrecognized pattern opcode @pc:"

    .line 0
    invoke-static {v4, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :pswitch_1
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_1

    return v10

    :cond_1
    return v6

    :pswitch_2
    shr-int/lit8 v2, v9, 0x1

    move-object v3, v1

    const/4 v7, 0x0

    .line 483
    :goto_2
    instance-of v8, v3, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_2

    .line 484
    check-cast v3, Lkawa/lang/SyntaxForm;

    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_2
    if-ne v7, v2, :cond_5

    and-int/lit8 v2, v9, 0x1

    if-nez v2, :cond_3

    .line 487
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v2, :cond_4

    goto :goto_3

    :cond_3
    instance-of v2, v3, Lgnu/lists/Pair;

    if-eqz v2, :cond_4

    :goto_3
    return v6

    :cond_4
    move v2, v4

    goto :goto_0

    .line 491
    :cond_5
    instance-of v8, v3, Lgnu/lists/Pair;

    if-eqz v8, :cond_6

    .line 492
    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return v6

    :pswitch_3
    add-int/2addr v9, v4

    .line 511
    iget-object v2, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v8, v2, 0x3

    :goto_4
    and-int/lit8 v9, v2, 0x7

    if-ne v9, v10, :cond_7

    shl-int/lit8 v2, v8, 0xd

    .line 513
    iget-object v8, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v8, v7, 0x3

    or-int/2addr v8, v2

    move v2, v7

    move v7, v9

    goto :goto_4

    :cond_7
    add-int v8, v8, p3

    .line 515
    iget-object v9, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v7, v7, 0x3

    :goto_5
    and-int/lit8 v2, v2, 0x7

    if-ne v2, v10, :cond_8

    shl-int/lit8 v2, v7, 0xd

    .line 517
    iget-object v7, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v11, v7, 0x3

    or-int/2addr v2, v11

    move v11, v7

    move v7, v2

    move v2, v11

    move v11, v9

    goto :goto_5

    .line 519
    :cond_8
    iget-object v2, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_9

    move v11, v9

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto :goto_8

    :cond_9
    shr-int/lit8 v3, v2, 0x3

    :goto_6
    and-int/lit8 v2, v2, 0x7

    if-ne v2, v10, :cond_a

    shl-int/lit8 v2, v3, 0xd

    .line 530
    iget-object v3, v0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v9, v3, 0x3

    or-int/2addr v2, v9

    move v9, v3

    move v3, v2

    move v2, v9

    move v9, v11

    goto :goto_6

    :cond_a
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    const/4 v2, 0x1

    :goto_7
    shr-int/lit8 v3, v3, 0x1

    move v12, v3

    move v11, v9

    move v9, v2

    .line 535
    :goto_8
    invoke-static {v1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    rsub-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_9
    if-lt v2, v12, :cond_15

    if-eqz v9, :cond_d

    if-nez v3, :cond_d

    goto :goto_f

    :cond_d
    sub-int v13, v2, v12

    .line 548
    new-array v14, v7, [[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v7, :cond_e

    .line 551
    new-array v3, v13, [Ljava/lang/Object;

    aput-object v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_e
    const/4 v15, 0x0

    :goto_b
    if-ge v15, v13, :cond_12

    .line 554
    :goto_c
    instance-of v2, v1, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_f

    .line 556
    move-object v5, v1

    check-cast v5, Lkawa/lang/SyntaxForm;

    .line 557
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 559
    :cond_f
    check-cast v1, Lgnu/lists/Pair;

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 560
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v16

    if-nez v16, :cond_10

    return v6

    .line 562
    :cond_10
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v7, :cond_11

    .line 564
    aget-object v2, v14, v0

    add-int v3, v8, v0

    aget-object v3, p2, v3

    aput-object v3, v2, v15

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v7, :cond_13

    add-int v2, v8, v0

    .line 567
    aget-object v3, v14, v0

    aput-object v3, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_13
    if-nez v12, :cond_14

    if-eqz v9, :cond_14

    return v10

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v2, v11

    goto/16 :goto_1

    :cond_15
    :goto_f
    return v6

    .line 499
    :pswitch_4
    instance-of v0, v1, Lgnu/lists/Pair;

    if-nez v0, :cond_16

    return v6

    .line 501
    :cond_16
    check-cast v1, Lgnu/lists/Pair;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 502
    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v7

    if-nez v7, :cond_17

    return v6

    :cond_17
    add-int v2, v4, v9

    .line 506
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_5
    if-eqz v5, :cond_18

    .line 603
    invoke-static {v1, v5}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v1

    :cond_18
    add-int v2, p3, v9

    .line 604
    aput-object v1, p2, v2

    return v10

    .line 573
    :pswitch_6
    iget-object v2, v0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    aget-object v2, v2, v9

    .line 576
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    .line 577
    instance-of v4, v2, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_19

    .line 579
    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 580
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 581
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_10

    .line 586
    :cond_19
    invoke-virtual {v3}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v4

    .line 587
    instance-of v6, v4, Lkawa/lang/Macro;

    if-eqz v6, :cond_1a

    check-cast v4, Lkawa/lang/Macro;

    invoke-virtual {v4}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    if-eqz v8, :cond_1b

    .line 591
    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 592
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    .line 593
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v17

    goto :goto_11

    :cond_1b
    if-nez v5, :cond_1c

    .line 598
    invoke-virtual {v3}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    goto :goto_11

    :cond_1c
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    .line 600
    :goto_11
    invoke-static {v2, v4, v1, v3}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v1

    return v1

    :pswitch_7
    move v2, v4

    move v3, v9

    goto/16 :goto_1

    :pswitch_8
    if-ne v2, v3, :cond_1e

    .line 464
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_1d

    return v10

    :cond_1d
    return v6

    :cond_1e
    const/16 v3, 0x10

    if-ne v2, v3, :cond_20

    .line 467
    instance-of v2, v1, Lgnu/lists/FVector;

    if-nez v2, :cond_1f

    return v6

    .line 469
    :cond_1f
    check-cast v1, Lgnu/lists/FVector;

    invoke-static {v1}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v1

    return v1

    :cond_20
    const/16 v0, 0x18

    if-ne v2, v0, :cond_21

    return v10

    .line 475
    :cond_21
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unknwon pattern opcode"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 8

    .line 430
    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v3, v1, 0x3

    :goto_0
    const/4 v6, 0x7

    and-int/2addr v1, v6

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    shl-int/lit8 v1, v3, 0xd

    .line 432
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v3, v2, 0x3

    or-int/2addr v3, v1

    move v1, v2

    move v2, v6

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_2

    if-eqz p5, :cond_1

    .line 435
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-nez v1, :cond_1

    .line 436
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p5}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    add-int v2, p3, v3

    .line 437
    aput-object v1, p2, v2

    return v7

    .line 440
    :cond_2
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v1

    return v1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    .line 707
    const-string v0, "#<syntax-pattern>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 624
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 625
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 626
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    iput p1, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return-void
.end method

.method public translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V
    .locals 22

    move-object/from16 v3, p2

    move-object/from16 v9, p8

    .line 250
    iget-object v0, v9, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 251
    iget-object v10, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v1, p1

    move-object/from16 v7, p6

    move/from16 v2, p7

    .line 254
    :goto_0
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 256
    move-object v7, v1

    check-cast v7, Lkawa/lang/SyntaxForm;

    .line 257
    invoke-interface {v7}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 259
    :cond_0
    instance-of v4, v1, Lgnu/lists/Pair;

    const/16 v11, 0x8

    const/16 v5, 0x56

    const/16 v6, 0x50

    const/4 v13, 0x1

    if-eqz v4, :cond_e

    .line 261
    invoke-virtual {v9, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 264
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    const/4 v4, 0x4

    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    check-cast v1, Lgnu/lists/Pair;

    .line 268
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    move-object/from16 v16, v7

    .line 269
    :goto_1
    instance-of v8, v4, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_1

    .line 271
    move-object/from16 v16, v4

    check-cast v16, Lkawa/lang/SyntaxForm;

    .line 272
    invoke-interface/range {v16 .. v16}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 275
    :cond_1
    instance-of v8, v4, Lgnu/lists/Pair;

    if-eqz v8, :cond_3

    move-object v8, v4

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    const/16 p7, 0x3

    const-string v12, "..."

    invoke-virtual {v9, v8, v12}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 279
    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 280
    :goto_2
    instance-of v8, v4, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_2

    .line 282
    move-object/from16 v16, v4

    check-cast v16, Lkawa/lang/SyntaxForm;

    .line 283
    invoke-interface/range {v16 .. v16}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/16 v17, 0x1

    :goto_3
    move-object v12, v4

    goto :goto_4

    :cond_3
    const/16 p7, 0x3

    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 287
    :goto_4
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v18

    if-ne v2, v6, :cond_5

    const/4 v2, 0x0

    .line 290
    :cond_5
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    if-eqz v17, :cond_6

    add-int/lit8 v4, p4, 0x1

    goto :goto_5

    :cond_6
    move/from16 v4, p4

    :goto_5
    if-ne v2, v5, :cond_7

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v6, p5

    move/from16 v20, v2

    move v5, v4

    const/16 v19, 0x4

    move-object/from16 v4, p3

    move-object v2, v1

    move-object/from16 v1, p0

    goto :goto_7

    :cond_7
    const/16 v8, 0x50

    goto :goto_6

    :goto_7
    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    move-object v7, v6

    .line 294
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v1, v1, v18

    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x3

    if-eqz v17, :cond_8

    const/4 v5, 0x5

    const/16 v19, 0x5

    :cond_8
    or-int v2, v2, v19

    const v5, 0xffff

    if-le v2, v5, :cond_9

    shr-int/lit8 v5, v2, 0xd

    add-int/2addr v5, v13

    .line 298
    invoke-static {v15, v3, v5}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v5

    add-int/2addr v15, v5

    :cond_9
    int-to-char v2, v2

    .line 300
    invoke-virtual {v3, v15, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 302
    invoke-static {v12}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v2

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_a

    .line 305
    const-string v0, "cyclic pattern list"

    invoke-virtual {v9, v0}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v9, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    :cond_a
    if-eqz v17, :cond_d

    shl-int/lit8 v5, v18, 0x3

    .line 311
    :try_start_1
    invoke-static {v3, v5}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    shl-int/lit8 v1, v1, 0x3

    .line 312
    invoke-static {v3, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 313
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v1, :cond_b

    .line 315
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-virtual {v9, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    :cond_b
    if-ltz v2, :cond_c

    shl-int/lit8 v1, v2, 0x1

    goto :goto_8

    :cond_c
    neg-int v1, v2

    shl-int/2addr v1, v13

    sub-int/2addr v1, v13

    :goto_8
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x6

    .line 323
    :try_start_2
    invoke-static {v3, v1}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :cond_d
    invoke-virtual {v9, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v1, v12

    move-object/from16 v7, v16

    move/from16 v2, v20

    goto/16 :goto_0

    :goto_9
    invoke-virtual {v9, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0

    :cond_e
    move-object/from16 v4, p3

    move-object/from16 v16, v7

    const/16 p7, 0x3

    move-object/from16 v7, p5

    .line 335
    instance-of v8, v1, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_18

    .line 337
    array-length v5, v4

    :cond_f
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_14

    .line 339
    invoke-virtual {v9}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v8

    if-nez v16, :cond_10

    move-object v11, v8

    goto :goto_a

    .line 340
    :cond_10
    invoke-interface/range {v16 .. v16}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v11

    .line 342
    :goto_a
    aget-object v12, v4, v5

    .line 343
    instance-of v14, v12, Lkawa/lang/SyntaxForm;

    if-eqz v14, :cond_11

    .line 345
    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 347
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    .line 348
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v12

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    goto :goto_b

    .line 350
    :cond_11
    iget-object v14, v9, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    if-eqz v14, :cond_12

    .line 351
    invoke-virtual {v14}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v8

    .line 354
    :cond_12
    :goto_b
    invoke-static {v1, v11, v12, v8}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 357
    invoke-static {v7, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_13

    .line 360
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    .line 361
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_13
    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x2

    .line 363
    invoke-static {v3, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    return-void

    .line 367
    :cond_14
    invoke-virtual {v10, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "duplicated pattern variable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lgnu/expr/Compilation;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 369
    :cond_15
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v4

    .line 370
    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-ne v2, v6, :cond_16

    const/4 v8, 0x1

    goto :goto_c

    :cond_16
    const/4 v8, 0x0

    :goto_c
    shl-int/lit8 v2, p4, 0x1

    add-int/2addr v2, v8

    .line 373
    iget-object v5, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 376
    invoke-virtual {v9, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    shl-int/lit8 v0, v4, 0x3

    if-eqz v8, :cond_17

    const/4 v12, 0x7

    goto :goto_d

    :cond_17
    const/4 v12, 0x3

    :goto_d
    or-int/2addr v0, v12

    .line 377
    invoke-static {v3, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    return-void

    .line 380
    :cond_18
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_19

    .line 382
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 385
    :cond_19
    instance-of v2, v1, Lgnu/lists/FVector;

    if-eqz v2, :cond_1a

    const/16 v2, 0x10

    .line 387
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    check-cast v1, Lgnu/lists/FVector;

    invoke-static {v1}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object/from16 v7, v16

    const/16 v2, 0x56

    goto/16 :goto_0

    .line 394
    :cond_1a
    invoke-static {v7, v1}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1b

    .line 397
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    .line 398
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1b
    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x2

    .line 400
    invoke-static {v3, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public varCount()I
    .locals 1

    .line 75
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
