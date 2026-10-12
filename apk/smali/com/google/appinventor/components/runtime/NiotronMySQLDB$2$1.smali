.class Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;

.field final synthetic val$respoon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2$1;->val$respoon:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronMySQLDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronMySQLDB$2$1;->val$respoon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronMySQLDB;->TableCreated(Ljava/lang/String;)V

    return-void
.end method
