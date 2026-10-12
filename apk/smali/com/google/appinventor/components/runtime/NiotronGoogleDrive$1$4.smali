.class Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$4;->this$1:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1$4;->this$1:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;

    const-string v1, "Invalid request. Try again"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
