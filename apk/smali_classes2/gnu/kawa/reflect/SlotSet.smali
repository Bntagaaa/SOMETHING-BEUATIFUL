.class public Lgnu/kawa/reflect/SlotSet;
.super Lgnu/mapping/Procedure3;
.source "SourceFile"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

.field static final type1Array:[Lgnu/bytecode/Type;


# instance fields
.field isStatic:Z

.field returnSelf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field!"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-static-field!"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field-return-object!"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    .line 21
    iput-boolean v3, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    .line 132
    new-array v0, v3, [Lgnu/bytecode/Type;

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure3;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 27
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.reflect.CompileReflect:validateApplySlotSet"

    invoke-virtual {p0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 48
    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, p2, Lgnu/lists/FString;

    if-nez v3, :cond_1

    instance-of v3, p2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    move-object p0, p2

    check-cast p0, Lgnu/bytecode/Member;

    invoke-interface {p0}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, p0

    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_2

    .line 53
    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_1
    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    .line 61
    :goto_2
    :try_start_0
    instance-of v5, p2, Lgnu/bytecode/Field;

    if-eqz v5, :cond_3

    move-object v5, p2

    check-cast v5, Lgnu/bytecode/Field;

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 64
    :goto_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 65
    invoke-virtual {v2, v6, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v5, 0x1

    goto :goto_4

    :catch_1
    const/4 v5, 0x0

    .line 82
    :goto_4
    :try_start_1
    instance-of p2, p2, Lgnu/bytecode/Method;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    const-string v6, "set"

    if-eqz p2, :cond_4

    goto :goto_5

    :cond_4
    :try_start_2
    invoke-static {v6, v3}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    if-eqz p2, :cond_5

    .line 85
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_5

    const/4 p2, 0x0

    goto :goto_6

    :catch_2
    nop

    goto :goto_b

    :cond_5
    :goto_6
    const/4 v6, 0x3

    .line 89
    const-string v7, "get"

    if-eqz p2, :cond_6

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :catch_3
    nop

    goto :goto_8

    :cond_6
    invoke-static {v7, v3}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    :goto_7
    sget-object v8, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    .line 93
    :goto_8
    const-string v7, "is"

    if-eqz p2, :cond_7

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :cond_7
    invoke-static {v7, v3}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    :goto_9
    sget-object v6, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v4, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 99
    :goto_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    new-array v6, v1, [Ljava/lang/Class;

    aput-object p2, v6, v0

    .line 100
    invoke-virtual {v4, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 103
    aget-object p2, v6, v0

    invoke-virtual {v2, p2, p3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    .line 104
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_4
    nop

    goto :goto_c

    :goto_b
    move v1, v5

    :goto_c
    if-eqz v1, :cond_8

    .line 120
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "illegal access for field "

    .line 0
    invoke-static {p1, v3}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no such field "

    const-string p2, " in "

    .line 0
    invoke-static {p1, v3, p2}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 122
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V
    .locals 9

    .line 158
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 159
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 160
    instance-of v1, p0, Lgnu/kawa/reflect/SlotSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lgnu/kawa/reflect/SlotSet;

    iget-boolean v1, v1, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_0
    instance-of v4, p3, Lgnu/bytecode/Field;

    const/16 v5, 0x27

    const-string v6, "\' using `"

    const/16 v7, 0x65

    if-eqz v4, :cond_3

    .line 164
    check-cast p3, Lgnu/bytecode/Field;

    .line 165
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v2

    .line 166
    invoke-virtual {p3}, Lgnu/bytecode/Location;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cannot access non-static field `"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lgnu/bytecode/Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/PropertySet;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v7, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 170
    :cond_1
    invoke-static {v0}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-eqz v2, :cond_2

    .line 172
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    return-void

    .line 174
    :cond_2
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    return-void

    .line 177
    :cond_3
    instance-of v4, p3, Lgnu/bytecode/Method;

    if-eqz v4, :cond_6

    .line 179
    check-cast p3, Lgnu/bytecode/Method;

    .line 180
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    if-eqz v1, :cond_4

    if-nez v4, :cond_4

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "cannot call non-static getter method `"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/PropertySet;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v7, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 185
    :cond_4
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object p0

    .line 186
    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p0

    invoke-static {p0}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p0

    invoke-virtual {p2, p4, p0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-eqz v4, :cond_5

    .line 188
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 191
    :goto_1
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result p0

    if-nez p0, :cond_6

    .line 192
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    :cond_6
    return-void
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 2

    .line 137
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 142
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 143
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 147
    :cond_1
    const-string p2, "set"

    invoke-static {p2, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object p2, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 128
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iget-boolean p2, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12

    .line 199
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 200
    array-length v1, v0

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    if-ge v1, v4, :cond_0

    .line 203
    const-string p1, "too few"

    goto :goto_0

    :cond_0
    const-string p1, "too many"

    .line 204
    :goto_0
    const-string v0, " arguments to `"

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lgnu/mapping/PropertySet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 205
    invoke-virtual {p2, v3, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 208
    aget-object v4, v0, v1

    const/4 v5, 0x1

    .line 209
    aget-object v6, v0, v5

    const/4 v7, 0x2

    .line 210
    aget-object v8, v0, v7

    .line 211
    iget-boolean v8, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v8, :cond_2

    invoke-static {v4}, Lkawa/standard/Scheme;->exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 214
    :goto_1
    instance-of v8, v4, Lgnu/bytecode/ObjectType;

    if-eqz v8, :cond_d

    instance-of v8, v6, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_d

    .line 216
    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 217
    move-object v8, v4

    check-cast v8, Lgnu/bytecode/ObjectType;

    .line 219
    iget-object v9, p2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, p2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 221
    :goto_2
    instance-of v10, v6, Ljava/lang/String;

    const-string v11, "\' in "

    if-nez v10, :cond_6

    instance-of v10, v6, Lgnu/lists/FString;

    if-nez v10, :cond_6

    instance-of v10, v6, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_4

    goto :goto_3

    .line 231
    :cond_4
    instance-of v4, v6, Lgnu/bytecode/Member;

    if-eqz v4, :cond_5

    .line 235
    move-object v3, v6

    check-cast v3, Lgnu/bytecode/Member;

    .line 236
    invoke-interface {v3}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v3

    goto :goto_4

    .line 225
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v8, v3, v9}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v6

    if-nez v6, :cond_7

    .line 227
    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v4, v10, :cond_7

    invoke-virtual {p2}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 229
    const-string v4, "no slot `"

    .line 0
    invoke-static {v4, v3, v11}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 229
    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x77

    invoke-virtual {p2, v10, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_7
    move-object v4, v3

    move-object v3, v6

    :goto_4
    if-eqz v3, :cond_d

    .line 243
    invoke-interface {v3}, Lgnu/bytecode/Member;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eqz v9, :cond_9

    .line 245
    invoke-virtual {v9, v3, v8}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 246
    const-string p1, "slot \'"

    .line 0
    invoke-static {p1, v4, v11}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 246
    invoke-interface {v3}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not accessible here"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 249
    :cond_9
    aget-object p1, v0, v1

    if-eqz v5, :cond_a

    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_6

    :cond_a
    invoke-static {v8}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    :goto_6
    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 252
    iget-boolean p1, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz p1, :cond_b

    .line 253
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    invoke-virtual {v8}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 254
    :cond_b
    aget-object p1, v0, v7

    invoke-static {p0, v8, p1, v3, p2}, Lgnu/kawa/reflect/SlotSet;->compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V

    .line 255
    iget-boolean p1, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz p1, :cond_c

    .line 256
    invoke-virtual {p3, p2, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 258
    :cond_c
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, p1, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    return-void

    .line 262
    :cond_d
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method
