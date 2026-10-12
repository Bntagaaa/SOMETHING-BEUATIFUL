.class Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdOpened;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdUnitID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adOpened()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronAppnextInterstitial;->AdOpened()V

    return-void
.end method
