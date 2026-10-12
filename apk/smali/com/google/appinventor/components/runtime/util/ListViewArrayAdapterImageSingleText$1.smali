.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;-><init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 55
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 56
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 62
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0

    .line 51
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->g(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Ljava/util/List;)V

    .line 70
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 71
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
