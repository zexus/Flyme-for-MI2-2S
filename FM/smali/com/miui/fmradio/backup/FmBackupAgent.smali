.class public Lcom/miui/fmradio/backup/FmBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "FmBackupAgent.java"


# instance fields
.field private mManager:Lcom/miui/fmradio/backup/FmRadioManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVersion(I)I
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 9
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v7, Lcom/miui/fmradio/backup/FmRadioManager;

    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FmBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/miui/fmradio/backup/FmRadioManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/miui/fmradio/backup/FmBackupAgent;->mManager:Lcom/miui/fmradio/backup/FmRadioManager;

    .line 33
    const/4 v3, 0x0

    .line 35
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 37
    .local v6, "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->getFmradio()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 42
    :cond_0
    if-nez v1, :cond_2

    .line 43
    const/4 v7, 0x6

    .line 53
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_1
    move-object v3, v4

    .line 57
    .end local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_0
    return v7

    .line 45
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->getStationEntryList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .line 46
    .local v5, "stationEntry":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    iget-object v7, p0, Lcom/miui/fmradio/backup/FmBackupAgent;->mManager:Lcom/miui/fmradio/backup/FmRadioManager;

    invoke-virtual {v7, v5}, Lcom/miui/fmradio/backup/FmRadioManager;->AddStationEntry(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 48
    .end local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "stationEntry":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    .end local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 49
    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    const-string v7, "FM:FmBackupAgent"

    const-string v8, "Cannot import stationlist from FMRadio"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 57
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    const/4 v7, 0x0

    goto :goto_0

    .line 53
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    :cond_4
    if-eqz v4, :cond_6

    .line 54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 50
    .end local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "FM:FmBackupAgent"

    const-string v8, "Cannot import stationlist from FMRadio"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v7

    .line 53
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_5

    .line 50
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_4

    .line 48
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v1    # "fmRadio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "syncRoot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;
    :cond_6
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 9
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v7, Lcom/miui/fmradio/backup/FmRadioManager;

    invoke-virtual {p0}, Lcom/miui/fmradio/backup/FmBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/miui/fmradio/backup/FmRadioManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/miui/fmradio/backup/FmBackupAgent;->mManager:Lcom/miui/fmradio/backup/FmRadioManager;

    .line 63
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    move-result-object v0

    .line 64
    .local v0, "fmradio":Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;
    iget-object v7, p0, Lcom/miui/fmradio/backup/FmBackupAgent;->mManager:Lcom/miui/fmradio/backup/FmRadioManager;

    invoke-virtual {v7}, Lcom/miui/fmradio/backup/FmRadioManager;->getStationEntryList()Ljava/util/Vector;

    move-result-object v5

    .line 65
    .local v5, "stationList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .line 66
    .local v4, "stationEntry":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    invoke-virtual {v0, v4}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->addStationEntry(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;

    goto :goto_0

    .line 68
    .end local v4    # "stationEntry":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;
    :cond_0
    invoke-static {}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    move-result-object v6

    .line 69
    .local v6, "syncroot":Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v0}, Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio$Builder;->build()Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->setFmradio(Lcom/miui/fmradio/backup/FMRadioProtos$FMRadio;)Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/miui/fmradio/backup/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 79
    :cond_1
    const/4 v7, 0x0

    return v7

    .line 75
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v7

    .line 75
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
