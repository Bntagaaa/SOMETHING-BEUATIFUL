.class Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gauravk/bubblenavigation/listener/BubbleNavigationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationChanged(Landroid/view/View;I)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->OnPositionChanged(I)V

    return-void
.end method
