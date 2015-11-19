.class public final Lmiui/provider/Notes$Utils;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# static fields
.field private static final IMAGE_DIMENSION_MAX:I = 0x780

.field private static final KEY_DATA_BYTES:Ljava/lang/String; = "data_bytes"

.field private static final KEY_DATA_VALUES:Ljava/lang/String; = "data_values"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    .local p1, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 782
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data_values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 783
    const-string v1, "data_bytes"

    invoke-static {v0}, Lmiui/provider/Notes$Utils;->marshall(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 785
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static clearAccount(Landroid/content/Context;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wipeData"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Lmiui/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    if-eqz p1, :cond_1

    .line 668
    const-string v2, "_id>0"

    .line 669
    .local v2, "selection":Ljava/lang/String;
    sget-object v6, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notes"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 707
    if-eqz p1, :cond_0

    .line 708
    invoke-static {p0}, Lmiui/provider/Notes$Utils;->updateAllWidgets(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 716
    :cond_0
    :goto_1
    return v4

    .line 674
    .end local v2    # "selection":Ljava/lang/String;
    :cond_1
    const-string v2, "not (parent_id>=0 OR parent_id=-2)"

    .line 675
    .restart local v2    # "selection":Ljava/lang/String;
    sget-object v6, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v2, "_id>0"

    .line 679
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 680
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "sync_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    const-string v6, "sync_tag"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v6, "local_modified"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const-string v6, "version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const-string v6, "origin_parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const-string v6, "account_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    const-string v6, "sync_data1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string v6, "sync_data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v6, "sync_data3"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string v6, "sync_data4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v6, "sync_data5"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string v6, "sync_data6"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v6, "sync_data7"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v6, "sync_data8"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    sget-object v6, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "values":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 699
    .restart local v3    # "values":Landroid/content/ContentValues;
    const-string v6, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    const-string v6, "file_id"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    sget-object v6, Lmiui/provider/Notes$Data;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 711
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Notes"

    const-string v6, "Fail to clear account"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    move v4, v5

    .line 716
    goto/16 :goto_1

    .line 713
    :catch_1
    move-exception v0

    .line 714
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v4, "Notes"

    const-string v6, "Fail to clear account"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "imgPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 479
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 480
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v1}, Lmiui/provider/Notes$Utils;->scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 482
    const-string v3, "Notes"

    const-string v4, "Fail to createThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-object v2

    .line 486
    :cond_0
    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lmiui/provider/Notes$Utils;->rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    if-nez v0, :cond_1

    .line 488
    const-string v3, "Notes"

    const-string v4, "Fail to rotateBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 492
    goto :goto_0
.end method

.method public static getTotalUnsyncedCount(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 838
    invoke-static {p0}, Lmiui/provider/Notes$Utils;->getUnsyncedCount(Landroid/content/Context;)[I

    move-result-object v2

    .line 839
    .local v2, "counts":[I
    const/4 v5, 0x0

    .line 840
    .local v5, "totalCount":I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 841
    .local v1, "count":I
    add-int/2addr v5, v1

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 843
    .end local v1    # "count":I
    :cond_0
    return v5
.end method

.method public static getUnsyncedCount(Landroid/content/Context;)[I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 850
    const/4 v8, 0x0

    .line 851
    .local v8, "noteCount":I
    const/4 v7, 0x0

    .line 852
    .local v7, "folderCount":I
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    const-string v0, "type"

    aput-object v0, v2, v11

    .line 853
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    .line 856
    .local v9, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    const-string v3, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 858
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 860
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 862
    .local v10, "type":I
    if-nez v10, :cond_1

    .line 863
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 864
    :cond_1
    if-ne v10, v11, :cond_0

    .line 865
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 869
    .end local v10    # "type":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 874
    :goto_1
    new-array v0, v13, [I

    aput v8, v0, v12

    aput v7, v0, v11

    return-object v0

    .line 869
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 872
    :cond_3
    const-string v0, "Notes"

    const-string v1, "getUnsyncedCount: cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 761
    .local p2, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/Notes$Utils;->insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteValues"    # Landroid/content/ContentValues;
    .param p3, "isSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p1, p2}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 769
    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    .line 770
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 771
    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 773
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static marshall(Landroid/os/Bundle;)[B
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 790
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static removeDataValuesFromNoteValues(Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "noteValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    const-string v3, "data_bytes"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 811
    .local v1, "data":[B
    const-string v3, "data_bytes"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 812
    if-eqz v1, :cond_0

    .line 813
    invoke-static {v1}, Lmiui/provider/Notes$Utils;->unmarshall([B)Landroid/os/Bundle;

    move-result-object v0

    .line 814
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "data_values"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 818
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 600
    const-string v12, "image/jpeg"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 658
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 606
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-direct {v4, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .local v4, "exif":Landroid/media/ExifInterface;
    const-string v12, "Orientation"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 613
    .local v7, "orientation":I
    const/4 v12, 0x1

    if-eq v7, v12, :cond_0

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 618
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 619
    .local v5, "height":I
    const/4 v9, 0x0

    .line 620
    .local v9, "swapDimension":Z
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 622
    .local v6, "matrix":Landroid/graphics/Matrix;
    packed-switch v7, :pswitch_data_0

    .line 638
    :goto_1
    :pswitch_0
    if-eqz v9, :cond_2

    .line 639
    move v10, v11

    .line 640
    .local v10, "tmp":I
    move v11, v5

    .line 641
    move v5, v10

    .line 644
    .end local v10    # "tmp":I
    :cond_2
    const/4 v8, 0x0

    .line 645
    .local v8, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 647
    .local v1, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 648
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 654
    if-eqz v2, :cond_5

    .line 655
    invoke-virtual {v2}, Landroid/graphics/Canvas;->release()V

    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_2
    move-object/from16 p1, v8

    .line 658
    goto :goto_0

    .line 607
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "exif":Landroid/media/ExifInterface;
    .end local v5    # "height":I
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "orientation":I
    .end local v8    # "result":Landroid/graphics/Bitmap;
    .end local v9    # "swapDimension":Z
    .end local v11    # "width":I
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "Notes"

    const-string v13, "createThumbnail fail"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 624
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "exif":Landroid/media/ExifInterface;
    .restart local v5    # "height":I
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "orientation":I
    .restart local v9    # "swapDimension":Z
    .restart local v11    # "width":I
    :pswitch_1
    const/high16 v12, 0x42b40000    # 90.0f

    div-int/lit8 v13, v5, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-virtual {v6, v12, v13, v14}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 625
    const/4 v9, 0x1

    .line 626
    goto :goto_1

    .line 628
    :pswitch_2
    const/high16 v12, 0x43340000    # 180.0f

    div-int/lit8 v13, v11, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-virtual {v6, v12, v13, v14}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 631
    :pswitch_3
    const/high16 v12, 0x43870000    # 270.0f

    div-int/lit8 v13, v11, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v11, 0x2

    int-to-float v14, v14

    invoke-virtual {v6, v12, v13, v14}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 632
    const/4 v9, 0x1

    .line 633
    goto :goto_1

    .line 650
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "result":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 651
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_3
    const-string v12, "Notes"

    const-string v13, "Fail to rotateBitmap"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 654
    if-eqz v1, :cond_3

    .line 655
    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    goto :goto_2

    .line 653
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v12

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 654
    if-eqz v1, :cond_4

    .line 655
    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    :cond_4
    throw v12

    .line 653
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_4

    .line 650
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_3

    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    move-object v1, v2

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/16 v0, 0x780

    const/4 v11, 0x1

    .line 497
    iput-boolean v11, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 498
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 499
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 500
    .local v1, "width":I
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 501
    .local v2, "height":I
    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    .line 502
    :cond_0
    const/4 v6, 0x0

    .line 532
    :goto_0
    return-object v6

    .line 506
    :cond_1
    const/4 v6, 0x0

    .line 508
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-gt v1, v0, :cond_2

    if-gt v2, v0, :cond_2

    .line 509
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 511
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v10, 0x44f00000    # 1920.0f

    div-float v9, v0, v10

    .line 512
    .local v9, "scaleRatio":F
    const/4 v0, 0x1

    int-to-float v10, v1

    div-float/2addr v10, v9

    float-to-int v10, v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 513
    .local v3, "destWidth":I
    const/4 v0, 0x1

    int-to-float v10, v2

    div-float/2addr v10, v9

    float-to-int v10, v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 514
    .local v4, "destHeight":I
    float-to-int v8, v9

    .line 515
    .local v8, "sampleRatio":I
    const/4 v5, 0x1

    .line 516
    .local v5, "sampleSize":I
    :goto_1
    if-le v8, v11, :cond_3

    .line 517
    shl-int/lit8 v5, v5, 0x1

    .line 518
    shr-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 523
    :cond_3
    mul-int v0, v1, v2

    mul-int v10, v5, v5

    div-int/2addr v0, v10

    const v10, 0x708000

    if-le v0, v10, :cond_4

    move-object v0, p0

    .line 524
    invoke-static/range {v0 .. v5}, Lmiui/provider/Notes$Utils;->scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 526
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v3, v4, v0}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 529
    .end local v3    # "destWidth":I
    .end local v4    # "destHeight":I
    .end local v5    # "sampleSize":I
    .end local v8    # "sampleRatio":I
    .end local v9    # "scaleRatio":F
    :catch_0
    move-exception v7

    .line 530
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "Notes"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to decode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "destWidth"    # I
    .param p4, "destHeight"    # I
    .param p5, "sampleSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v9

    .line 538
    .local v9, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v2, 0x0

    .line 539
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 540
    .local v13, "region":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 543
    .local v3, "canvas":Landroid/graphics/Canvas;
    shr-int/lit8 v8, p1, 0x1

    .line 544
    .local v8, "centerWidth":I
    shr-int/lit8 v7, p2, 0x1

    .line 545
    .local v7, "centerHeight":I
    shr-int/lit8 v6, p3, 0x1

    .line 546
    .local v6, "centerDestWidth":I
    shr-int/lit8 v5, p4, 0x1

    .line 547
    .local v5, "centerDestHeight":I
    :try_start_0
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 548
    .local v14, "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 549
    .local v10, "dstRect":Landroid/graphics/Rect;
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 550
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .local v4, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 552
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p5

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 555
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 556
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 557
    invoke-virtual {v9, v14, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 558
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v15, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 559
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v14, v8, v15, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 562
    const/4 v15, 0x0

    move/from16 v0, p3

    invoke-virtual {v10, v6, v15, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 563
    invoke-virtual {v9, v14, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 564
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v15, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 565
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 567
    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-virtual {v14, v15, v7, v8, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 568
    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-virtual {v10, v15, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 569
    invoke-virtual {v9, v14, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 570
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v15, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 571
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v8, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 574
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v6, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 575
    invoke-virtual {v9, v14, v12}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 576
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v15, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 577
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 585
    if-eqz v9, :cond_0

    .line 586
    invoke-virtual {v9}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 588
    :cond_0
    if-eqz v13, :cond_1

    .line 589
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_1
    if-eqz v4, :cond_9

    .line 592
    invoke-virtual {v4}, Landroid/graphics/Canvas;->release()V

    move-object v3, v4

    .line 596
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "dstRect":Landroid/graphics/Rect;
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "srcRect":Landroid/graphics/Rect;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    :goto_0
    return-object v2

    .line 578
    :catch_0
    move-exception v11

    .line 579
    .local v11, "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_2
    const-string v15, "Notes"

    const-string v16, "Fail to scaleBitmapByRegion"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    if-eqz v2, :cond_3

    .line 581
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    const/4 v2, 0x0

    .line 585
    :cond_3
    if-eqz v9, :cond_4

    .line 586
    invoke-virtual {v9}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 588
    :cond_4
    if-eqz v13, :cond_5

    .line 589
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_5
    if-eqz v3, :cond_2

    .line 592
    invoke-virtual {v3}, Landroid/graphics/Canvas;->release()V

    goto :goto_0

    .line 585
    .end local v11    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v15

    :goto_2
    if-eqz v9, :cond_6

    .line 586
    invoke-virtual {v9}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 588
    :cond_6
    if-eqz v13, :cond_7

    .line 589
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_7
    if-eqz v3, :cond_8

    .line 592
    invoke-virtual {v3}, Landroid/graphics/Canvas;->release()V

    :cond_8
    throw v15

    .line 585
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "dstRect":Landroid/graphics/Rect;
    .restart local v14    # "srcRect":Landroid/graphics/Rect;
    :catchall_1
    move-exception v15

    move-object v3, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    goto :goto_2

    .line 578
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :catch_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    goto :goto_1

    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    move-object v3, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0
.end method

.method private static unmarshall([B)Landroid/os/Bundle;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 800
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static updateAllAlarms(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 826
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 832
    return-void
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # J
    .param p3, "noteValues"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 734
    .local p4, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lmiui/provider/Notes$Utils;->updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "noteId"    # J
    .param p3, "noteValues"    # Landroid/content/ContentValues;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "isSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 741
    .local p4, "dataValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p3, p4}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    .line 742
    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 743
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p7, :cond_0

    .line 744
    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p5, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
