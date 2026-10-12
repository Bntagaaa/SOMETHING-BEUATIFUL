.class Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialButton;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialButton;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 409
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialButton;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronMaterialButton;->Click()V

    return-void
.end method
