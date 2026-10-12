.class Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->prepareFragmentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->c(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->f(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->e(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Lcom/google/android/gms/maps/MapFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->a(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 669
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 672
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->g(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)V

    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;->b(Lcom/google/appinventor/components/runtime/NiotronGoogleMaps;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
