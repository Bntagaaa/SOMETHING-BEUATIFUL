.class Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidRequestHeadersException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 132
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->errorNumber:I

    .line 133
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$InvalidRequestHeadersException;->index:I

    return-void
.end method
