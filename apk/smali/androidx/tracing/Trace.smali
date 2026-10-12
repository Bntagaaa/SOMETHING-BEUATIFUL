.class public final Landroidx/tracing/Trace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 229
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 231
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_0

    .line 232
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " via reflection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Trace"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static beginAsyncSection(Ljava/lang/String;I)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 111
    :try_start_0
    sget-object v4, Landroidx/tracing/Trace;->c:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 112
    invoke-static {p0, p1}, Landroidx/tracing/b;->beginAsyncSection(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 177
    :catch_0
    :cond_0
    const-string v4, "asyncTraceBegin"

    .line 179
    :try_start_1
    sget-object v5, Landroidx/tracing/Trace;->c:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 180
    const-class v5, Landroid/os/Trace;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroidx/tracing/Trace;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    sget-object v5, Landroidx/tracing/Trace;->c:Ljava/lang/reflect/Method;

    sget-wide v6, Landroidx/tracing/Trace;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 188
    :goto_1
    invoke-static {v4, p0}, Landroidx/tracing/Trace;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {p0}, Landroidx/tracing/a;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endAsyncSection(Ljava/lang/String;I)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 131
    :try_start_0
    sget-object v4, Landroidx/tracing/Trace;->d:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 132
    invoke-static {p0, p1}, Landroidx/tracing/b;->endAsyncSection(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 194
    :catch_0
    :cond_0
    const-string v4, "asyncTraceEnd"

    .line 196
    :try_start_1
    sget-object v5, Landroidx/tracing/Trace;->d:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 197
    const-class v5, Landroid/os/Trace;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroidx/tracing/Trace;->d:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 203
    :cond_1
    :goto_0
    sget-object v5, Landroidx/tracing/Trace;->d:Ljava/lang/reflect/Method;

    sget-wide v6, Landroidx/tracing/Trace;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 205
    :goto_1
    invoke-static {v4, p0}, Landroidx/tracing/Trace;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 94
    invoke-static {}, Landroidx/tracing/a;->endSection()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    :try_start_0
    sget-object v2, Landroidx/tracing/Trace;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Landroidx/core/view/accessibility/d;->t()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 159
    :catch_0
    :cond_0
    const-string v2, "isTagEnabled"

    const-class v3, Landroid/os/Trace;

    .line 161
    :try_start_1
    sget-object v4, Landroidx/tracing/Trace;->b:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 162
    const-string v4, "TRACE_TAG_APP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    sput-wide v6, Landroidx/tracing/Trace;->a:J

    .line 164
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v1

    .line 165
    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/tracing/Trace;->b:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    sget-object v3, Landroidx/tracing/Trace;->b:Ljava/lang/reflect/Method;

    sget-wide v6, Landroidx/tracing/Trace;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 169
    :goto_1
    invoke-static {v2, v0}, Landroidx/tracing/Trace;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return v1
.end method

.method public static setCounter(Ljava/lang/String;I)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 149
    :try_start_0
    sget-object v4, Landroidx/tracing/Trace;->e:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 150
    invoke-static {p0, p1}, Landroidx/tracing/b;->setCounter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 211
    :catch_0
    :cond_0
    const-string v4, "traceCounter"

    .line 213
    :try_start_1
    sget-object v5, Landroidx/tracing/Trace;->e:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 214
    const-class v5, Landroid/os/Trace;

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroidx/tracing/Trace;->e:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 221
    :cond_1
    :goto_0
    sget-object v5, Landroidx/tracing/Trace;->e:Ljava/lang/reflect/Method;

    sget-wide v6, Landroidx/tracing/Trace;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    aput-object p0, v3, v1

    aput-object p1, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 223
    :goto_1
    invoke-static {v4, p0}, Landroidx/tracing/Trace;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
