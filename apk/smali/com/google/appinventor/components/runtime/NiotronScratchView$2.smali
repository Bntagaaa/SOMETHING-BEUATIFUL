.class Lcom/google/appinventor/components/runtime/NiotronScratchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronScratchView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic val$fWidth:I

.field final synthetic val$trycount:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronScratchView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$fWidth:I

    iput p4, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$trycount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$fWidth:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;->val$trycount:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method
