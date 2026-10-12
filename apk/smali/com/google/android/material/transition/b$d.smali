.class Lcom/google/android/material/transition/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/c;
    .locals 2

    .line 67
    invoke-static {p3, p2, p4, p2}, L_COROUTINE/a;->a(FFFF)F

    move-result p4

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1, p2, p4, p1}, Lcom/google/android/material/transition/u;->e(IIFFF)I

    move-result p2

    .line 71
    invoke-static {v1, v0, p4, p3, p1}, Lcom/google/android/material/transition/u;->e(IIFFF)I

    move-result p1

    .line 25
    new-instance p3, Lcom/google/android/material/transition/c;

    invoke-direct {p3, p2, p1, v1}, Lcom/google/android/material/transition/c;-><init>(IIZ)V

    return-object p3
.end method
