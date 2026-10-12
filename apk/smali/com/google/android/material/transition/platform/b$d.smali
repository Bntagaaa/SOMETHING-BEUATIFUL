.class Lcom/google/android/material/transition/platform/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/c;
    .locals 2

    .line 72
    invoke-static {p3, p2, p4, p2}, L_COROUTINE/a;->a(FFFF)F

    move-result p4

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1, p2, p4, p1}, Lcom/google/android/material/transition/platform/x;->e(IIFFF)I

    move-result p2

    .line 76
    invoke-static {v1, v0, p4, p3, p1}, Lcom/google/android/material/transition/platform/x;->e(IIFFF)I

    move-result p1

    .line 30
    new-instance p3, Lcom/google/android/material/transition/platform/c;

    invoke-direct {p3, p2, p1, v1}, Lcom/google/android/material/transition/platform/c;-><init>(IIZ)V

    return-object p3
.end method
