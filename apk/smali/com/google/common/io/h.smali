.class Lcom/google/common/io/h;
.super Lcom/google/common/io/ByteSource;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/common/io/FileBackedOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/common/io/FileBackedOutputStream;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/common/io/h;->a:Lcom/google/common/io/FileBackedOutputStream;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/common/io/h;->a:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {v0}, Lcom/google/common/io/FileBackedOutputStream;->a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
