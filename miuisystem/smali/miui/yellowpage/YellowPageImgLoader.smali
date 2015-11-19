.class public Lmiui/yellowpage/YellowPageImgLoader;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image;
    }
.end annotation


# static fields
.field private static final YELLOWPAGE_PHOTO_DOWNLOAD_WIFI_ONLY:Ljava/lang/String; = "yellowpage_photo_download_wifi_only"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static cancelLoading(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 231
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 232
    return-void
.end method

.method public static getDataSha1Digest([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 243
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v2

    .line 248
    :cond_1
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 249
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lmiui/yellowpage/YellowPageImgLoader;->getHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 251
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    const/16 v4, 0x9

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 260
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v1, v3, 0x4

    .line 261
    .local v1, "c":I
    if-ltz v1, :cond_0

    if-gt v1, v4, :cond_0

    add-int/lit8 v3, v1, 0x30

    :goto_1
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    aget-byte v3, p0, v2

    and-int/lit8 v1, v3, 0xf

    .line 263
    if-ltz v1, :cond_1

    if-gt v1, v4, :cond_1

    add-int/lit8 v3, v1, 0x30

    :goto_2
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_0
    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    .line 263
    :cond_1
    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v3, v3, -0xa

    goto :goto_2

    .line 265
    .end local v1    # "c":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 272
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string v0, "width"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    const-string v0, "height"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 274
    const-string v3, "format"

    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    if-ne p4, v0, :cond_1

    const-string v0, "jpg"

    :goto_0
    invoke-virtual {v6, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 276
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    :cond_0
    :goto_1
    return-object v2

    .line 274
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v0, "png"

    goto :goto_0

    .line 281
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 282
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 284
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 363
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 364
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yellowpage_photo_download_wifi_only"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;Ljava/lang/String;III)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "defaultImageRes"    # I

    .prologue
    .line 307
    new-instance v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-static {p0, p4, p5, p6, p3}, Lmiui/yellowpage/HostManager;->getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V

    .line 308
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 309
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p7}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 310
    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultImageRes"    # I

    .prologue
    .line 214
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 215
    return-void
.end method

.method public static loadPhoneDisplayAd(Landroid/content/Context;JLjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # J
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "isIncoming"    # Z

    .prologue
    .line 326
    if-eqz p4, :cond_0

    const/4 v12, 0x1

    .line 327
    .local v12, "callType":I
    :goto_0
    sget-object v1, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_PHONE_AD:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 328
    .local v11, "builder":Landroid/net/Uri$Builder;
    const-string v1, "number"

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 329
    const-string v1, "yid"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 330
    const-string v1, "callType"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 333
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const/4 v10, 0x0

    .line 357
    :goto_1
    return-object v10

    .line 326
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "builder":Landroid/net/Uri$Builder;
    .end local v12    # "callType":I
    :cond_0
    const/4 v12, 0x2

    goto :goto_0

    .line 337
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v11    # "builder":Landroid/net/Uri$Builder;
    .restart local v12    # "callType":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 338
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 339
    .local v8, "url":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 341
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 345
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_3
    const/4 v10, 0x0

    .line 350
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 351
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    new-instance v3, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {v3, v8}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 352
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 354
    :cond_4
    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    :goto_2
    move-object v3, p0

    move-object/from16 v4, p3

    move v5, v12

    invoke-static/range {v3 .. v9}, Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 345
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 354
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static loadPhoto(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # J
    .param p3, "fetchRemote"    # Z

    .prologue
    .line 117
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 120
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    if-eqz p3, :cond_1

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p3, 0x1

    .line 123
    :goto_0
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 120
    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

.method public static loadPhotoByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 136
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    if-eqz p2, :cond_1

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 139
    :goto_0
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 136
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .prologue
    .line 320
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 321
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;JI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "yid"    # J
    .param p5, "defaultThumbnailRes"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 173
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 174
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p5}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 175
    return-void
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "defaultThumbnailRes"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 188
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 189
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 190
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "processor"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultThumbnailRes"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 202
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    .line 203
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    .line 204
    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 157
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;ZII)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fetchRemote"    # Z
    .param p3, "defaultRes"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    .line 152
    .local v0, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static pauseLoading(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->pauseLoading()V

    .line 223
    return-void
.end method

.method public static resumeLoading(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->resumeLoading()V

    .line 240
    return-void
.end method
