.class Lcom/google/appinventor/components/runtime/NiotronScratchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anupkumarpanwar/scratchview/ScratchView$IRevealListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronScratchView;->Create(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronScratchView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevealPercentChangedListener(Lcom/anupkumarpanwar/scratchview/ScratchView;F)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->RevealPercentChange(F)V

    return-void
.end method

.method public onRevealed(Lcom/anupkumarpanwar/scratchview/ScratchView;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronScratchView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->Revealed()V

    return-void
.end method
