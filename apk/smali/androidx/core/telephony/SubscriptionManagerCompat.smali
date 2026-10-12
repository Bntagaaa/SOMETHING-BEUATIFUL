.class public Landroidx/core/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/telephony/SubscriptionManagerCompat$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlotIndex(I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 48
    invoke-static {p0}, Landroidx/core/telephony/SubscriptionManagerCompat$a;->a(I)I

    move-result p0

    return p0

    .line 51
    :cond_1
    :try_start_0
    sget-object v4, Landroidx/core/telephony/SubscriptionManagerCompat;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    const/16 v4, 0x1a

    .line 52
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-lt v3, v4, :cond_2

    .line 53
    :try_start_1
    invoke-static {}, Landroidx/core/content/a;->c()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSlotIndex"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/telephony/SubscriptionManagerCompat;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Landroidx/core/content/a;->c()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSlotId"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/telephony/SubscriptionManagerCompat;->a:Ljava/lang/reflect/Method;

    .line 59
    :goto_0
    sget-object v3, Landroidx/core/telephony/SubscriptionManagerCompat;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 62
    :cond_3
    sget-object v3, Landroidx/core/telephony/SubscriptionManagerCompat;->a:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const/4 p0, 0x0

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    :cond_4
    :goto_1
    return v2
.end method
