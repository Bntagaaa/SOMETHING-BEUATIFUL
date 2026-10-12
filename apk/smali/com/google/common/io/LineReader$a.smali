.class Lcom/google/common/io/LineReader$a;
.super Lcom/google/common/io/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/io/LineReader;


# direct methods
.method public constructor <init>(Lcom/google/common/io/LineReader;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/google/common/io/LineReader$a;->c:Lcom/google/common/io/LineReader;

    invoke-direct {p0}, Lcom/google/common/io/i;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    iget-object p2, p0, Lcom/google/common/io/LineReader$a;->c:Lcom/google/common/io/LineReader;

    iget-object p2, p2, Lcom/google/common/io/LineReader;->e:Ljava/util/LinkedList;

    .line 51
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
