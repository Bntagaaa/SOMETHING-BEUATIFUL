.class Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 687
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 689
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5$2;->this$1:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;

    const-string v2, "Unable to make server call. check your url and try again"

    const/4 v3, 0x0

    const/16 v4, 0x191

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronSpreadsheet;->GotColumn(ILcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V

    return-void
.end method
