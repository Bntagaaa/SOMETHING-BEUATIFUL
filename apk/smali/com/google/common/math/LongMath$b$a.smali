.class final enum Lcom/google/common/math/LongMath$b$a;
.super Lcom/google/common/math/LongMath$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1066
    const-string v0, "SMALL"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(JJJ)J
    .locals 0

    mul-long p1, p1, p3

    .line 1077
    rem-long/2addr p1, p5

    return-wide p1
.end method

.method public final b(JJ)J
    .locals 0

    mul-long p1, p1, p1

    .line 1082
    rem-long/2addr p1, p3

    return-wide p1
.end method
