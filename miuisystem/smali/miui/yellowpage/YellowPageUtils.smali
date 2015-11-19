.class public Lmiui/yellowpage/YellowPageUtils;
.super Ljava/lang/Object;
.source "YellowPageUtils.java"


# static fields
.field private static final ANTISPAM_COLUMN_CID:I = 0x1

.field private static final ANTISPAM_COLUMN_MARKED_COUNT:I = 0x3

.field private static final ANTISPAM_COLUMN_NORMALIZED_NUMBER:I = 0x4

.field private static final ANTISPAM_COLUMN_PID:I = 0x0

.field private static final ANTISPAM_COLUMN_TYPE:I = 0x2

.field private static final ANTISPAM_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_ANTISPAM:Ljava/lang/String; = "cloud_antispam"

.field private static final CLOUD_ANTISPAM_DISABLE:I = 0x0

.field private static final CLOUD_ANTISPAM_ENANBLE:I = 0x1

.field private static final PHONE_COLUMN_ATD_COUNT:I = 0xf

.field private static final PHONE_COLUMN_ATD_ID:I = 0xd

.field private static final PHONE_COLUMN_ATD_PROVIDER:I = 0x10

.field private static final PHONE_COLUMN_CALL_MENU:I = 0xb

.field private static final PHONE_COLUMN_NORMALIZED_NUMBER:I = 0x9

.field private static final PHONE_COLUMN_PHOTO_URL:I = 0x3

.field private static final PHONE_COLUMN_PROVIDER_ID:I = 0x1

.field private static final PHONE_COLUMN_SLOGAN:I = 0xe

.field private static final PHONE_COLUMN_SUSPECT:I = 0xa

.field private static final PHONE_COLUMN_T9_RANK:I = 0xc

.field private static final PHONE_COLUMN_TAG:I = 0x2

.field private static final PHONE_COLUMN_TAG_PINYIN:I = 0x7

.field private static final PHONE_COLUMN_THUMBNAIL_URL:I = 0x4

.field private static final PHONE_COLUMN_VISIBLE:I = 0x8

.field private static final PHONE_COLUMN_YID:I = 0x0

.field private static final PHONE_COLUMN_YP_NAME:I = 0x5

.field private static final PHONE_COLUMN_YP_NAME_PINYIN:I = 0x6

.field private static final PHONE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "YellowPageUtils"

.field private static final sCidCategories:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProviders:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/yellowpage/YellowPageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yid"

    aput-object v1, v0, v3

    const-string v1, "provider_id"

    aput-object v1, v0, v4

    const-string v1, "tag"

    aput-object v1, v0, v5

    const-string v1, "photo_url"

    aput-object v1, v0, v6

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "yellow_page_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yellow_page_name_pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tag_pinyin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hide"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suspect"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "call_menu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "t9_rank"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "atd_category_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "slogan"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "atd_count"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "atd_provider"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pid"

    aput-object v1, v0, v3

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "marked_count"

    aput-object v1, v0, v6

    const-string v1, "normalized_number"

    aput-object v1, v0, v7

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private static antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 828
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 832
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    :cond_2
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 835
    const/4 v0, 0x1

    goto :goto_0

    .line 837
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method private static buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 844
    const/4 v2, 0x0

    .line 845
    .local v2, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 847
    .local v16, "cid":I
    if-nez v16, :cond_1

    .line 848
    const-string v4, "YellowPageUtils"

    const-string v5, "invalid cid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/yellowpage/YellowPageUtils;->getCidName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 857
    .local v7, "cidName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 861
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 862
    .local v11, "providerId":I
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    const/4 v10, 0x3

    .line 866
    .local v10, "type":I
    :goto_1
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 867
    .local v12, "markedCount":I
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 869
    .local v9, "normalizedNumber":Ljava/lang/String;
    new-instance v3, Lmiui/yellowpage/YellowPagePhone;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v16}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V

    .line 873
    .local v3, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v2, :cond_2

    const/4 v4, 0x3

    if-ne v10, v4, :cond_0

    .line 874
    :cond_2
    move-object v2, v3

    .line 875
    const/4 v4, 0x3

    if-ne v10, v4, :cond_0

    .line 880
    .end local v3    # "phone":Lmiui/yellowpage/YellowPagePhone;
    .end local v7    # "cidName":Ljava/lang/String;
    .end local v9    # "normalizedNumber":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "providerId":I
    .end local v12    # "markedCount":I
    .end local v16    # "cid":I
    :cond_3
    return-object v2

    .line 862
    .restart local v7    # "cidName":Ljava/lang/String;
    .restart local v11    # "providerId":I
    .restart local v16    # "cid":I
    :cond_4
    const/4 v10, 0x2

    goto :goto_1
