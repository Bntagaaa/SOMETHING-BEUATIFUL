.class Lcom/google/appinventor/components/runtime/NiotronAirtable$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAirtable;->Column(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

.field final synthetic val$lcolumn:Ljava/util/List;

.field final synthetic val$lcreatedTime:Ljava/util/List;

.field final synthetic val$lrowId:Ljava/util/List;

.field final synthetic val$responseCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAirtable;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 816
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lcolumn:Ljava/util/List;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lrowId:Ljava/util/List;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lcreatedTime:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->this$0:Lcom/google/appinventor/components/runtime/NiotronAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$responseCode:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lcolumn:Ljava/util/List;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lrowId:Ljava/util/List;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NiotronAirtable$18;->val$lcreatedTime:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronAirtable;->GotColumn(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
