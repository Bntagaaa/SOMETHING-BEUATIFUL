.class Lcom/google/appinventor/components/runtime/NiotronPopupMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


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

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronPopupMenu$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronPopupMenu;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronPopupMenu;->MenuDismissed()V

    return-void
.end method
