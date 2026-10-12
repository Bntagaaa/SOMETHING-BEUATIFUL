.class Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$14;

.field final synthetic val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$14;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1561
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$14;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$14;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotRangeData(Ljava/util/List;)V

    return-void
.end method
