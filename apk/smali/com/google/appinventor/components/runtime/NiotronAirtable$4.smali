.class Lcom/google/appinventor/components/runtime/NiotronAirtable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->SetCell(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$rowNumber:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$rowNumber:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$columnName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$rowNumber:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$columnName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$4;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->h(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 173
    const-string v1, "Airtable Component"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
