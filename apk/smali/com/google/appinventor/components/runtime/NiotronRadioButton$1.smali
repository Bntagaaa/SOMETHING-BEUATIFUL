.class Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronRadioButton;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRadioButton;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRadioButton;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRadioButton;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->a(Lcom/google/appinventor/components/runtime/NiotronRadioButton;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 53
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronRadioButton$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronRadioButton;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/NiotronRadioButton;->CheckChange(Ljava/lang/String;)V

    return-void
.end method
