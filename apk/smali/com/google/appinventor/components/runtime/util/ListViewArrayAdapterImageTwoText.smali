.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private detailTextColor:I

.field private detailTextSize:I

.field private final filter:Landroid/widget/Filter;

.field private filterCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I

.field private itemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>(IIIIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textSize:I

    .line 37
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextSize:I

    .line 38
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textColor:I

    .line 39
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextColor:I

    .line 40
    iput p5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageWidth:I

    .line 41
    iput p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageHeight:I

    .line 42
    iput-object p7, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 43
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    .line 44
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filterCurrentItems:Ljava/util/List;

    .line 46
    new-instance p1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filter:Landroid/widget/Filter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextColor:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextSize:I

    return p0
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    .line 87
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageWidth:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 91
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    .line 93
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x2

    .line 96
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 97
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v2, 0x3

    .line 99
    invoke-virtual {v5, v2}, Landroid/view/View;->setId(I)V

    .line 100
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filter:Landroid/widget/Filter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filterCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textColor:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textSize:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->createView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x1020014

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    const v3, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    const-string v0, "Unable to load "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Image"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 115
    :goto_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
