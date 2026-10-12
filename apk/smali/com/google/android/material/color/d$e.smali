.class Lcom/google/android/material/color/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:S

.field public final b:S

.field public final c:I


# direct methods
.method public constructor <init>(SSI)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-short p1, p0, Lcom/google/android/material/color/d$e;->a:S

    .line 181
    iput-short p2, p0, Lcom/google/android/material/color/d$e;->b:S

    .line 182
    iput p3, p0, Lcom/google/android/material/color/d$e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 40
    iget-short v0, p0, Lcom/google/android/material/color/d$e;->a:S

    invoke-static {v0}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 40
    iget-short v0, p0, Lcom/google/android/material/color/d$e;->b:S

    invoke-static {v0}, Lcom/google/android/material/color/d;->d(S)[B

    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 188
    iget v0, p0, Lcom/google/android/material/color/d$e;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/d;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
