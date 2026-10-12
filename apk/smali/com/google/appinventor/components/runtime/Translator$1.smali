.class Lcom/google/appinventor/components/runtime/Translator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Translator;->RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Translator;

.field final synthetic val$languageToTranslateTo:Ljava/lang/String;

.field final synthetic val$textToTranslate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Translator$1;->this$0:Lcom/google/appinventor/components/runtime/Translator;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Translator$1;->val$languageToTranslateTo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Translator$1;->val$textToTranslate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Translator$1;->this$0:Lcom/google/appinventor/components/runtime/Translator;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Translator$1;->val$languageToTranslateTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Translator$1;->val$textToTranslate:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Translator;->a(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
