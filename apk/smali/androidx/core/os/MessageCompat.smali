.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$a;
    }
.end annotation


# static fields
.field public static a:Z = true

.field public static b:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 101
    invoke-static {p0}, Landroidx/core/os/MessageCompat$a;->a(Landroid/os/Message;)Z

    move-result p0

    return p0

    .line 103
    :cond_0
    sget-boolean v0, Landroidx/core/os/MessageCompat;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 107
    :try_start_0
    invoke-static {p0}, Landroidx/core/os/MessageCompat$a;->a(Landroid/os/Message;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 109
    :catch_0
    sput-boolean v1, Landroidx/core/os/MessageCompat;->b:Z

    :cond_1
    return v1
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 75
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$a;->b(Landroid/os/Message;Z)V

    return-void

    .line 78
    :cond_0
    sget-boolean v0, Landroidx/core/os/MessageCompat;->a:Z

    if-eqz v0, :cond_1

    .line 82
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$a;->b(Landroid/os/Message;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 84
    sput-boolean p0, Landroidx/core/os/MessageCompat;->a:Z

    :cond_1
    return-void
.end method
