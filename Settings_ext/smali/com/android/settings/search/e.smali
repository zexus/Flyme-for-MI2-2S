.class public Lcom/android/settings/search/e;
.super Ljava/lang/Object;
.source "Index.java"


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;

.field private static final Eq:Ljava/util/regex/Pattern;

.field private static final aiF:[Ljava/lang/String;

.field private static final aiG:[Ljava/lang/String;

.field private static final aiH:[Ljava/lang/String;

.field private static aiI:J

.field private static aiJ:Lcom/android/settings/search/e;


# instance fields
.field private final aiK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aiL:Lcom/android/settings/search/h;

.field private final aiM:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_rank"

    aput-object v1, v0, v3

    const-string v1, "data_title"

    aput-object v1, v0, v4

    const-string v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent_target_package"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intent_target_class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/search/e;->aiF:[Ljava/lang/String;

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data_title"

    aput-object v1, v0, v3

    const-string v1, "data_title_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_keywords"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/search/e;->aiG:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_summary_on"

    aput-object v1, v0, v3

    const-string v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/search/e;->aiH:[Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/android/settings/search/e;->aiI:J

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/e;->EMPTY_LIST:Ljava/util/List;

    .line 165
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/e;->Eq:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/search/e;->aiK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Lcom/android/settings/search/h;

    invoke-direct {v0}, Lcom/android/settings/search/h;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    .line 221
    iput-object p1, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/settings/search/e;->aiM:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1101
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1102
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1106
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1107
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1112
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1109
    :cond_1
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    const-string v0, "SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/search/e;->aiF:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 654
    sget-object v2, Lcom/android/settings/search/e;->aiF:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    sget-object v2, Lcom/android/settings/search/e;->aiF:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 656
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_1
    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v0, "prefs_index"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/e;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    if-eqz p3, :cond_0

    .line 644
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 371
    if-nez v1, :cond_0

    .line 372
    const-string v0, "Index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add index data for Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v0, Lcom/android/settings/search/e;->EMPTY_LIST:Ljava/util/List;

    .line 387
    :goto_0
    return-object v0

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 379
    if-lez v2, :cond_1

    .line 380
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/search/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/search/e;->aiK:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 24

    .prologue
    .line 819
    const/4 v4, 0x0

    .line 821
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v21

    .line 825
    :cond_0
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 829
    :cond_1
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 830
    const-string v4, "PreferenceScreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 831
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 905
    :catch_0
    move-exception v3

    move-object/from16 v4, v21

    .line 906
    :goto_0
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error parsing PreferenceScreen"

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    :catchall_0
    move-exception v3

    move-object/from16 v21, v4

    :goto_1
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 836
    :cond_3
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    .line 837
    invoke-static/range {v21 .. v21}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v23

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 849
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 854
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 861
    :cond_4
    :goto_2
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_9

    .line 862
    :cond_5
    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 866
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 869
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 876
    const-string v4, "CheckBoxPreference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 879
    const/4 v9, 0x0

    .line 881
    const-string v4, "ListPreference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 882
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 886
    :cond_6
    const/4 v8, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 907
    :catch_1
    move-exception v3

    .line 908
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing PreferenceScreen"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 910
    :catchall_1
    move-exception v3

    goto/16 :goto_1

    .line 891
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    .line 894
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 895
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/e;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 898
    :cond_8
    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 910
    :cond_9
    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 912
    :cond_a
    return-void

    .line 910
    :catchall_2
    move-exception v3

    move-object/from16 v21, v4

    goto/16 :goto_1

    .line 907
    :catch_2
    move-exception v3

    move-object/from16 v21, v4

    goto :goto_3

    .line 905
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/l;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 24

    .prologue
    .line 918
    if-nez p4, :cond_1

    .line 919
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    return-void

    .line 923
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/l;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v22

    .line 925
    if-eqz v22, :cond_4

    .line 926
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    .line 927
    const/4 v3, 0x0

    move/from16 v21, v3

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 928
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search/n;

    .line 931
    iget-object v4, v3, Lcom/android/settings/search/n;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 927
    :cond_2
    :goto_1
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto :goto_0

    .line 935
    :cond_3
    iget-object v4, v3, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 939
    iget-object v6, v3, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/settings/search/n;->Rz:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/settings/search/n;->RA:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/settings/search/n;->RB:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    iget-object v14, v3, Lcom/android/settings/search/n;->aiX:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/settings/search/n;->intentAction:Ljava/lang/String;

    iget-object v0, v3, Lcom/android/settings/search/n;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/android/settings/search/n;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-boolean v0, v3, Lcom/android/settings/search/n;->enabled:Z

    move/from16 v18, v0

    iget-object v0, v3, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v3, Lcom/android/settings/search/n;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 958
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/android/settings/search/l;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v16

    .line 960
    if-eqz v16, :cond_0

    .line 961
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 962
    const/4 v3, 0x0

    move v15, v3

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 963
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableResource;

    .line 966
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 962
    :goto_3
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_2

    .line 970
    :cond_5
    iget v4, v3, Landroid/provider/SearchIndexableResource;->iconResId:I

    if-nez v4, :cond_6

    move/from16 v9, p6

    .line 971
    :goto_4
    iget v4, v3, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez v4, :cond_7

    move/from16 v10, p7

    .line 972
    :goto_5
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v8, p5

    .line 975
    :goto_6
    iget v7, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    iget-object v11, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    iget-object v12, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    iget-object v13, v3, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 970
    :cond_6
    iget v9, v3, Landroid/provider/SearchIndexableResource;->iconResId:I

    goto :goto_4

    .line 971
    :cond_7
    iget v10, v3, Landroid/provider/SearchIndexableResource;->rank:I

    goto :goto_5

    .line 972
    :cond_8
    iget-object v8, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_6
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p3

    move-object v2, p4

    move-object v4, v3

    move-object v5, v3

    .line 534
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 536
    if-nez v1, :cond_0

    .line 537
    const-string v0, "Index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add index data for Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    return-void

    .line 542
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 543
    if-lez v0, :cond_2

    .line 544
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 546
    if-lez v0, :cond_1

    add-int/2addr v0, p5

    .line 548
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 550
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 553
    const/4 v5, 0x4

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 554
    const/4 v6, 0x5

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 556
    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 559
    new-instance v8, Landroid/provider/SearchIndexableResource;

    invoke-direct {v8, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 560
    iput v0, v8, Landroid/provider/SearchIndexableResource;->rank:I

    .line 561
    iput v2, v8, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 562
    iput-object v3, v8, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 563
    iput-object p2, v8, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 564
    iput v4, v8, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 565
    iput-object v5, v8, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 566
    iput-object v6, v8, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 567
    iput-object v7, v8, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 569
    invoke-virtual {p0, v8}, Lcom/android/settings/search/e;->a(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 573
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, p5

    .line 546
    goto :goto_2

    .line 573
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 699
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 700
    check-cast p3, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    instance-of v0, p3, Lcom/android/settings/search/n;

    if-eqz v0, :cond_0

    .line 702
    check-cast p3, Lcom/android/settings/search/n;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/n;)V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 13

    .prologue
    .line 749
    if-nez p3, :cond_1

    .line 750
    const-string v1, "Index"

    const-string v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 756
    move-object/from16 v0, p3

    iget v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/android/settings/search/o;->aiZ:I

    if-le v1, v2, :cond_3

    .line 757
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 758
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 759
    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 762
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 767
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    const-string v1, "Index"

    const-string v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/search/e;->bi(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 773
    if-nez v1, :cond_5

    .line 774
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should implement the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/search/k;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 781
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/search/e;->b(Ljava/lang/Class;)Lcom/android/settings/search/l;

    move-result-object v7

    .line 782
    if-eqz v7, :cond_0

    .line 783
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/android/settings/search/l;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 785
    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 788
    :cond_6
    iget-object v4, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/l;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/n;)V
    .locals 19

    .prologue
    .line 709
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/settings/search/n;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 713
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/settings/search/n;->Rz:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/search/n;->RA:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/settings/search/n;->RB:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/settings/search/n;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/settings/search/n;->iconResId:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/settings/search/n;->rank:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/settings/search/n;->aiX:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/settings/search/n;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/android/settings/search/n;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/settings/search/n;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/settings/search/n;->enabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/search/n;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 21

    .prologue
    .line 990
    invoke-static/range {p3 .. p3}, Lcom/android/settings/search/e;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    invoke-static/range {p4 .. p4}, Lcom/android/settings/search/e;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 992
    invoke-static/range {p5 .. p5}, Lcom/android/settings/search/e;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    invoke-static {v3}, Lcom/android/settings/search/e;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 995
    invoke-static {v5}, Lcom/android/settings/search/e;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 996
    invoke-static {v7}, Lcom/android/settings/search/e;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 998
    invoke-direct/range {v0 .. v20}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1004
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 4

    .prologue
    .line 1025
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1031
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1035
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1036
    const-string v3, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    const-string v1, "locale"

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v1, "data_rank"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    const-string v1, "data_title"

    invoke-virtual {v2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v1, "data_title_normalized"

    invoke-virtual {v2, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v1, "data_summary_on"

    invoke-virtual {v2, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v1, "data_summary_on_normalized"

    invoke-virtual {v2, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v1, "data_summary_off"

    invoke-virtual {v2, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v1, "data_summary_off_normalized"

    invoke-virtual {v2, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v1, "data_entries"

    invoke-virtual {v2, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v1, "data_keywords"

    move-object/from16 v0, p14

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v1, "class_name"

    invoke-virtual {v2, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v1, "screen_title"

    invoke-virtual {v2, v1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "intent_action"

    move-object/from16 v0, p15

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "intent_target_package"

    move-object/from16 v0, p16

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v1, "intent_target_class"

    move-object/from16 v0, p17

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v1, "icon"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    const-string v1, "enabled"

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1054
    const-string v1, "data_key_reference"

    move-object/from16 v0, p19

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v1, "user_id"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1057
    const-string v1, "prefs_index"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/settings/search/e;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/search/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 732
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/settings/search/k;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/search/e;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/search/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Class;)Lcom/android/settings/search/l;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 796
    :try_start_0
    const-string v0, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 797
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/l;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 811
    :goto_0
    return-object v0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    const-string v0, "Index"

    const-string v2, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    .line 811
    goto :goto_0

    .line 800
    :catch_1
    move-exception v0

    .line 801
    const-string v0, "Index"

    const-string v2, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 803
    :catch_2
    move-exception v0

    .line 804
    const-string v0, "Index"

    const-string v2, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 806
    :catch_3
    move-exception v0

    .line 807
    const-string v0, "Index"

    const-string v2, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1061
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1116
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1117
    invoke-virtual {v2, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1120
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1121
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_3

    .line 1122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1125
    :goto_0
    if-nez v3, :cond_0

    move v2, v1

    .line 1126
    :goto_1
    if-nez v2, :cond_1

    .line 1134
    :goto_2
    return-object v0

    .line 1125
    :cond_0
    array-length v2, v3

    goto :goto_1

    .line 1129
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 1130
    :goto_3
    if-ge v0, v2, :cond_2

    .line 1131
    aget-object v1, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1134
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v3, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefs_index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    const-string v1, " MATCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/e;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 672
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 676
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18

    .prologue
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 581
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 583
    if-nez v3, :cond_0

    .line 584
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return-void

    .line 589
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 590
    if-lez v2, :cond_2

    .line 591
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 592
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 593
    if-lez v2, :cond_1

    add-int v2, v2, p5

    .line 595
    :goto_2
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 596
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 597
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 598
    const/4 v7, 0x4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 599
    const/4 v8, 0x5

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 601
    const/4 v9, 0x6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 603
    const/4 v10, 0x7

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 604
    const/16 v11, 0x8

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 606
    const/16 v12, 0x9

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 607
    const/16 v13, 0xa

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 609
    const/16 v14, 0xb

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 612
    const/16 v15, 0xc

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 613
    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 615
    new-instance v17, Lcom/android/settings/search/n;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/search/n;-><init>(Landroid/content/Context;)V

    .line 616
    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/settings/search/n;->rank:I

    .line 617
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/android/settings/search/n;->title:Ljava/lang/String;

    .line 618
    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/settings/search/n;->Rz:Ljava/lang/String;

    .line 619
    move-object/from16 v0, v17

    iput-object v6, v0, Lcom/android/settings/search/n;->RA:Ljava/lang/String;

    .line 620
    move-object/from16 v0, v17

    iput-object v7, v0, Lcom/android/settings/search/n;->RB:Ljava/lang/String;

    .line 621
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/android/settings/search/n;->aiX:Ljava/lang/String;

    .line 622
    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/settings/search/n;->aiY:Ljava/lang/String;

    .line 623
    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/android/settings/search/n;->className:Ljava/lang/String;

    .line 624
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/search/n;->packageName:Ljava/lang/String;

    .line 625
    move-object/from16 v0, v17

    iput v11, v0, Lcom/android/settings/search/n;->iconResId:I

    .line 626
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/settings/search/n;->intentAction:Ljava/lang/String;

    .line 627
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/android/settings/search/n;->intentTargetPackage:Ljava/lang/String;

    .line 628
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/settings/search/n;->intentTargetClass:Ljava/lang/String;

    .line 629
    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/android/settings/search/n;->key:Ljava/lang/String;

    .line 630
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/settings/search/n;->userId:I

    .line 632
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/search/e;->a(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 636
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    move/from16 v2, p5

    .line 593
    goto/16 :goto_2

    .line 636
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private bc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_0
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private be(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 448
    iget-object v1, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 450
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 451
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static bf(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static bg(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static bh(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static bi(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 738
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 743
    invoke-static {v0}, Lcom/android/settings/search/e;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    const-string v0, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 741
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 743
    goto :goto_0
.end method

.method private static bj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static bk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1011
    if-eqz p0, :cond_0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    :goto_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    sget-object v1, Lcom/android/settings/search/e;->Eq:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static bn(Landroid/content/Context;)Lcom/android/settings/search/e;
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/android/settings/search/e;->aiJ:Lcom/android/settings/search/e;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/android/settings/search/e;

    const-string v1, "com.android.settings"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/search/e;->aiJ:Lcom/android/settings/search/e;

    .line 217
    :goto_0
    sget-object v0, Lcom/android/settings/search/e;->aiJ:Lcom/android/settings/search/e;

    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcom/android/settings/search/e;->aiJ:Lcom/android/settings/search/e;

    invoke-virtual {v0, p0}, Lcom/android/settings/search/e;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1067
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    array-length v3, p2

    .line 686
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 687
    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_0

    .line 691
    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1073
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1079
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1085
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1091
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->b(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/j;->bo(Landroid/content/Context;)Lcom/android/settings/search/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/j;->bo(Landroid/content/Context;)Lcom/android/settings/search/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1097
    sget-object v0, Lcom/android/settings/fz;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 425
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 426
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 433
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 435
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 439
    const-string v4, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-direct {p0, v2}, Lcom/android/settings/search/e;->be(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 323
    :try_start_0
    invoke-static {p2}, Lcom/android/settings/search/m;->bm(Ljava/lang/String;)I

    move-result v5

    .line 325
    iget-object v0, p0, Lcom/android/settings/search/e;->aiM:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    .line 328
    :goto_0
    invoke-static {p2}, Lcom/android/settings/search/e;->bf(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 329
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 332
    invoke-static {p2}, Lcom/android/settings/search/e;->bg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 333
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/e;->b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 335
    const/4 v0, 0x1

    .line 339
    :goto_1
    return v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 339
    goto :goto_1
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/e;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/e;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 348
    return-void
.end method

.method private rx()V
    .locals 5

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    monitor-enter v1

    .line 523
    :try_start_0
    new-instance v0, Lcom/android/settings/search/i;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/search/i;-><init>(Lcom/android/settings/search/e;Lcom/android/settings/search/f;)V

    .line 524
    iget-object v2, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    invoke-virtual {v2}, Lcom/android/settings/search/h;->rz()Lcom/android/settings/search/h;

    move-result-object v2

    .line 525
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/settings/search/h;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Lcom/android/settings/search/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 526
    iget-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    invoke-virtual {v0}, Lcom/android/settings/search/h;->clear()V

    .line 527
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic ry()J
    .locals 2

    .prologue
    .line 88
    sget-wide v0, Lcom/android/settings/search/e;->aiI:J

    return-wide v0
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 355
    invoke-static {p2}, Lcom/android/settings/search/e;->bh(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    sget-object v2, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/search/e;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v0, Lcom/android/settings/search/e;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/provider/SearchIndexableData;)V
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    iget-object v0, v0, Lcom/android/settings/search/h;->aiO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    iget-object v0, v0, Lcom/android/settings/search/h;->aiQ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/provider/SearchIndexableData;)V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    iget-object v0, v0, Lcom/android/settings/search/h;->aiP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "class name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    invoke-static {p1}, Lcom/android/settings/search/o;->bn(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    .line 477
    if-nez v0, :cond_1

    .line 478
    const-string v0, "Index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 482
    iput-boolean p3, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 483
    if-eqz p2, :cond_2

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/settings/search/e;->b(Landroid/provider/SearchIndexableData;)V

    .line 486
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/search/e;->a(Landroid/provider/SearchIndexableData;)V

    .line 487
    iget-object v1, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/search/h;->aiR:Z

    .line 488
    invoke-direct {p0}, Lcom/android/settings/search/e;->rx()V

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    goto :goto_0
.end method

.method public ba(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/search/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 235
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    .line 237
    sget-object v2, Lcom/android/settings/search/e;->aiG:[Ljava/lang/String;

    invoke-direct {p0, p1, v2, v7}, Lcom/android/settings/search/e;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 238
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search primary query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    aput-object v3, v1, v6

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/settings/search/e;->aiH:[Ljava/lang/String;

    invoke-direct {p0, p1, v4, v6}, Lcom/android/settings/search/e;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v4, " EXCEPT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Search secondary query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v1, v7

    .line 251
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0
.end method

.method public bb(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/settings/search/e;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/android/settings/search/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bd(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 287
    new-instance v0, Lcom/android/settings/search/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/g;-><init>(Lcom/android/settings/search/e;Lcom/android/settings/search/f;)V

    .line 288
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/search/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    :try_start_0
    invoke-virtual {v0}, Lcom/android/settings/search/g;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 296
    :goto_0
    return-wide v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v1, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 293
    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    const-string v1, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert saved query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 296
    goto :goto_0
.end method

.method public c(Landroid/provider/SearchIndexableData;)V
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/android/settings/search/e;->a(Landroid/provider/SearchIndexableData;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/search/e;->aiL:Lcom/android/settings/search/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/search/h;->aiR:Z

    .line 495
    invoke-direct {p0}, Lcom/android/settings/search/e;->rx()V

    .line 496
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/settings/search/e;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 305
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 306
    :goto_0
    if-ge v1, v3, :cond_1

    .line 307
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 308
    invoke-direct {p0, v0}, Lcom/android/settings/search/e;->h(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 312
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 314
    invoke-direct {p0, v0, v4}, Lcom/android/settings/search/e;->q(Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    invoke-direct {p0, v0, v4}, Lcom/android/settings/search/e;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/search/e;->rx()V

    .line 319
    return-void
.end method
