.class public Lcom/google/appinventor/components/runtime/ActivityStarter;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that can launch an activity using the <code>StartActivity</code> method. \n<p>Activities that can be launched include:<ul> <li> Starting another App Inventor for Android app. \n To do so, first      find out the <em>class</em> of the other application by      downloading the source code and using a file explorer or unzip      utility to find a file named      \"youngandroidproject/project.properties\".  \n The first line of      the file will start with \"main=\" and be followed by the class      name; for example,      <code>main=com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>.       (The first components indicate that it was created by      Ben.Bitdiddle@gmail.com.)  \n To make your      <code>ActivityStarter</code> launch this application, set the      following properties: <ul>\n      <li> <code>ActivityPackage</code> to the class name, dropping the           last component (for example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr</code>)</li>\n      <li> <code>ActivityClass</code> to the entire class name (for           example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>)</li>      </ul></li> \n<li> Starting the camera application by setting the following      properties:<ul> \n     <li> <code>Action: android.intent.action.MAIN</code> </li> \n     <li> <code>ActivityPackage: com.android.camera</code> </li> \n     <li> <code>ActivityClass: com.android.camera.Camera</code></li>\n      </ul></li>\n<li> Performing web search.  Assuming the term you want to search      for is \"vampire\" (feel free to substitute your own choice), \n     set the properties to:\n<ul><code>     <li>Action: android.intent.action.WEB_SEARCH</li>      <li>ExtraKey: query</li>      <li>ExtraValue: vampire</li>      <li>ActivityPackage: com.google.android.providers.enhancedgooglesearch</li>     <li>ActivityClass: com.google.android.providers.enhancedgooglesearch.Launcher</li>      </code></ul></li> \n<li> Opening a browser to a specified web page.  Assuming the page you      want to go to is \"www.facebook.com\" (feel free to substitute      your own choice), set the properties to:\n<ul><code>      <li>Action: android.intent.action.VIEW</li>      <li>DataUri: http://www.facebook.com</li> </code> </ul> </li> </ul></p>"
    designerHelpDescription = "A component that can launch an activity using the <code>StartActivity</code> method.<p>Activities that can be launched include: <ul> \n<li> starting other App Inventor for Android apps </li> \n<li> starting the camera application </li> \n<li> performing web search </li> \n<li> opening a browser to a specified web page</li> \n<li> opening the map application to a specified location</li></ul> \nYou can also launch activities that return text data.  See the documentation on using the Activity Starter for examples.</p>"
    iconName = "images/activityStarter.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityStarter"


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Ljava/lang/String;

.field private activityPackage:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private dataType:Ljava/lang/String;

.field private dataUri:Ljava/lang/String;

.field private extraKey:Ljava/lang/String;

.field private extraValue:Ljava/lang/String;

.field private extras:Lcom/google/appinventor/components/runtime/util/YailList;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;

.field private resultName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 163
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 166
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 167
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityPackage(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityClass(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataUri(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->DataType(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraKey(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ExtraValue(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Extras(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ResultName(Ljava/lang/String;)V

    return-void
.end method

.method private buildActivityIntent()Landroid/content/Intent;
    .locals 13

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 504
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 506
    const-string v4, "ActivityStarter"

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    const-string v5, "Using file://"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    const-string v0, "It\'s a file"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 512
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 514
    const-string v5, "added permissions"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v1

    .line 522
    :cond_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    .line 524
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 532
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 535
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->Action()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    .line 533
    :cond_6
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adding extra, key = "

    const-string v5, " value = "

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 540
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    :cond_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_b

    aget-object v9, v0, v8

    .line 547
    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 548
    invoke-virtual {v9, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 549
    invoke-virtual {v9, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    .line 550
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_a

    .line 552
    instance-of v12, v11, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v12, :cond_9

    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Adding extra list, key = "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    check-cast v11, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 557
    :cond_9
    invoke-virtual {v9, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 558
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Adding extra string, key = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    return-object v2
.end method


# virtual methods
.method public Action()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public Action(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->action:Ljava/lang/String;

    return-void
.end method

.method public ActivityCanceled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised if this ActivityStarter returns because the activity was canceled."
    .end annotation

    const/4 v0, 0x0

    .line 395
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ActivityCanceled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ActivityClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityClass(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityClass:Ljava/lang/String;

    return-void
.end method

.method public ActivityError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The ActivityError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    return-void
.end method

.method public ActivityPackage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityPackage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->activityPackage:Ljava/lang/String;

    return-void
.end method

.method public AfterActivity(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after this ActivityStarter returns."
    .end annotation

    .line 386
    const-string v0, "AfterActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DataType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public DataType(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataType:Ljava/lang/String;

    return-void
.end method

.method public DataUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    return-object v0
.end method

.method public DataUri(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->dataUri:Ljava/lang/String;

    return-void
.end method

.method public ExtraKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the extra key that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead."
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraKey:Ljava/lang/String;

    return-void
.end method

.method public ExtraValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the extra value that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead."
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraValue(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extraValue:Ljava/lang/String;

    return-void
.end method

.method public Extras()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Extras(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 433
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 434
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_0

    .line 435
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Argument to Extras should be a list of pairs"

    const-string v1, "ActivityStarter Error"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->extras:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method public ResolveActivity()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the name of the activity that corresponds to this ActivityStarter, or an empty string if no corresponding activity can be found."
    .end annotation

    .line 460
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 462
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0

    .line 466
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    return-void
.end method

.method public ResultType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 410
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ResultUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 425
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public StartActivity()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the activity corresponding to this ActivityStarter."
    .end annotation

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 479
    iget v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    :cond_0
    const/4 v1, 0x0

    .line 487
    const-string v2, "StartActivity"

    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x25a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 492
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimation()Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 496
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x259

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 568
    iget v0, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->requestCode:I

    if-ne p1, v0, :cond_2

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "resultReturned - resultCode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityStarter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 571
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 572
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    .line 573
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    .line 579
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ActivityStarter;->result:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ActivityStarter;->AfterActivity(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ActivityStarter;->ActivityCanceled()V

    :cond_2
    return-void
.end method
