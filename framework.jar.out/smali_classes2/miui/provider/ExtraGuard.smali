.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraGuard$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final CLOUD_BLACK:I = 0x1

.field private static final CLOUD_SCAN_KEY:Ljava/lang/String; = "cloud_scan"

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final INVALID_FLAG:I = 0x64

.field public static final SAFE_GUARD_CHOOSED:Ljava/lang/String; = "safe_guard_choosed"

.field private static final SMS_BLACK:I = 0x2

.field private static final SMS_WHITE:I = 0x1

.field public static final VIRUS_BLACK:I = 0x2

.field public static final VIRUS_GRAY:I = 0x3

.field public static final VIRUS_WHITE:I = 0x1

.field private static gService:Lcom/android/internal/app/IMediaContainerService;

.field private static final mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

.field private static mVirusType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    .line 49
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    .line 53
    new-instance v0, Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    invoke-direct {v0}, Lmiui/provider/ExtraGuard$DefaultContainerConnection;-><init>()V

    sput-object v0, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 31
    sput-object p0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    return-object p0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v3, -0x3

    .line 345
    :goto_0
    return v3

    .line 289
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 290
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 291
    .local v17, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 292
    .local v20, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 294
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 295
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 297
    .local v13, "index":I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 299
    .end local v13    # "index":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 304
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 305
    const/4 v3, -0x3

    goto :goto_0

    .line 301
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 309
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 310
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 311
    .local v14, "info":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 312
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 313
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 314
    .local v16, "packageName":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 317
    .local v15, "msg":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 319
    const/16 v3, -0x1c

    goto :goto_0

    .line 322
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 323
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 328
    .local v8, "antiVirusUri":Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 329
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v10, "contentValues":Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 332
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 338
    .local v19, "result":I
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 339
    :cond_7
    const/16 v3, -0x1b

    goto/16 :goto_0

    .line 342
    .end local v8    # "antiVirusUri":Landroid/net/Uri;
    .end local v10    # "contentValues":Landroid/content/ContentValues;
    .end local v19    # "result":I
    :catch_1
    move-exception v3

    .line 345
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v1, -0x3

    .line 414
    :goto_0
    return v1

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 358
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 359
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 365
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 367
    .end local v8    # "index":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 372
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    const/4 v1, -0x3

    goto :goto_0

    .line 369
    :cond_3
    if-eqz v12, :cond_4

    const-string v1, "file"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 377
    :cond_5
    const/16 v1, 0x64

    if-eq p2, v1, :cond_6

    :try_start_0
    sget-object v1, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v1, :cond_6

    .line 378
    sget-object v1, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    const/4 v2, 0x0

    invoke-interface {v1, v10, p2, v2}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v11

    .line 379
    .local v11, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v11, :cond_6

    .line 380
    iget-object v1, v11, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v2, v11, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 383
    .local v9, "msg":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 385
    const/16 v1, -0x1c

    goto :goto_0

    .line 389
    .end local v9    # "msg":Ljava/lang/String;
    .end local v11    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v7

    .line 390
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v3, -0x3

    .line 130
    :goto_0
    return v3

    .line 74
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 76
    .local v17, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 77
    .local v20, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 79
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 80
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 82
    .local v13, "index":I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 84
    .end local v13    # "index":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 89
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    const/4 v3, -0x3

    goto :goto_0

    .line 86
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 94
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 95
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 96
    .local v14, "info":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 97
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 99
    .local v16, "packageName":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 102
    .local v15, "msg":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 104
    const/16 v3, -0x1c

    goto :goto_0

    .line 107
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 108
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 113
    .local v8, "antiVirusUri":Landroid/net/Uri;
    if-eqz v8, :cond_7

    .line 114
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v10, "contentValues":Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 123
    .local v19, "result":I
    sput v19, Lmiui/provider/ExtraGuard;->mVirusType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 125
    const/16 v3, -0x1b

    goto/16 :goto_0

    .line 128
    .end local v8    # "antiVirusUri":Landroid/net/Uri;
    .end local v10    # "contentValues":Landroid/content/ContentValues;
    .end local v19    # "result":I
    :catch_1
    move-exception v3

    .line 130
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 142
    const/16 v16, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v16

    .line 145
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 146
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 147
    .local v14, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 150
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    const-string v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 153
    .local v10, "index":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 155
    .end local v10    # "index":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    const/16 v16, 0x0

    goto :goto_0

    .line 157
    :cond_4
    if-eqz v17, :cond_5

    const-string v3, "file"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 165
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 166
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 167
    .local v11, "info":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_7

    .line 168
    iget-object v7, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 169
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 170
    .local v13, "packageName":Ljava/lang/String;
    iget v3, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 173
    .local v12, "msg":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 175
    const/16 v16, 0x0

    goto :goto_0

    .line 178
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "msg":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 179
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v8, 0x0

    .line 184
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v3, "content://guard/sync_scan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 185
    .local v2, "antiUri":Landroid/net/Uri;
    if-eqz v2, :cond_9

    .line 186
    new-instance v16, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct/range {v16 .. v16}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 187
    .local v16, "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v5, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 190
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    if-eqz v8, :cond_9

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 193
    const-string v3, "Type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 194
    const-string v3, "Description"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 196
    const-string v3, "VirusName"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_8
    if-eqz v8, :cond_0

    .line 206
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v9

    .line 208
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 204
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    :cond_9
    if-eqz v8, :cond_a

    .line 206
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    .end local v2    # "antiUri":Landroid/net/Uri;
    :cond_a
    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v2    # "antiUri":Landroid/net/Uri;
    :catch_2
    move-exception v9

    .line 208
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 201
    .end local v2    # "antiUri":Landroid/net/Uri;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 202
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    if-eqz v8, :cond_a

    .line 206
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 207
    :catch_4
    move-exception v9

    .line 208
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 204
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_b

    .line 206
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 209
    :cond_b
    :goto_3
    throw v3

    .line 207
    :catch_5
    move-exception v9

    .line 208
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v5, "AntiSmsSpamUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 425
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 426
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 432
    .local v1, "result":I
    if-ne v1, v9, :cond_0

    .line 437
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "result":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 432
    goto :goto_0

    .line 434
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 437
    goto :goto_0
