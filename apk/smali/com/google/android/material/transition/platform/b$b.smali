.class Lcom/google/android/material/transition/platform/b$b;
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

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/c;
    .locals 1

    const/16 p4, 0xff

    const/4 v0, 0x0

    .line 50
    invoke-static {p4, v0, p2, p3, p1}, Lcom/google/android/material/transition/platform/x;->e(IIFFF)I

    move-result p1

    .line 30
    new-instance p2, Lcom/google/android/material/transition/platform/c;

    invoke-direct {p2, p1, p4, v0}, Lcom/google/android/material/transition/platform/c;-><init>(IIZ)V

    return-object p2
.end method
