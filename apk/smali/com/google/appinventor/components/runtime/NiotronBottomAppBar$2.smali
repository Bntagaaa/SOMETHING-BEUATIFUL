.class Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;->AddBottomAppBarMenu(Ljava/lang/String;Ljava/lang/String;I)V
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

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;->BottomAppBarCollapsed(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronBottomAppBar;->BottomAppBarExpanded(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
