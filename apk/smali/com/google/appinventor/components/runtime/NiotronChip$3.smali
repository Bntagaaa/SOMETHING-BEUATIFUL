.class Lcom/google/appinventor/components/runtime/NiotronChip$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronChip;->setListeners()V
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

    .line 402
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChip$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronChip;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronChip;->CheckChanged(I)V

    return-void
.end method
