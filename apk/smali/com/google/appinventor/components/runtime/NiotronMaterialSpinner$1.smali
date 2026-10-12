.class Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->ItemsFromString(Ljava/lang/String;)V
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

    .line 380
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 383
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/NiotronMaterialSpinner;->ItemClick(I)V

    return-void
.end method
