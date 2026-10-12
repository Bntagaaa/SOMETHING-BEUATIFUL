.class Lcom/google/appinventor/components/runtime/Label$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Label;->LongClickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Label;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Label;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Label$1;->this$0:Lcom/google/appinventor/components/runtime/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 681
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label$1;->this$0:Lcom/google/appinventor/components/runtime/Label;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Label;->LongClick()V

    const/4 p1, 0x1

    return p1
.end method
