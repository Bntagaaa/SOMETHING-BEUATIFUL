.class Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 479
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->OnFocusChange(Z)V

    return-void
.end method
