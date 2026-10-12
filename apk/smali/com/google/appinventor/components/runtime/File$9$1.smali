.class Lcom/google/appinventor/components/runtime/File$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$9;->process(Ljava/io/OutputStreamWriter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$9;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/File$9;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$9$1;->this$1:Lcom/google/appinventor/components/runtime/File$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9$1;->this$1:Lcom/google/appinventor/components/runtime/File$9;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$9;->val$filename:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/File;->AfterFileSaved(Ljava/lang/String;)V

    return-void
.end method
