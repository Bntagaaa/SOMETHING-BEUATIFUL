.class Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildRequestDataException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 155
    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->errorNumber:I

    .line 156
    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$BuildRequestDataException;->index:I

    return-void
.end method
