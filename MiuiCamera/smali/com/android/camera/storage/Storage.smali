.class public Lcom/android/camera/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static BUCKET_ID:I

.field public static DIRECTORY:Ljava/lang/String;

.field public static FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

.field public static HIDEDIRECTORY:Ljava/lang/String;

.field public static PRIMARY_BUCKET_ID:I

.field private static final PRIMARY_STORAGE_PATH:Ljava/lang/String;

.field public static SECONDARY_BUCKET_ID:I

.field private static final SECONDARY_STORAGE_PATH:Ljava/lang/String;

.field public static sCurrentStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 54
    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 59
    sget-boolean v1, Lcom/android/camera/Device;->IS_HM:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    :goto_0
    sput-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Lcom/android/camera/storage/Storage;->PRIMARY_BUCKET_ID:I

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Lcom/android/camera/storage/Storage;->SECONDARY_BUCKET_ID:I

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "unUsedFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    :cond_0
    return-void

    .line 59
    .end local v0    # "unUsedFile":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v3, ".dng"

    invoke-static {p1, v3}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 300
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dng"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "media_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 313
    .local v1, "th":Ljava/lang/Throwable;
    const-string v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addImage(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZ)Landroid/net/Uri;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mirror"    # Z

    .prologue
    .line 88
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZ)Landroid/net/Uri;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "mirror"    # Z
    .param p10, "isHide"    # Z
    .param p11, "isMap"    # Z

    .prologue
    .line 96
    move-object/from16 v0, p1

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 99
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    if-eqz p9, :cond_2

    .line 101
    :try_start_1
    invoke-static/range {p6 .. p6}, Lcom/android/camera/storage/Storage;->flipJpeg([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 102
    .local v4, "b":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 103
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v4, v14, v15, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v10, v0, v1, v14, v15}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v4    # "b":Landroid/graphics/Bitmap;
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 120
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    if-eqz p11, :cond_0

    .line 130
    invoke-static/range {p6 .. p6}, Lcom/android/camera/Util;->isProduceFocusInfoSuccess([B)Z

    move-result v7

    .line 131
    .local v7, "focusSuccess":Z
    invoke-static/range {p6 .. p8}, Lcom/android/camera/Util;->getCenterFocusDepthIndex([BII)I

    move-result v5

    .line 132
    .local v5, "centerFocused":I
    const/4 v15, 0x0

    if-eqz v7, :cond_3

    const-string v14, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 133
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 134
    new-instance v15, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v7, :cond_4

    const-string v14, "_"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, p10

    move/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 136
    if-nez v7, :cond_0

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/android/camera/storage/Storage;->deleteImage(Ljava/lang/String;)V

    .line 140
    .end local v5    # "centerFocused":I
    .end local v7    # "focusSuccess":Z
    :cond_0
    if-eqz p10, :cond_5

    if-nez p11, :cond_5

    const/4 v12, 0x0

    move-object v8, v9

    .line 178
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :goto_3
    return-object v12

    .line 109
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    .end local v4    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 115
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    const-string v14, "CameraStorage"

    const-string v15, "Failed to write image"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    const/4 v12, 0x0

    .line 119
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 120
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 121
    :catch_1
    move-exception v6

    .line 122
    const-string v14, "CameraStorage"

    const-string v15, "Failed to flush/close stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v12, 0x0

    goto :goto_3

    .line 112
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_6
    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 118
    :catchall_0
    move-exception v14

    move-object v8, v9

    .line 119
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 120
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 123
    throw v14

    .line 121
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 122
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v14, "CameraStorage"

    const-string v15, "Failed to flush/close stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v12, 0x0

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 121
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 122
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v14, "CameraStorage"

    const-string v15, "Failed to flush/close stream"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v12, 0x0

    goto :goto_3

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "centerFocused":I
    .restart local v7    # "focusSuccess":Z
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_3
    const-string v14, "_UBIFOCUS_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_1

    .line 134
    :cond_4
    const-string v14, "_UBIFOCUS_"

    goto/16 :goto_2

    .line 143
    .end local v5    # "centerFocused":I
    .end local v7    # "focusSuccess":Z
    :cond_5
    new-instance v13, Landroid/content/ContentValues;

    const/16 v14, 0xb

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 144
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "title"

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v14, "_display_name"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v14, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v14, "mime_type"

    const-string v15, "image/jpeg"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v14, "orientation"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v14, "_data"

    invoke-virtual {v13, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v14, "_size"

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v14, "width"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v14, "height"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    if-eqz p4, :cond_6

    .line 156
    const-string v14, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 157
    const-string v14, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 160
    :cond_6
    const/4 v12, 0x0

    .line 162
    .local v12, "uri":Landroid/net/Uri;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v12

    .line 174
    :goto_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v14

    if-nez v14, :cond_7

    .line 175
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    move-object v8, v9

    .line 178
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 163
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v11

    .line 169
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    const-string v14, "CameraStorage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to write MediaStore"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 118
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "th":Ljava/lang/Throwable;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    goto/16 :goto_5

    .line 114
    :catch_5
    move-exception v6

    goto/16 :goto_4
.end method

.method public static deleteImage(Ljava/lang/String;)V
    .locals 7
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "hideFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 185
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method public static flipJpeg([B)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "jpeg"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v11, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 324
    if-nez p0, :cond_1

    move-object v7, v10

    .line 347
    :cond_0
    :goto_0
    return-object v7

    .line 325
    :cond_1
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 326
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 327
    array-length v1, p0

    invoke-static {p0, v2, v1, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 329
    .local v5, "m":Landroid/graphics/Matrix;
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 333
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 336
    .local v7, "flip":Landroid/graphics/Bitmap;
    if-eq v7, v0, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v11, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v11, :cond_0

    :cond_3
    move-object v7, v10

    .line 341
    goto :goto_0

    .line 344
    .end local v7    # "flip":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 345
    .local v9, "t":Ljava/lang/Throwable;
    const-string v1, "CameraStorage"

    const-string v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v10

    .line 347
    goto :goto_0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string v0, ".jpg"

    invoke-static {p0, v0}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "isHide"    # Z
    .param p2, "isMap"    # Z

    .prologue
    .line 355
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, ".y"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ".jpg"

    goto :goto_2
.end method

.method public static getAvailableSpace()J
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    .line 368
    if-nez p0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-wide v6

    .line 371
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "dir":Ljava/io/File;
    const/16 v5, 0x1ff

    invoke-static {v0, v5, v8, v8}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    move-result v2

    .line 373
    .local v2, "needScan":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    if-eqz v2, :cond_2

    const-string v5, "/DCIM/Camera"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    new-instance v3, Landroid/content/Intent;

    const-string v5, "miui.intent.action.MEDIA_SCANNER_SCAN_FOLDER"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, "scanIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 382
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    .end local v3    # "scanIntent":Landroid/content/Intent;
    :cond_2
    :try_start_0
    sget-object v5, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".nomedia"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    .line 390
    :cond_3
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 391
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    goto :goto_0

    .line 392
    .end local v4    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraStorage"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    const-wide/16 v6, -0x3

    goto/16 :goto_0
.end method

.method public static hasSecondaryStorage()Z
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSecondaryStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowStorageSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-static {p0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRelatedStorage(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 468
    if-eqz p0, :cond_1

    .line 469
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 474
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static newImage(Landroid/content/Context;Ljava/lang/String;JIII)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "orientation"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 193
    invoke-static {p1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "path":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 196
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v4, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v4, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    :goto_0
    return-object v2

    .line 206
    :catch_0
    move-exception v1

    .line 212
    .local v1, "th":Ljava/lang/Throwable;
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to new image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readSystemPriorityStorage()V
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->isPriorityStorage()Z

    move-result v0

    .line 462
    .local v0, "isPriorityStorage":Z
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPriorityStoragePreference(Z)V

    .line 463
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    :goto_0
    sput-object v1, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    .line 465
    return-void

    .line 463
    :cond_0
    sget-object v1, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public static saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method public static secondaryStorageMounted()Z
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static switchStoragePathIfNeeded()V
    .locals 7

    .prologue
    .line 436
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    sget-object v0, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 438
    .local v0, "firstConsiderPath":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 439
    .local v3, "secondCondiderPath":Ljava/lang/String;
    sget-object v4, Lcom/android/camera/storage/Storage;->FIRST_CONSIDER_STORAGE_PATH:Ljava/lang/String;

    sget-object v5, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    sget-object v0, Lcom/android/camera/storage/Storage;->SECONDARY_STORAGE_PATH:Ljava/lang/String;

    .line 441
    sget-object v3, Lcom/android/camera/storage/Storage;->PRIMARY_STORAGE_PATH:Ljava/lang/String;

    .line 443
    :cond_0
    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v1

    .line 444
    .local v1, "isFirstConsiderLowSpace":Z
    invoke-static {v3}, Lcom/android/camera/storage/Storage;->isLowStorageSpace(Ljava/lang/String;)Z

    move-result v2

    .line 445
    .local v2, "isSeconConsiderLowSpace":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    if-nez v1, :cond_3

    .line 448
    sput-object v0, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    .line 452
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera/.ubifocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/camera/storage/Storage;->HIDEDIRECTORY:Ljava/lang/String;

    .line 454
    sget-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sput v4, Lcom/android/camera/storage/Storage;->BUCKET_ID:I

    .line 455
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage path is switched path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_3
    sput-object v3, Lcom/android/camera/storage/Storage;->sCurrentStoragePath:Ljava/lang/String;

    goto :goto_1
.end method

.method public static updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jpeg"    # [B
    .param p2, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "oldTitle"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static/range {p4 .. p4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "path":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p9, :cond_4

    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".tmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "tmpPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 224
    .local v3, "out":Ljava/io/FileOutputStream;
    const-wide/16 v4, 0x0

    .line 226
    .local v4, "fileLength":J
    if-eqz p1, :cond_6

    .line 229
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_5

    .line 232
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v6

    .line 248
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 249
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 250
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    :cond_1
    :goto_2
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v9, "tmpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 258
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 262
    new-instance v11, Landroid/content/ContentValues;

    const/16 v12, 0x9

    invoke-direct {v11, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 263
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "title"

    move-object/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v12, "_display_name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_9

    .line 266
    const-string v12, "mime_type"

    const-string v13, "image/jpeg"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v12, "orientation"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v12, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v12, "width"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v12, "height"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    if-eqz p5, :cond_2

    .line 274
    const-string v12, "latitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 275
    const-string v12, "longitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 277
    :cond_2
    const-string v12, "_data"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 290
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    const/4 v12, 0x1

    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_4
    return v12

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "fileLength":J
    .end local v9    # "tmpFile":Ljava/io/File;
    .end local v10    # "tmpPath":Ljava/lang/String;
    :cond_4
    move-object v12, v7

    .line 222
    goto/16 :goto_0

    .line 233
    .restart local v4    # "fileLength":J
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "tmpPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v12, "CameraStorage"

    const-string v13, "Failed to rewrite Exif"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object v3, v6

    .line 236
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 238
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 240
    :cond_6
    if-eqz p9, :cond_0

    .line 241
    :try_start_5
    invoke-static/range {p9 .. p9}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    goto/16 :goto_1

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "CameraStorage"

    const-string v13, "Failed to flush/close stream"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 243
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 244
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    const-string v12, "CameraStorage"

    const-string v13, "Failed to write image"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    const/4 v12, 0x0

    .line 248
    if-eqz v3, :cond_7

    .line 249
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 250
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 256
    :cond_7
    :goto_6
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v9    # "tmpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 258
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_4

    .line 252
    .end local v9    # "tmpFile":Ljava/io/File;
    :catch_3
    move-exception v2

    .line 253
    const-string v13, "CameraStorage"

    const-string v14, "Failed to flush/close stream"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 248
    :goto_7
    if-eqz v3, :cond_8

    .line 249
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 250
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 256
    :cond_8
    :goto_8
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v9    # "tmpFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 258
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 259
    throw v12

    .line 252
    .end local v9    # "tmpFile":Ljava/io/File;
    :catch_4
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v13, "CameraStorage"

    const-string v14, "Failed to flush/close stream"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "tmpFile":Ljava/io/File;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_9
    if-eqz p9, :cond_3

    .line 279
    const-string v12, "_data"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 284
    :catch_5
    move-exception v8

    .line 285
    .local v8, "th":Ljava/lang/Throwable;
    const-string v12, "CameraStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to update image"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 247
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "th":Ljava/lang/Throwable;
    .end local v9    # "tmpFile":Ljava/io/File;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v12

    move-object v3, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 243
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v3, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public static updateImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v2, 0x1

    .line 407
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 408
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "th":Ljava/lang/Throwable;
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to updateMediaStore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x0

    goto :goto_0
.end method
