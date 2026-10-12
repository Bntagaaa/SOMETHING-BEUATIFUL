.class Lcom/google/appinventor/components/runtime/NiotronPopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->Target(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronPopupMenu;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->MenuItemClick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
