.class Lcom/google/appinventor/components/runtime/TinyDB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyDB;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyDB;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/TinyDB;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
