.class public Lmiui/yellowpage/MiPubUtils;
.super Ljava/lang/Object;
.source "MiPubUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    }
.end annotation


# static fields
.field private static final COLUMN_THUMBNAIL_URL:I = 0x1

.field private static final COLUMN_YELLOWPAGE_NAME:I = 0x2

.field private static final COLUMN_YID:I = 0x0

.field private static final EXTRA_MULTI_MODULE_ENTRY_RAW:Ljava/lang/String; = "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"

.field private static final FOLLOW_CONFIRM_IN_YP_DETAIL:Ljava/lang/String; = "follow_confirm_in_yp_detail"

.field private static final FOLLOW_HAS_CONFIRMED_IN_YP_DETAIL:Ljava/lang/String; = "follow_has_confirmed_in_yp_detail"

.field private static final MENU_HAS_BEEN_FIRSTLY_READ:Ljava/lang/String; = "pref_menu_has_been_firstly_read"

.field private static final MENU_READ_IN_SMS_CONVERSATION:Ljava/lang/String; = "pref_menu_read_in_sms_conversation"

.field private static final MIPUB_DEVICE_ID:Ljava/lang/String; = "pref_mipub_random_device_id"

.field private static final RANDOM_BASE_STRING:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

.field private static final TAG:Ljava/lang/String; = "MipubUtils"

.field private static final XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

.field private static final YELLOWPAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "yellow_page_name"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    .line 34
    const-string v0, ".*@xiaomi.com(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "yellowPageId"    # J
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    const/16 v16, 0x0

    .line 416
    .local v16, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 417
    .local v7, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 418
    .local v14, "scopeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 420
    .local v9, "intentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v17, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 421
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v13, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    const-string v17, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 423
    const-string v17, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 424
    const-string v17, "scope"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 425
    const-string v17, "intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 426
    const-string v17, "subItemsFlag"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v15

    .line 428
    .local v15, "subItemsFlag":[Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 429
    if-eqz p4, :cond_0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    and-int v17, v17, p4

    if-lez v17, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 430
    .local v10, "isScopeAvailable":Z
    :goto_1
    if-eqz v10, :cond_2

    .line 431
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 432
    .local v8, "intent":Landroid/content/Intent;
    new-instance v11, Lmiui/yellowpage/ModuleIntent;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aget-boolean v19, v15, v6

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v8, v1, v2}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;IZ)V

    .line 435
    .local v11, "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    aget-boolean v17, v15, v6

    if-eqz v17, :cond_1

    .line 437
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    const-string v17, "com.miui.yellowpage.extra.MULTI_MODULE_ENTRY_RAW"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .local v12, "moduleJson":Lorg/json/JSONObject;
    const-string v17, "subItems"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/yellowpage/MiPubUtils;->getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lmiui/yellowpage/ModuleIntent;->setSubModuleIntent(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v12    # "moduleJson":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 429
    .end local v10    # "isScopeAvailable":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 439
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "isScopeAvailable":Z
    .restart local v11    # "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    :catch_0
    move-exception v5

    .line 440
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 448
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v6    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "isScopeAvailable":Z
    .end local v11    # "moduleIntent":Lmiui/yellowpage/ModuleIntent;
    .end local v13    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    .end local v15    # "subItemsFlag":[Z
    :cond_4
    const/4 v13, 0x0

    :cond_5
    return-object v13
.end method

.method private static convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    const/4 v5, 0x0

    .line 397
    .local v5, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 398
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 399
    .local v3, "intentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v6, "intent"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 400
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v4, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    const-string v6, "title"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 402
    const-string v6, "id"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 403
    const-string v6, "intent"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 405
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 406
    .local v2, "intent":Landroid/content/Intent;
    new-instance v8, Lmiui/yellowpage/ModuleIntent;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v8, v6, v2, v7}, Lmiui/yellowpage/ModuleIntent;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/yellowpage/ModuleIntent;>;"
    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method

.method public static getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "yellowPage":Lmiui/yellowpage/YellowPage;
    :try_start_0
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    :try_end_0
    .catch Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
    invoke-virtual {v0}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v3, "request.yellowpage.remote.miid"

    invoke-static {p0, v3, p1}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "status":Ljava/lang/String;
    const-string v3, "MipubUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getYellowPage:The status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "data":Ljava/lang/String;
    invoke-static {p0, v1}, Lmiui/yellowpage/MiPubUtils;->parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v3

    .line 166
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 163
    :cond_0
    const-string v3, "network_access_denied"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    new-instance v3, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;

    invoke-direct {v3}, Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;-><init>()V

    throw v3

    .line 166
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_mipub_random_device_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "MipubUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The random device id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_mipub_random_device_id"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    :cond_0
    return-object v0
.end method