.end method

.method public static checkSomeApkForVirusInfo(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/provider/ExtraGuardVirusInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 224
    if-nez p1, :cond_0

    move-object v8, v11

    .line 262
    :goto_0
    return-object v8

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "AntiVirusScanForCloudInfoUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    .local v1, "antiUri":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 233
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    move-object v4, p1

    .line 235
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 237
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    new-instance v9, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v9}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 239
    .local v9, "singleEntity":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const-string v2, "app_type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 240
    .local v10, "type":I
    const/4 v2, 0x2

    if-eq v10, v2, :cond_2

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    .line 241
    :cond_2
    invoke-virtual {v9, v10}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 242
    const-string v2, "virus_description"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 244
    const-string v2, "solve_advice"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setAdvice(I)V

    .line 246
    const-string v2, "virus_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 248
    const-string v2, "package_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setPackageName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    .end local v1    # "antiUri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    .end local v9    # "singleEntity":Lmiui/provider/ExtraGuardVirusInfoEntity;
    .end local v10    # "type":I
    :catch_0
    move-exception v7

    .line 260
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v8, v11

    .line 262
    goto :goto_0

    .line 253
    .restart local v1    # "antiUri":Landroid/net/Uri;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    const/4 v6, 0x0

    .line 256
    goto :goto_0
.end method

.method public static getAllProvinces(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 445
    const/4 v7, 0x0

    .line 447
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionProvincesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 448
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 451
    if-eqz v7, :cond_1

    .line 452
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 453
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 456
    .local v10, "name":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 463
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 468
    :goto_1
    return-object v9

    .line 458
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getBrands(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operatorId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 543
    const/4 v7, 0x0

    .line 545
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionBrandsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 546
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 552
    if-eqz v7, :cond_1

    .line 553
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 554
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 557
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 564
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 565
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 569
    :goto_1
    return-object v9

    .line 559
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCities(Landroid/content/Context;I)Ljava/util/Map;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 477
    const/4 v7, 0x0

    .line 479
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionCitiesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 480
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 486
    if-eqz v7, :cond_1

    .line 487
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 488
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 491
    .local v10, "name":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 498
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 503
    :goto_1
    return-object v9

    .line 493
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getOperators(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 511
    const/4 v7, 0x0

    .line 513
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionOperatorsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 514
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 516
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 517
    if-eqz v7, :cond_1

    .line 518
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 519
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 521
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 529
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 530
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 534
    :goto_1
    return-object v9

    .line 524
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSMSInstructons(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 624
    const/4 v7, 0x0

    .line 626
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionInstructionsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 627
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 629
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 630
    if-eqz v7, :cond_1

    .line 631
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 632
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    const-string v2, "address"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 634
    .local v6, "address":Ljava/lang/String;
    const-string v2, "message"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 635
    .local v10, "message":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "address":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "message":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 642
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 647
    :goto_1
    return-object v9

    .line 637
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getTrafficCorrectionResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Long;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderNum"    # Ljava/lang/String;
    .param p2, "returnedSms"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v6, 0x0

    .line 659
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "TrafficCorrectionResultUri"

    invoke-static {p0, v0}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 662
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 667
    if-eqz v6, :cond_1

    .line 668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 669
    const-string v0, "used"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    .line 670
    .local v12, "used":J
    const-string v0, "left"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    .line 671
    .local v8, "left":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "left":J
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "used":J
    :goto_0
    return-object v0

    .line 677
    :catch_0
    move-exception v7

    .line 678
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_0

    .line 679
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 681
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 683
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safe_guard_choosed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 695
    const-string v3, "com.miui.guardprovider"

    .line 697
    :cond_0
    const/4 v5, 0x0

    .line 698
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 699
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "miui.intent.action.safeguard"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 702
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 703
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "authorities":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 706
    .end local v0    # "authorities":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getVirusType()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "service":Landroid/content/Intent;
    sget-object v1, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    return-void
.end method

.method public static saveTrafficCorrectionConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # Ljava/lang/String;
    .param p2, "cityId"    # Ljava/lang/String;
    .param p3, "operatorId"    # Ljava/lang/String;
    .param p4, "brandId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 603
    :try_start_0
    const-string v5, "TrafficCorrectionConfigUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 604
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 606
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 616
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 606
    goto :goto_0

    .line 613
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 616
    goto :goto_0
.end method

.method public static setTmsAutoConnectNetworkEnabled(Landroid/content/Context;Z)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 715
    :try_start_0
    const-string v5, "TmsAutoConnectNetwprkUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 716
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 718
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 728
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 718
    goto :goto_0

    .line 725
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 728
    goto :goto_0
.end method

.method public static stopCurrentScan(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 271
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "AntiVirusScanForStopCloudScanUri"

    invoke-static {p0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 272
    .local v0, "antiUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 273
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "antiUri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSMSTemplate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # Ljava/lang/String;
    .param p2, "cityId"    # Ljava/lang/String;
    .param p3, "operatorId"    # Ljava/lang/String;
    .param p4, "brandId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 579
    :try_start_0
    const-string v5, "TrafficCorrectionUpdateUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 580
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 582
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 592
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 582
    goto :goto_0

    .line 589
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 592
    goto :goto_0
.end method
