.class Lcom/google/appinventor/components/runtime/Spreadsheet$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$12;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$12$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$12$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$12;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotCellData(Ljava/lang/String;)V

    return-void
.end method
