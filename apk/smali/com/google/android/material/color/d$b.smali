.class Lcom/google/android/material/color/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:B

.field public final b:B

.field public final c:S

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p3, p0, Lcom/google/android/material/color/d$b;->d:Ljava/lang/String;

    .line 567
    iput p2, p0, Lcom/google/android/material/color/d$b;->e:I

    const p2, 0xffff

    and-int/2addr p2, p1

    int-to-short p2, p2

    .line 569
    iput-short p2, p0, Lcom/google/android/material/color/d$b;->c:S

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 570
    iput-byte p2, p0, Lcom/google/android/material/color/d$b;->b:B

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 571
    iput-byte p1, p0, Lcom/google/android/material/color/d$b;->a:B

    return-void
.end method
