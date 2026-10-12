.class Lcom/google/appinventor/components/runtime/NiotronAirtable$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->CreateRow(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$columnName:Ljava/lang/Object;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->val$columnName:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->val$columnName:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->val$value:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 203
    check-cast v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 205
    :cond_0
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->val$value:Ljava/lang/Object;

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$6;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->createRow(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 209
    :goto_0
    const-string v1, "Airtable Component"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
