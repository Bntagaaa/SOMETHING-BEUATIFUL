.class Lcom/google/appinventor/components/runtime/ImageBot$ImageException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ImageBot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageException"
.end annotation


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 416
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 417
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->code:I

    .line 418
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->description:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/ImageBot$ImageException;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResponseCode()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->code:I

    return v0
.end method

.method private getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$ImageException;->description:Ljava/lang/String;

    return-object v0
.end method
