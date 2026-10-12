.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "recyclerview.jar, recyclerview.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_IMAGE_WIDTH:I = 0xc8

.field private static final DEFAULT_TEXT_SIZE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private detailTextColor:I

.field private dictItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private fontSizeDetail:F

.field private fontSizeMain:F

.field private fontTypeDetail:Ljava/lang/String;

.field private fontTypeface:Ljava/lang/String;

.field private imageHeight:I

.field private imageWidth:I

.field private layout:I

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private orientation:I

.field private propertyValue:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionDetailText:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private stringItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 123
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 131
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 133
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 135
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v3, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 138
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 139
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 140
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const-string v5, "Search list..."

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    :cond_0
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v2

    const/high16 v5, -0x1000000

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v6, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    const v2, -0x333334

    .line 191
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 192
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    const/high16 v2, 0x41b00000    # 22.0f

    .line 194
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 195
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 196
    const-string v2, "0"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(Ljava/lang/String;)V

    const/16 v2, 0xc8

    .line 199
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 200
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    .line 201
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 207
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    const/4 v0, 0x0

    .line 518
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 536
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 552
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 554
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .line 965
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 966
    const-string v1, "Text1"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string p1, "Text2"

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string p1, "Image"

    invoke-virtual {v0, p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->makeYailListFromList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 290
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 293
    instance-of v1, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_1

    .line 296
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 297
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 298
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v2, :cond_0

    .line 299
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 300
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 303
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 304
    const-string v3, "Text1"

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const-string v0, "ListView"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsStrings(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 343
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsListFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
        userVisible = false
    .end annotation

    .line 691
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x4479c000    # 999.0f

    .line 706
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    .line 709
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontSizeDetail()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
    .end annotation

    .line 720
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x4479c000    # 999.0f

    .line 734
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    .line 737
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 770
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    .line 771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public FontTypefaceDetail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypefaceDetail(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    .line 805
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    .line 979
    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    .line 984
    const-string v0, "Image"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    .line 974
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public ImageHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image height of the listview image stringItems."
    .end annotation

    .line 841
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    return v0
.end method

.method public ImageHeight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 853
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    .line 854
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ImageWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image width of the listview image."
    .end annotation

    .line 816
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    return v0
.end method

.method public ImageWidth(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 828
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    .line 829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ListData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 931
    const-string v2, "Image"

    const-string v3, "Text2"

    const-string v4, "Text1"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    .line 932
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    .line 933
    const-string v5, ""

    if-eq p1, v5, :cond_3

    .line 935
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 937
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 938
    invoke-virtual {v6, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 939
    new-instance v8, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 940
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 941
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    move-object v9, v5

    :goto_1
    invoke-virtual {v8, v3, v9}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    move-object v7, v5

    :goto_2
    invoke-virtual {v8, v2, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/2addr p1, v0

    goto :goto_0

    .line 948
    :goto_3
    const-string v2, "ListView"

    const-string v3, "Malformed JSON in ListView.ListData"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "ListView.ListData"

    invoke-virtual {v2, p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public ListViewLayout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 864
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    return v0
.end method

.method public ListViewLayout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 876
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 877
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public Orientation()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 889
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return v0
.end method

.method public Orientation(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the layout\'s orientation (vertical, horizontal). "
    .end annotation

    .line 905
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 906
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public Refresh()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public RemoveItemAtIndex(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes Item from list at a given index"
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    .line 437
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void

    .line 438
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 438
    const-string p1, "RemoveItemAtIndex"

    const/16 v2, 0x11f9

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 474
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 475
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 476
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 477
    const-string p1, "Text2"

    invoke-virtual {v2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_1

    .line 481
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValueInStringList(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 486
    :cond_2
    :goto_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    return-void
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .line 570
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 587
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 588
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 393
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    if-lez p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 415
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndexInStringList(ILjava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndexInStringList(ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 426
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    if-eqz p1, :cond_2

    .line 427
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    :cond_2
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .line 260
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .line 277
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview stringItems."
    .end annotation

    .line 604
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 620
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 621
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public TextColorDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of DetailText of listview stringItems. "
    .end annotation

    .line 633
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    return v0
.end method

.method public TextColorDetail(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 646
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    .line 647
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    return-void
.end method

.method public TextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .line 663
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    const/16 p1, 0x3e7

    :cond_0
    int-to-float p1, p1

    .line 678
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 505
    const-string p2, "Text1"

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 506
    const-string p2, "Text2"

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    .line 507
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 508
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    return-void
.end method

.method public setAdapterData()V
    .locals 19

    move-object/from16 v0, p0

    .line 352
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 354
    new-instance v4, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    iget v15, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    const/16 v18, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFLjava/lang/String;Ljava/lang/String;IIIIIZ)V

    iput-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 356
    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    if-ne v1, v2, :cond_0

    .line 357
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 359
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 363
    :cond_1
    new-instance v5, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;II)V

    iput-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 365
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 367
    :goto_0
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v3, Lcom/google/appinventor/components/runtime/ListView$2;

    invoke-direct {v3, v0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 375
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 376
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
