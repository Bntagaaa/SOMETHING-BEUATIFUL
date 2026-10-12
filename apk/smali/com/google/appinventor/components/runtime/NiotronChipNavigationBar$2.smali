.class Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->Create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->a(Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;)Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->updateChildNavItems()V

    return-void
.end method
