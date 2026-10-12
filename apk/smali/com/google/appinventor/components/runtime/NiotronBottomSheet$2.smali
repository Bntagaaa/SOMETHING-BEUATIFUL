.class Lcom/google/appinventor/components/runtime/NiotronBottomSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 167
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBottomSheet$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronBottomSheet;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronBottomSheet;->BottomSheetCanceled()V

    return-void
.end method
