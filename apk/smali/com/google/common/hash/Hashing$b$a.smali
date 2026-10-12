.class final enum Lcom/google/common/hash/Hashing$b$a;
.super Lcom/google/common/hash/Hashing$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$b$a;->get()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/zip/Checksum;
    .locals 1

    .line 394
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    return-object v0
.end method
