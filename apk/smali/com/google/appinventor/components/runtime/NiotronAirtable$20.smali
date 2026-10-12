.class Lcom/google/appinventor/components/runtime/NiotronAirtable$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->RowWithOffset(ILjava/lang/String;Ljava/util/List;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$responseCode:I

.field final synthetic val$row:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 923
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->val$row:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->val$responseCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$20;->val$row:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotRow(ILjava/util/List;)V

    return-void
.end method
