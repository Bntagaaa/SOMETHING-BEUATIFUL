.class Lcom/google/android/material/transition/b$c;
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/c;
    .locals 2

    const/16 p4, 0xff

    const/4 v0, 0x0

    .line 56
    invoke-static {p4, v0, p2, p3, p1}, Lcom/google/android/material/transition/u;->e(IIFFF)I

    move-result v1

    .line 57
    invoke-static {v0, p4, p2, p3, p1}, Lcom/google/android/material/transition/u;->e(IIFFF)I

    move-result p1

    .line 25
    new-instance p2, Lcom/google/android/material/transition/c;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/transition/c;-><init>(IIZ)V

    return-object p2
.end method
