.class Lcom/google/appinventor/components/runtime/NiotronChip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChip;->CreateChip(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronChip;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronChip;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronChip;

    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChip;->a(Lcom/google/appinventor/components/runtime/NiotronChip;Lcom/google/android/material/chip/Chip;)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChip$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronChip;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronChip;->Clicked(Ljava/lang/String;)V

    return-void
.end method