.method private static getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const-string v0, "follow_confirm_in_yp_detail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getHashedDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    const-string v0, "device.hashed_device_info"

    invoke-static {p0, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hashed_device_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v5

    .line 118
    :cond_1
    sget-object v0, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "content"

    aput-object v3, v2, v8

    const-string v3, "miid=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 136
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 140
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

.method public static getLocalYellowPages(Landroid/content/Context;Ljava/util/Set;)Ljava/util/HashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/yellowpage/YellowPage;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "miIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object v4

    .line 223
    :cond_1
    sget-object v0, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$YellowPage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "miid"

    aput-object v3, v2, v5

    const-string v3, "content"

    aput-object v3, v2, v10

    const-string v3, "miid IS NOT NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 238
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v8, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/yellowpage/YellowPage;>;"
    :try_start_0
    const-string v0, "MipubUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query miids count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "miId":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v9

    .line 244
    .local v9, "yellowPage":Lmiui/yellowpage/YellowPage;
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {p1, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 265
    .end local v7    # "miId":Ljava/lang/String;
    .end local v9    # "yellowPage":Lmiui/yellowpage/YellowPage;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 250
    :cond_3
    :try_start_1
    const-string v0, "MipubUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query remote yellowpage by miid with cout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 252
    new-instance v0, Lmiui/yellowpage/MiPubUtils$1;

    invoke-direct {v0, p1, p0}, Lmiui/yellowpage/MiPubUtils$1;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-static {v0}, Lmiui/yellowpage/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    goto/16 :goto_0
.end method

.method private static getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string v0, "pref_menu_read_in_sms_conversation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMipub(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPageMipub;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mipubId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v3

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 64
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 66
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 68
    .local v6, "yid":J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "thumbnailName":Ljava/lang/String;
    new-instance v3, Lmiui/yellowpage/YellowPageMipub;

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lmiui/yellowpage/YellowPageMipub;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "yid":J
    .end local v8    # "thumbnailName":Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getMipubName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mipubId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 452
    sget-object v0, Lmiui/yellowpage/YellowPageContract$MiPub;->CONTENT_URI_YELLOWPAGE:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 453
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v3

    .line 457
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lmiui/yellowpage/MiPubUtils;->YELLOWPAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 458
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 460
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 464
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

.method public static getYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 204
    .local v0, "yellowPage":Lmiui/yellowpage/YellowPage;
    if-nez v0, :cond_0

    .line 205
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 207
    :cond_0
    return-object v0
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "remote"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 330
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    const-string v2, "remote"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string v2, "hasScope"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string v2, "yellowpage.menu"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 334
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;JZI)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "remote"    # Z
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    const-string v2, "remote"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string v2, "hasScope"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v2, "yellowpage.menu"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 343
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p0, v1, p1, p2, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "yellowPageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v2, "jsonString"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "yellowpage.parsemenu"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 357
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {v1}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageMenu(Landroid/content/Context;Ljava/lang/String;JI)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "yellowPageId"    # J
    .param p4, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/yellowpage/ModuleIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 370
    const-string v2, "jsonString"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "yellowpage.parsesubmenu"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 372
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p0, v1, p2, p3, p4}, Lmiui/yellowpage/MiPubUtils;->convertBundleToModules(Landroid/content/Context;Landroid/os/Bundle;JI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static getYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "miId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/yellowpage/MiPubUtils$NetworkAccessDeniedException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getLocalYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 149
    .local v0, "yellowPage":Lmiui/yellowpage/YellowPage;
    if-nez v0, :cond_0

    .line 150
    invoke-static {p0, p1}, Lmiui/yellowpage/MiPubUtils;->getCloudYellowPageThrowException(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method public static isFollowConfirmed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "follow_has_confirmed_in_yp_detail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 97
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isServiceNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-static {p1}, Lmiui/yellowpage/MiPubUtils;->isXiaomiJID(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsMenuRead(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J

    .prologue
    .line 277
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "pref_menu_has_been_firstly_read"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    .local v0, "defaultValue":Z
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isXiaomiAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/yellowpage/MiPubUtils;->XM_ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static isXiaomiJID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->isXiaomiAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_0
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Lmiui/yellowpage/MiPubUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 391
    const-string v1, "yellowpage.isnetworkallowed"

    invoke-static {p0, v1, v2, v2}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 392
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static parseYellowPage(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "yellowpage.insert"

    const-string v4, "yp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 176
    const-string v3, "yp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/yellowpage/YellowPage;->fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 182
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final randomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "count"    # I

    .prologue
    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 306
    .local v2, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 307
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 308
    .local v1, "index":I
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static setFollowConfirmed(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasConfirmed"    # Z

    .prologue
    .line 299
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getFollowConfirmPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "follow_has_confirmed_in_yp_detail"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    return-void
.end method

.method public static setSmsMenuRead(Landroid/content/Context;JZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yellowPageId"    # J
    .param p3, "read"    # Z

    .prologue
    .line 283
    invoke-static {p0}, Lmiui/yellowpage/MiPubUtils;->getMenuReadInSmsPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_menu_has_been_firstly_read"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method public static setYellowPageNetworkAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v1, "yellowpage.setnetworkallowed"

    invoke-static {p0, v1, v2, v2}, Lmiui/yellowpage/InvocationHandler;->invoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "networkAllowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static trimDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const/4 p0, 0x0

    .line 110
    .end local p0    # "account":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 105
    .end local v0    # "index":I
    .restart local p0    # "account":Ljava/lang/String;
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 106
    .restart local v0    # "index":I
    if-lez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
