.class public Lcom/miui/fmradio/backup/FmRadioManager;
.super Ljava/lang/Object;
.source "FmRadioManager.java"


# static fields
.field public static final FM_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mFreqSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.miui.fmradio/station"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/backup/FmRadioManager;->FM_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mResolver:Landroid/content/ContentResolver;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mFreqSet:Ljava/util/HashSet;

    .line 30
    invoke-direct {p0}, Lcom/miui/fmradio/backup/FmRadioManager;->initFreqSet()V

    .line 31
    return-void
.end method

.method private initFreqSet()V
    .locals 8

    .prologue
    .line 34
    const/4 v6, 0x0

    .line 36
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/fmradio/backup/FmRadioManager;->FM_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "frequnecy"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 44
    if-nez v6, :cond_1

    .line 52
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const-string v0, "frequnecy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 49
    .local v7, "freq":I
    iget-object v0, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mFreqSet:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v7    # "freq":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 52
    :cond_3
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public AddStationEntry(Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;)Z
    .locals 7
    .param p1, "stationEntry"    # Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getFrequency()I

    move-result v0

    .line 98
    .local v0, "freq":I
    invoke-virtual {p1}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->getType()I

    move-result v2

    .line 99
    .local v2, "type":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v4

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mFreqSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "label"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v4, "frequnecy"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v4, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    iget-object v4, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/miui/fmradio/backup/FmRadioManager;->FM_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 110
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getStationEntryList()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 60
    .local v10, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;>;"
    const/4 v7, 0x0

    .line 62
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/backup/FmRadioManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/fmradio/backup/FmRadioManager;->FM_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "frequnecy"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 72
    if-nez v7, :cond_1

    .line 88
    if-eqz v7, :cond_0

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_0
    :goto_0
    return-object v10

    .line 75
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string v0, "label"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "label":Ljava/lang/String;
    const-string v0, "frequnecy"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 78
    .local v8, "freq":I
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 79
    .local v11, "type":I
    invoke-static {}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;->newBuilder()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    move-result-object v6

    .line 80
    .local v6, "builder":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {v6, v9}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 83
    :cond_2
    invoke-virtual {v6, v8}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setFrequency(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 84
    invoke-virtual {v6, v11}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->setType(I)Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;

    .line 85
    invoke-virtual {v6}, Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;->build()Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 88
    .end local v6    # "builder":Lcom/miui/fmradio/backup/FMRadioProtos$StationEntry$Builder;
    .end local v8    # "freq":I
    .end local v9    # "label":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 88
    :cond_4
    if-eqz v7, :cond_0

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
