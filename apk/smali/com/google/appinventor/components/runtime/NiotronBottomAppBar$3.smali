.class Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;->BottomAppBarNavigationIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;->BottomAppBarNavigationClicked()V

    return-void
.end method
