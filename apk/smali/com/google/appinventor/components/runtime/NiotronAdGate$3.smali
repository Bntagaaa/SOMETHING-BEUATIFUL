.class Lcom/google/appinventor/components/runtime/NiotronAdGate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adgatemedia/sdk/classes/AdGateMedia$OnOfferWallClosed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAdGate;->ShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAdGate;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfferWallClosed()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAdGate$3;->this$0:Lcom/google/appinventor/components/runtime/NiotronAdGate;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAdGate;->AdClosed()V

    return-void
.end method