.end method

.method private static buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 22
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 744
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 745
    .local v11, "providerId":I
    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 746
    .local v7, "tag":Ljava/lang/String;
    const/4 v8, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 747
    .local v6, "ypName":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 748
    .local v4, "ypId":J
    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 749
    .local v14, "ypNamePinyin":Ljava/lang/String;
    const/4 v8, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 750
    .local v15, "tagPinyin":Ljava/lang/String;
    const/16 v8, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, "normalizedNumber":Ljava/lang/String;
    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v13, 0x1

    .line 752
    .local v13, "isVisible":Z
    :goto_0
    const/16 v8, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_1

    const/16 v16, 0x1

    .line 753
    .local v16, "suspect":Z
    :goto_1
    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_2

    const/16 v17, 0x1

    .line 754
    .local v17, "hasCallMenu":Z
    :goto_2
    const/16 v8, 0xc

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 755
    .local v20, "t9Rank":J
    const/16 v8, 0xd

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 756
    .local v2, "atdId":I
    const/16 v8, 0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 757
    .local v19, "slogan":Ljava/lang/String;
    const/16 v8, 0xf

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 758
    .local v12, "markedCount":I
    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 759
    .local v18, "atdPid":I
    new-instance v3, Lmiui/yellowpage/YellowPagePhone;

    const/4 v10, 0x1

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v17}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 762
    .local v3, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    .line 763
    invoke-virtual {v3, v2}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    .line 764
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    .line 765
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    .line 766
    return-object v3

    .line 751
    .end local v2    # "atdId":I
    .end local v3    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    .end local v12    # "markedCount":I
    .end local v13    # "isVisible":Z
    .end local v16    # "suspect":Z
    .end local v17    # "hasCallMenu":Z
    .end local v18    # "atdPid":I
    .end local v19    # "slogan":Ljava/lang/String;
    .end local v20    # "t9Rank":J
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 752
    .restart local v13    # "isVisible":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 753
    .restart local v16    # "suspect":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public static createAntispamCategory(Landroid/content/Context;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "YellowPageUtils"

    const-string v1, "The category name must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :goto_0
    return v7

    .line 407
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "MAX(cid)"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, "c":Landroid/database/Cursor;
    const/16 v7, 0x2710

    .line 410
    .local v7, "categoryId":I
    if-eqz v6, :cond_3

    .line 412
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 414
    .local v9, "maxCatId":I
    if-lt v9, v7, :cond_2

    .line 415
    add-int/lit8 v7, v9, 0x1

    .line 421
    .end local v9    # "maxCatId":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_3
    :goto_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "cid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v0, "names"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v10}, Lmiui/yellowpage/YellowPageUtils;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 418
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 419
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static formatPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 919
    const-string v0, "com.miui.yellowpage_preferences.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;

    move-result-object v0

    return-object v0
.end method

