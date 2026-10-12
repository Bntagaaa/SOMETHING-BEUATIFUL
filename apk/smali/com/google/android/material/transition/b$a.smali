.class Lcom/google/android/material/transition/b$a;
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/c;
    .locals 1

    const/4 p4, 0x0

    const/16 v0, 0xff

    .line 35
    invoke-static {p4, v0, p2, p3, p1}, Lcom/google/android/material/transition/u;->e(IIFFF)I

    move-result p1

    .line 29
    new-instance p2, Lcom/google/android/material/transition/c;

    const/4 p3, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/google/android/material/transition/c;-><init>(IIZ)V

    return-object p2
.end method
