.class Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->addListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->getIdByValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronMaterialToggleButton;->Click(Ljava/lang/String;Z)V

    return-void
.end method
