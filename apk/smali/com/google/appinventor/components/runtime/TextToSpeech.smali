.class public Lcom/google/appinventor/components/runtime/TextToSpeech;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnClearListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The TextToSpeech component speaks a given text aloud.  You can set the pitch and the rate of speech. <p>You can also set a language by supplying a language code.  This changes the pronunciation of words, not the actual language spoken.  For example, setting the language to French and speaking English text will sound like someone speaking English (en) with a French accent.</p> <p>You can also specify a country by supplying a country code. This can affect the pronunciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language.</p> <p>The languages and countries available depend on the particular device, and can be listed with the AvailableLanguages and AvailableCountries properties.</p>"
    iconName = "images/textToSpeech.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextToSpeech"

.field private static final iso3CountryToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final iso3LanguageToLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

.field private allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

.field private country:Ljava/lang/String;

.field private countryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isTtsPrepared:Z

.field private iso2Country:Ljava/lang/String;

.field private iso2Language:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private languageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pitch:F

.field private result:Z

.field private speechRate:F

.field private final tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/TextToSpeech;->initLocaleMaps()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 117
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    .line 119
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Language(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Country(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 123
    const-string v2, "external"

    goto :goto_1

    :cond_1
    const-string v2, "internal"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TTS library."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeech"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Lcom/google/appinventor/components/runtime/TextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/TextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/TextToSpeech;)V

    if-eqz v1, :cond_2

    .line 137
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;

    invoke-direct {v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/ExternalTextToSpeech;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    goto :goto_2

    .line 138
    :cond_2
    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;-><init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V

    :goto_2
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 144
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 146
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    .line 149
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 150
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/TextToSpeech;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return-void
.end method

.method private getLanguageAndCountryLists()V
    .locals 7

    .line 391
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 394
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 396
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v4, v3}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 398
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    .line 403
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 404
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->languageList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->countryList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    :cond_3
    return-void
.end method

.method private static initLocaleMaps()V
    .locals 6

    .line 90
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 91
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 93
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 95
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 103
    sget-object v5, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    .line 329
    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 332
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Locale;

    :cond_0
    if-nez v1, :cond_1

    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2

    .line 198
    sget-object v0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 201
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Locale;

    :cond_0
    if-nez v1, :cond_1

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to raise after the message is spoken. The result will be true if the message is spoken successfully, otherwise it will be false."
    .end annotation

    .line 455
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterSpeaking"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AvailableCountries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the country codes available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allCountries:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public AvailableLanguages()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of the languages available on this device for use with TextToSpeech.  Check the Android developer documentation under supported languages to find the meanings of these abbreviations."
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->prepareLanguageAndCountryProperties()V

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->allLanguages:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 442
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforeSpeaking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "countries"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Country code to use for speech generation.  This can affect the pronounciation.  For example, British English (GBR) will sound different from US English (USA).  Not every country code will affect every language."
    .end annotation

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3CountryToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->country:Ljava/lang/String;

    move-object p1, v0

    .line 325
    :goto_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "languages"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the language for TextToSpeech. This changes the way that words are pronounced, not the actual language that is spoken.  For example setting the language to and speaking English text with sound like someone speaking English with a French accent."
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso3LanguageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->language:Ljava/lang/String;

    move-object p1, v0

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of Pitch"
    .end annotation

    .line 241
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    return v0
.end method

.method public Pitch(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Pitch for TextToSpeech The values should be between 0 and 2 where lower values lower the tone of synthesized voice and greater values raise it."
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->pitch:F

    .line 232
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x3dcccccd    # 0.1f

    :cond_1
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setPitch(F)V

    return-void

    .line 223
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pitch value should be between 0 and 2, but user specified: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextToSpeech"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->BeforeSpeaking()V

    .line 424
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->iso2Country:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v1, p1, v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public SpeechRate()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current value of SpeechRate"
    .end annotation

    .line 280
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    return v0
.end method

.method public SpeechRate(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the SpeechRate for TextToSpeech. The values should be between 0 and 2 where lower values slow down the pitch and greater values accelerate it."
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->speechRate:F

    .line 271
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const p1, 0x3dcccccd    # 0.1f

    :cond_1
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->setSpeechRate(F)V

    return-void

    .line 262
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "speechRate value should be between 0 and 2, but user specified: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextToSpeech"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Stop()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->stop()V

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->AfterSpeaking(Z)V

    return-void
.end method

.method public onClear()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->onStop()V

    return-void
.end method

.method public prepareLanguageAndCountryProperties()V
    .locals 4

    .line 366
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->tts:Lcom/google/appinventor/components/runtime/util/ITextToSpeech;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TextToSpeech"

    const/16 v3, 0xa8d

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 373
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->Speak(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TextToSpeech;->getLanguageAndCountryLists()V

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextToSpeech;->isTtsPrepared:Z

    :cond_1
    return-void
.end method
