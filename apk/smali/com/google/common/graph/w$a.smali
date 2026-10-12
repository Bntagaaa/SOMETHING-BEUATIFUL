.class final enum Lcom/google/common/graph/w$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/w$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/google/common/graph/w$a;

    .line 56
    const-string v1, "EDGE_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/google/common/graph/w$a;->a:Lcom/google/common/graph/w$a;

    return-void
.end method
