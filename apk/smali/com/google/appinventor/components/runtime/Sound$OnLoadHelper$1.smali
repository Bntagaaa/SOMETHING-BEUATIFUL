.class Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;->setOnloadCompleteListener(Landroid/media/SoundPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper$1;->this$1:Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper$1;->this$1:Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Sound$OnLoadHelper;->this$0:Lcom/google/appinventor/components/runtime/Sound;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Sound;->f(Lcom/google/appinventor/components/runtime/Sound;)V

    return-void
.end method
