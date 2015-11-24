.class Lcom/android/settings_ext/hs;
.super Ljava/lang/Object;
.source "ZonePicker.java"


# instance fields
.field private final Ad:Ljava/util/List;

.field private final Ae:Ljava/util/HashSet;

.field private final Af:Ljava/util/Date;

.field private final Ag:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hs;->Ad:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hs;->Ae:Ljava/util/HashSet;

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/hs;->Af:Ljava/util/Date;

    .line 267
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "zzzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/hs;->Ag:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private R(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 312
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ae:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ag:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ag:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/settings_ext/hs;->Af:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 323
    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "pinyin"

    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "gmt"

    invoke-static {v1, v5}, Lcom/android/settings_ext/DateTimeSettings;->a(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "offset"

    iget-object v3, p0, Lcom/android/settings_ext/hs;->Af:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ad:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void

    .line 318
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0, p1}, Llibcore/icu/TimeZoneNames;->getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private V(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 270
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 271
    iget-object v4, p0, Lcom/android/settings_ext/hs;->Ae:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 275
    :cond_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 278
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 279
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 280
    :goto_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 281
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ad:Ljava/util/List;

    .line 301
    :goto_3
    return-object v0

    .line 284
    :cond_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v0, "ZonePicker"

    const-string v1, "Ill-formatted timezones.xml file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ext/hs;->Ad:Ljava/util/List;

    goto :goto_3

    .line 286
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-direct {p0, v1}, Lcom/android/settings_ext/hs;->R(Ljava/lang/String;)V

    .line 290
    :cond_4
    :goto_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 291
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 298
    :catch_1
    move-exception v0

    .line 299
    const-string v0, "ZonePicker"

    const-string v1, "Unable to read timezones.xml file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 293
    :cond_5
    :try_start_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1

    .line 295
    :cond_6
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method

.method static synthetic a(Lcom/android/settings_ext/hs;Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/android/settings_ext/hs;->V(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
