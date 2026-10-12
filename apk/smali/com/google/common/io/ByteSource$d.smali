.class final Lcom/google/common/io/ByteSource$d;
.super Lcom/google/common/io/ByteSource$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final d:Lcom/google/common/io/ByteSource$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 644
    new-instance v0, Lcom/google/common/io/ByteSource$d;

    invoke-direct {v0}, Lcom/google/common/io/ByteSource$d;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteSource$d;->d:Lcom/google/common/io/ByteSource$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 647
    new-array v1, v0, [B

    .line 565
    invoke-direct {p0, v1, v0, v0}, Lcom/google/common/io/ByteSource$b;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 0

    .line 652
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public read()[B
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 663
    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
