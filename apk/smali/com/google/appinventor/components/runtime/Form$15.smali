.class Lcom/google/appinventor/components/runtime/Form$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 3091
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 3093
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->h(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 p1, 0x1

    return p1
.end method
