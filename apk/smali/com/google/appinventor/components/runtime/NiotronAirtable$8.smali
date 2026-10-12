.class Lcom/google/appinventor/components/runtime/NiotronAirtable$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->GetAllRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$8;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->e(Lcom/google/appinventor/components/runtime/NiotronAirtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 240
    const-string v1, "Airtable Component"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
