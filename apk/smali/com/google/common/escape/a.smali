.class final Lcom/google/common/escape/a;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "SourceFile"


# virtual methods
.method public escape(I)[C
    .locals 3

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 229
    throw v1

    :cond_0
    const/4 v0, 0x2

    .line 235
    new-array v0, v0, [C

    const/4 v2, 0x0

    .line 236
    invoke-static {p1, v0, v2}, Ljava/lang/Character;->toChars(I[CI)I

    .line 237
    throw v1
.end method