.method public static getAntispamNumberCategory(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "filterOneRingCall"    # Z

    .prologue
    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    const/4 v11, 0x0

    .line 496
    :cond_0
    :goto_0
    return-object v11

    .line 456
    :cond_1
    const/4 v11, 0x0

    .line 458
    .local v11, "customNumberCategory":Lmiui/yellowpage/AntispamCustomCategory;
    if-eqz p2, :cond_2

    const-string v3, "type<>4"

    .line 460
    .local v3, "selection":Ljava/lang/String;
    :goto_1
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 461
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    const/4 v11, 0x0

    goto :goto_0

    .line 458
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 466
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 467
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 469
    :try_start_0
    invoke-static {p0, v10, p1}, Lmiui/yellowpage/YellowPageUtils;->retrieveCategory(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 470
    if-eqz v11, :cond_4

    .line 478
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 472
    :cond_4
    :try_start_1
    invoke-static {v10}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    const/4 v11, 0x0

    .line 478
    .end local v11    # "customNumberCategory":Lmiui/yellowpage/AntispamCustomCategory;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v11    # "customNumberCategory":Lmiui/yellowpage/AntispamCustomCategory;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    if-eqz v10, :cond_0

    .line 488
    :try_start_2
    invoke-static {p0, v10, p1}, Lmiui/yellowpage/YellowPageUtils;->retrieveCategory(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    .line 492
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 475
    :catch_0
    move-exception v12

    .line 476
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 489
    :catch_1
    move-exception v12

    .line 490
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 492
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 680
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 681
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v7

    .line 685
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 686
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 688
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 692
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    .line 689
    goto :goto_1

    .line 692
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/yellowpage/AntispamCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    sget-object v8, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v8}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 371
    :goto_0
    return-object v8

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamCategory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "cid"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "names"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "type"

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string v9, "icon"

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string v9, "display_order"

    aput-object v9, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 356
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 357
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 358
    .local v1, "categoryId":I
    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "names":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 360
    .local v3, "type":I
    const/4 v8, 0x3

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "icon":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 362
    .local v5, "order":I
    new-instance v0, Lmiui/yellowpage/AntispamCategory;

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    .line 363
    .local v0, "category":Lmiui/yellowpage/AntispamCategory;
    sget-object v8, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 365
    .end local v0    # "category":Lmiui/yellowpage/AntispamCategory;
    .end local v1    # "categoryId":I
    .end local v2    # "names":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "icon":Ljava/lang/String;
    .end local v5    # "order":I
    :catch_0
    move-exception v7

    .line 366
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 371
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    sget-object v8, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_0

    .line 368
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v8

    .line 371
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static getCidName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # I

    .prologue
    const/4 v1, 0x0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "category":Lmiui/yellowpage/AntispamCategory;
    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "category":Lmiui/yellowpage/AntispamCategory;
    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    .line 324
    .restart local v0    # "category":Lmiui/yellowpage/AntispamCategory;
    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-object v1

    .line 324
    :cond_1
    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_2
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 330
    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "category":Lmiui/yellowpage/AntispamCategory;
    check-cast v0, Lmiui/yellowpage/AntispamCategory;

    .line 331
    .restart local v0    # "category":Lmiui/yellowpage/AntispamCategory;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/yellowpage/AntispamCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 706
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-object v3

    .line 711
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 712
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 714
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    invoke-static {v10, p1}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 718
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const-string v7, "type<>4"

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 726
    if-eqz v10, :cond_0

    .line 728
    :try_start_1
    invoke-static {p0, v10, p1}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 729
    .local v12, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v12, :cond_4

    .line 737
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v3, v12

    goto :goto_0

    .line 718
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 731
    .restart local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_4
    :try_start_2
    invoke-static {v10}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 734
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catch_0
    move-exception v11

    .line 735
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 737
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getIvrMenuByNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 560
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 561
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-object v3

    .line 564
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 567
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 569
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 573
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 770
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 771
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-object v3

    .line 776
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 777
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 779
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    invoke-static {v10, p1}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    const-string v7, "type<>4"

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 793
    if-eqz v10, :cond_6

    .line 795
    :try_start_1
    invoke-static {p0, v10, p1}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 796
    .local v12, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v12, :cond_4

    .line 804
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v3, v12

    goto :goto_0

    .line 782
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catch_0
    move-exception v11

    .line 783
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 798
    .restart local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_4
    :try_start_3
    invoke-static {v10}, Lmiui/yellowpage/YellowPageUtils;->antispamNumberNotInPresetFile(Landroid/database/Cursor;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    .line 804
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 809
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_PRESET_PHONE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lmiui/yellowpage/YellowPageUtils;->ANTISPAM_PROJECTION:[Ljava/lang/String;

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 812
    if-eqz v10, :cond_0

    .line 814
    :try_start_4
    invoke-static {p0, v10, p1}, Lmiui/yellowpage/YellowPageUtils;->buildAntispamInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v12

    .line 815
    .restart local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    if-eqz v12, :cond_7

    .line 821
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v3, v12

    goto :goto_0

    .line 801
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catch_1
    move-exception v11

    .line 802
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 804
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 821
    .restart local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 818
    .end local v12    # "phone":Lmiui/yellowpage/YellowPagePhone;
    :catch_2
    move-exception v11

    .line 819
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 821
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLocalYellowPagePhones(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 210
    :cond_0
    const/4 v15, 0x0

    .line 257
    :cond_1
    :goto_0
    return-object v15

    .line 213
    :cond_2
    sget-object v1, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    const/4 v15, 0x0

    goto :goto_0

    .line 217
    :cond_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v11, "norNumbersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v15, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPagePhone;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 220
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 221
    .local v14, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, "normalizedNumber":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 226
    :cond_5
    invoke-virtual {v11, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v9, v1, :cond_4

    .line 228
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 231
    .local v13, "num":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 232
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_7
    const-string v1, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 237
    .end local v13    # "num":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lmiui/yellowpage/YellowPageUtils;->PHONE_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalized_number IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 240
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 242
    :goto_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    const/16 v1, 0x9

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 244
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 245
    invoke-static {v7, v14}, Lmiui/yellowpage/YellowPageUtils;->buildYellowPagePhoneFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v17

    .line 246
    .local v17, "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    move-object/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 249
    .end local v17    # "ypPhone":Lmiui/yellowpage/YellowPagePhone;
    :catch_0
    move-exception v8

    .line 250
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 248
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_2
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "withCountryCode"    # Z
    .param p3, "defaultCountryCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v2

    .line 140
    :cond_1
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_NORMALIZED_NUMBER:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 142
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string v3, "withCountryCode"

    if-eqz p2, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v6, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    const-string v0, "defaultCountryCode"

    invoke-virtual {v6, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 148
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 152
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 142
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string v0, "false"

    goto :goto_1

    .line 158
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :cond_1
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->getLocalPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    .line 178
    .local v0, "phone":Lmiui/yellowpage/YellowPagePhone;
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 179
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->getCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    if-eqz p2, :cond_0

    .line 183
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 267
    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/yellowpage/YellowPageProvider;

    .line 268
    .local v12, "provider":Lmiui/yellowpage/YellowPageProvider;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v12

    .line 311
    :goto_0
    return-object v0

    .line 272
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$Provider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "icon"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "pid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "icon_big"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    move-object v13, v12

    .line 287
    .end local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .local v13, "provider":Lmiui/yellowpage/YellowPageProvider;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 290
    .local v10, "iconByte":[B
    if-nez v10, :cond_2

    const/4 v8, 0x0

    .line 292
    .local v8, "icon":Landroid/graphics/Bitmap;
    :goto_2
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 293
    if-nez v10, :cond_3

    const/4 v9, 0x0

    .line 295
    .local v9, "iconBig":Landroid/graphics/Bitmap;
    :goto_3
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 296
    .local v14, "providerId":I
    new-instance v12, Lmiui/yellowpage/YellowPageProvider;

    invoke-direct {v12, v14, v11, v8, v9}, Lmiui/yellowpage/YellowPageProvider;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :try_start_1
    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v12

    .line 298
    .end local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    goto :goto_1

    .line 290
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v9    # "iconBig":Landroid/graphics/Bitmap;
    .end local v14    # "providerId":I
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    array-length v1, v10

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    .line 293
    .restart local v8    # "icon":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    array-length v1, v10

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_3

    .line 302
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v10    # "iconByte":[B
    .end local v11    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v12, v13

    .line 306
    .end local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :cond_5
    :goto_4
    sget-object v0, Lmiui/yellowpage/YellowPageUtils;->sProviders:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    check-cast v12, Lmiui/yellowpage/YellowPageProvider;

    .line 307
    .restart local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    if-nez v12, :cond_6

    .line 309
    sget-object v12, Lmiui/yellowpage/YellowPageProvider;->DEFAULT_PROVIDER:Lmiui/yellowpage/YellowPageProvider;

    :cond_6
    move-object v0, v12

    .line 311
    goto/16 :goto_0

    .line 299
    .end local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :catch_0
    move-exception v7

    move-object v12, v13

    .line 300
    .end local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :goto_5
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :catchall_0
    move-exception v0

    move-object v12, v13

    .end local v13    # "provider":Lmiui/yellowpage/YellowPageProvider;
    .restart local v12    # "provider":Lmiui/yellowpage/YellowPageProvider;
    :goto_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 299
    .restart local v8    # "icon":Landroid/graphics/Bitmap;
    .restart local v9    # "iconBig":Landroid/graphics/Bitmap;
    .restart local v10    # "iconByte":[B
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "providerId":I
    :catch_1
    move-exception v7

    goto :goto_5
.end method

.method public static getUserAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 96
    sget-object v0, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$UserArea;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "area_code"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v7

    .line 108
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 893
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    const-string v0, "YellowPageUtils"

    const-string v1, "insert-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static isCloudAntispamEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cloud_antispam"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 901
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v1

    .line 904
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 905
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_2

    .line 906
    const-string v2, "YellowPageUtils"

    const-string v3, "The content provider is not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 911
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFraudIncomingNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simIndex"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "yid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 620
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_FRAUD_VERIFY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 621
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string v0, "simIndex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 622
    const-string v0, "incoming"

    invoke-virtual {v6, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 623
    const-string v0, "yid"

    invoke-virtual {v6, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 624
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 625
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v8

    .line 628
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 629
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 631
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 635
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_2
    move v0, v8

    .line 632
    goto :goto_1

    .line 635
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isFraudNumOnlineIdentificationEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    const-string v0, "online_fraud_enable"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 556
    :goto_0
    return v0

    .line 528
    :cond_0
    sget-object v0, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 529
    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 535
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 537
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    .end local v6    # "antispamNumber":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move v0, v9

    .line 556
    goto :goto_0

    .line 550
    :catch_0
    move-exception v8

    .line 551
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isIvrMenuExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 581
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Ivr;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 582
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v8

    .line 586
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "exist"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 590
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 592
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    .line 596
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_2
    move v0, v8

    .line 593
    goto :goto_1

    .line 596
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isNeverRemindSmartAntispamEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 642
    const-string v0, "never_remind_user_enable_antispam"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRemindIgnoredUserSuspectNumber(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    const-string v0, "remind_user_suspect_number"

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->getBooleanSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYellowPageAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 504
    .local v1, "locale":Ljava/util/Locale;
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v5, :cond_3

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v2, v3

    .line 506
    .local v2, "mainlandBuild":Z
    :goto_0
    const-string v5, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 507
    .local v0, "indianBuild":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .end local v0    # "indianBuild":Z
    .end local v2    # "mainlandBuild":Z
    :cond_3
    move v2, v4

    .line 504
    goto :goto_0
.end method

.method public static isYellowPageEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static markAntiSpam(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "delete"    # Z

    .prologue
    const/4 v3, 0x0

    .line 384
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "categoryId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v1, "delete"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 389
    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamNumber;->CONTENT_MARK_NUMBER_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0, v3, v3}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method private static retrieveCategory(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lmiui/yellowpage/AntispamCustomCategory;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 646
    const/4 v11, 0x0

    .line 647
    .local v11, "category":Lmiui/yellowpage/AntispamCategory;
    const/4 v8, 0x0

    .line 648
    .local v8, "typeCustom":Z
    const/4 v7, 0x0

    .line 649
    .local v7, "markedCount":I
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->getCategories(Landroid/content/Context;)Ljava/util/List;

    .line 650
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 652
    .local v9, "catId":I
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 654
    .local v13, "type":I
    sget-object v1, Lmiui/yellowpage/YellowPageUtils;->sCidCategories:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/yellowpage/AntispamCategory;

    .line 655
    .local v10, "cate":Lmiui/yellowpage/AntispamCategory;
    const/4 v1, 0x3

    if-ne v13, v1, :cond_2

    const/4 v12, 0x1

    .line 656
    .local v12, "custom":Z
    :goto_1
    if-eqz v11, :cond_1

    if-eqz v12, :cond_0

    .line 657
    :cond_1
    move-object v11, v10

    .line 658
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 659
    move v8, v12

    goto :goto_0

    .line 655
    .end local v12    # "custom":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 663
    .end local v9    # "catId":I
    .end local v10    # "cate":Lmiui/yellowpage/AntispamCategory;
    .end local v13    # "type":I
    :cond_3
    const/4 v0, 0x0

    .line 664
    .local v0, "customNumberCate":Lmiui/yellowpage/AntispamCustomCategory;
    if-eqz v11, :cond_4

    .line 665
    new-instance v0, Lmiui/yellowpage/AntispamCustomCategory;

    .end local v0    # "customNumberCate":Lmiui/yellowpage/AntispamCustomCategory;
    invoke-virtual {v11}, Lmiui/yellowpage/AntispamCategory;->getCategoryId()I

    move-result v1

    invoke-virtual {v11}, Lmiui/yellowpage/AntispamCategory;->getCategoryAllNames()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lmiui/yellowpage/AntispamCategory;->getCategoryType()I

    move-result v3

    invoke-virtual {v11}, Lmiui/yellowpage/AntispamCategory;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lmiui/yellowpage/AntispamCategory;->getOrder()I

    move-result v5

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v8}, Lmiui/yellowpage/AntispamCustomCategory;-><init>(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ)V

    .line 671
    .restart local v0    # "customNumberCate":Lmiui/yellowpage/AntispamCustomCategory;
    :cond_4
    return-object v0
.end method

.method private static update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 884
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    const-string v0, "YellowPageUtils"

    const-string v1, "update-The provider is not installed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 699
    sget-object v0, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI_CLOUD:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0, v0, v1, v2, v2}, Lmiui/yellowpage/YellowPageUtils;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method public static updatePhoneInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "YellowPageUtils"

    const-string v1, "updatePhoneInfo updateCloud"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p0, p1}, Lmiui/yellowpage/YellowPageUtils;->updateCloudPhoneInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method
