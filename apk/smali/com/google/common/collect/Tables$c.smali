.class final Lcom/google/common/collect/Tables$c;
.super Lcom/google/common/collect/Tables$b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Tables$b<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/common/collect/Tables$b;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/common/collect/Tables$c;->a:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/google/common/collect/Tables$c;->b:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, Lcom/google/common/collect/Tables$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/common/collect/Tables$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/common/collect/Tables$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/common/collect/Tables$c;->c:Ljava/lang/Object;

    return-object v0
.end method
