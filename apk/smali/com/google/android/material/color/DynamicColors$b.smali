.class Lcom/google/android/material/color/DynamicColors$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 7

    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/google/android/material/color/DynamicColors$b;->a:Ljava/lang/Long;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v3, "getLong"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ro.build.version.oneui"

    aput-object v4, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    iput-object v1, p0, Lcom/google/android/material/color/DynamicColors$b;->a:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v3, -0x1

    .line 66
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/color/DynamicColors$b;->a:Ljava/lang/Long;

    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/color/DynamicColors$b;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x9ca4

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
