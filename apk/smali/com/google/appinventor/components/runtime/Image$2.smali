.class Lcom/google/appinventor/components/runtime/Image$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Image;->Clickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Image;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Image;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Image$2;->this$0:Lcom/google/appinventor/components/runtime/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Image$2;->this$0:Lcom/google/appinventor/components/runtime/Image;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->Click()V

    return-void
.end method
