.class Lcom/google/appinventor/components/runtime/NiotronAirtable$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->Cell(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$cell:Ljava/lang/String;

.field final synthetic val$createdTime:Ljava/lang/String;

.field final synthetic val$responseCode:I

.field final synthetic val$rowId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$cell:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$rowId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$createdTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$responseCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$cell:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$rowId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$16;->val$createdTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotCell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
