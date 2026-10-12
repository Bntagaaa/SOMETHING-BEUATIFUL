.class final Lcom/google/common/collect/LinkedListMultimap$d;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lcom/google/common/collect/LinkedListMultimap$d;

.field public d:Lcom/google/common/collect/LinkedListMultimap$d;

.field public e:Lcom/google/common/collect/LinkedListMultimap$d;

.field public f:Lcom/google/common/collect/LinkedListMultimap$d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    .line 116
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$d;->b:Ljava/lang/Object;

    return-object v0
.end method
