.class Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->SetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->BottomSheetOpened()V

    .line 164
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->a(Lcom/google/appinventor/components/runtime/NiotronBottomSheet;)V

    return-void
.end method
