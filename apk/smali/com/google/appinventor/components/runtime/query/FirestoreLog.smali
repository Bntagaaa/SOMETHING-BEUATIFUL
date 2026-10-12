.class public Lcom/google/appinventor/components/runtime/query/FirestoreLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _logLevel:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 51
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 52
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting log level to : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirestoreJDL"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "warning"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "error"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "debug"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "warn"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 23
    sget p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New logLevel unknown, leaving previous setting : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x6

    .line 16
    sput p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    goto :goto_1

    .line 13
    :pswitch_1
    sput v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    goto :goto_1

    :pswitch_2
    const/4 p0, 0x5

    .line 20
    sput p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    .line 27
    :goto_1
    sget p0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New logLevel : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x379286 -> :sswitch_3
        0x5b09653 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 41
    sget v0, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->_logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 42
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
