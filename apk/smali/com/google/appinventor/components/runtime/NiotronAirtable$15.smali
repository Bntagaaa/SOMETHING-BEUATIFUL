.class Lcom/google/appinventor/components/runtime/NiotronAirtable$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->GetAllWithOffset(Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$totalRows:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$15;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$15;->val$totalRows:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$15;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$15;->val$totalRows:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->b(Lcom/google/appinventor/components/runtime/NiotronAirtable;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$15;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->a(Lcom/google/appinventor/components/runtime/NiotronAirtable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotAllRows(IILjava/lang/String;)V

    return-void
.end method
