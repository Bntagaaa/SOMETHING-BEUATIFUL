.class Lcom/google/appinventor/components/runtime/NiotronSpotlight$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/takusemba/spotlight/OnSpotlightEndedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronSpotlight;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronSpotlight;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronSpotlight;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpotlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronSpotlight;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->End()V

    return-void
.end method
