.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Lcom/android/settings/BaseFragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static aaE:[I


# instance fields
.field private FN:Landroid/widget/Button;

.field private final Gd:Landroid/content/BroadcastReceiver;

.field private In:Landroid/widget/TextView;

.field private Io:Landroid/view/ViewGroup;

.field private Ip:Landroid/widget/Button;

.field private Iq:Landroid/view/ViewGroup;

.field Ki:Landroid/content/ComponentName;

.field private aaF:I

.field private aaG:[I

.field private aaH:[D

.field private aaI:Landroid/view/ViewGroup;

.field private aaJ:Landroid/view/ViewGroup;

.field private aaK:Lcom/android/internal/os/BatterySipper$DrainType;

.field private aaL:Landroid/graphics/drawable/Drawable;

.field private aaM:D

.field private aaN:Z

.field private aaO:Z

.field aaP:Landroid/content/pm/ApplicationInfo;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mPackages:[Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaE:[I

    return-void

    :array_0
    .array-data 4
        0x7f0906e3
        0x7f0906e4
        0x7f0906e2
        0x7f0906e9
        0x7f0906eb
        0x7f0906e6
        0x7f0906e7
        0x7f0906ee
        0x7f0906f2
        0x7f0906f3
        0x7f0906f5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 692
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Gd:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V
    .locals 14

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    .line 102
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string v3, "title"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "percent"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->value:D

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v2, "gauge"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->value:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v2, "duration"

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsPeriod()J

    move-result-wide v4

    invoke-virtual {v10, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    const-string v2, "iconPackage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yp:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "iconId"

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v2, "noCoverage"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v10, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 112
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "uid"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_0
    const-string v2, "drainType"

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 116
    const-string v2, "showLocationButton"

    move/from16 v0, p4

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 121
    sget-object v3, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v4, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 262
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v3, 0x0

    const v5, 0x7f0906d7

    aput v5, v4, v3

    .line 265
    const/4 v3, 0x1

    new-array v3, v3, [D

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 270
    :goto_0
    const-string v5, "types"

    invoke-virtual {v10, v5, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 271
    const-string v3, "values"

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 277
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0906bd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v10

    invoke-static/range {v2 .. v8}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 286
    :goto_1
    return-void

    .line 125
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v11, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 126
    const/16 v3, 0xc

    new-array v9, v3, [I

    fill-array-data v9, :array_0

    .line 140
    const/16 v3, 0xc

    new-array v8, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x2

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x5

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x6

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/4 v3, 0x7

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/16 v3, 0x8

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/16 v3, 0x9

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v4, v4

    aput-wide v4, v8, v3

    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    aput-wide v4, v8, v3

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    aput-wide v4, v8, v3

    .line 155
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_1

    .line 156
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 157
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v4, v12, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 158
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v6

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 160
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 161
    const-string v2, "report_details"

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 164
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-direct {v3, v2, v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStatsType()I

    move-result v5

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v4, p0, v3, v5, v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V

    .line 167
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 168
    const-string v3, "report_checkin_details"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_1
    move-object v3, v9

    move v4, v2

    move-object v2, v8

    .line 173
    goto/16 :goto_0

    .line 176
    :pswitch_1
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    .line 181
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 187
    goto/16 :goto_0

    .line 190
    :pswitch_2
    const/16 v3, 0x8

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    .line 200
    const/16 v3, 0x8

    new-array v3, v3, [D

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x3

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x4

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 210
    goto/16 :goto_0

    .line 213
    :pswitch_3
    const/16 v3, 0x8

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    .line 223
    const/16 v3, 0x8

    new-array v3, v3, [D

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->usageTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x3

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x4

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v5, 0x7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    long-to-double v6, v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 233
    goto/16 :goto_0

    .line 236
    :pswitch_4
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    .line 241
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 246
    goto/16 :goto_0

    .line 249
    :pswitch_5
    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    .line 254
    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    aput-wide v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    aput-wide v6, v3, v5

    move-object v13, v3

    move-object v3, v4

    move v4, v2

    move-object v2, v13

    .line 259
    goto/16 :goto_0

    .line 283
    :cond_2
    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0906bd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v10

    invoke-static/range {v2 .. v8}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 126
    :array_0
    .array-data 4
        0x7f0906ca
        0x7f0906cb
        0x7f0906cc
        0x7f0906cd
        0x7f0906ce
        0x7f0906d1
        0x7f0906d0
        0x7f0906d2
        0x7f0906d4
        0x7f0906d3
        0x7f0906d5
        0x7f0906d6
    .end array-data

    .line 176
    :array_1
    .array-data 4
        0x7f0906d7
        0x7f0906d8
        0x7f0906d2
    .end array-data

    .line 190
    :array_2
    .array-data 4
        0x7f0906ce
        0x7f0906ca
        0x7f0906cb
        0x7f0906cc
        0x7f0906d1
        0x7f0906d0
        0x7f0906d4
        0x7f0906d3
    .end array-data

    .line 213
    :array_3
    .array-data 4
        0x7f0906d7
        0x7f0906ca
        0x7f0906cb
        0x7f0906cc
        0x7f0906d1
        0x7f0906d0
        0x7f0906d4
        0x7f0906d3
    .end array-data

    .line 236
    :array_4
    .array-data 4
        0x7f0906d9
        0x7f0906da
        0x7f0906db
    .end array-data

    .line 249
    :array_5
    .array-data 4
        0x7f0906d9
        0x7f0906da
        0x7f0906db
    .end array-data
.end method

.method private aJ(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 495
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    return-void

    .line 497
    :pswitch_0
    const-class v1, Lcom/android/settings/MiuiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09035f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 503
    :pswitch_1
    const-class v1, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090291

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 509
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090207

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 513
    :pswitch_3
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090174

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 517
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->iz()V

    goto :goto_0

    .line 522
    :pswitch_5
    const-class v1, Lcom/android/settings/location/MiuiLocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0901ae

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 526
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->jz()V

    goto :goto_0

    .line 529
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->pv()V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private bL(I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 578
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 581
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 583
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 586
    :cond_1
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaK:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v1, v2

    .line 631
    :goto_1
    if-eqz v1, :cond_3

    .line 632
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaI:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 634
    :cond_3
    return-void

    .line 589
    :pswitch_1
    if-eqz v4, :cond_5

    array-length v0, v4

    if-ne v0, v2, :cond_5

    .line 590
    const v0, 0x7f0906dd

    const v2, 0x7f0906ef

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    move v0, v1

    .line 598
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaN:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaO:Z

    if-eqz v2, :cond_4

    .line 599
    const v0, 0x7f0901ae

    const v2, 0x7f0906f0

    const/4 v3, 0x6

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    goto :goto_1

    .line 605
    :pswitch_2
    const v0, 0x7f09038f

    const v3, 0x7f0906e8

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    goto :goto_1

    .line 611
    :pswitch_3
    const v0, 0x7f090291

    const v2, 0x7f0906ea

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    goto :goto_1

    .line 617
    :pswitch_4
    const v0, 0x7f090207

    const v2, 0x7f0906ec

    const/4 v3, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    goto :goto_1

    .line 623
    :pswitch_5
    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaM:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2

    .line 624
    const v0, 0x7f090174

    const v2, 0x7f0906e5

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->c(III)V

    goto :goto_1

    .line 582
    :catch_0
    move-exception v3

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private bM(I)V
    .locals 3

    .prologue
    .line 650
    const/4 v0, 0x1

    .line 651
    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaK:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 657
    :goto_0
    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaJ:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 660
    :cond_0
    return-void

    .line 653
    :pswitch_0
    const v0, 0x7f0906f4

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->bN(I)V

    .line 654
    const/4 v0, 0x0

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private bN(I)V
    .locals 4

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 665
    const v2, 0x7f0400a3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 666
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaJ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 667
    const v2, 0x7f100043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 668
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    return-void
.end method

.method private bO(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 756
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 757
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->pu()V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f10019a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 761
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 766
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 767
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    .line 768
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->pu()V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 773
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 776
    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_4

    .line 779
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 784
    :cond_4
    const v1, 0x7f0400a4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 786
    const v5, 0x7f1000c1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 787
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 788
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private c(III)V
    .locals 4

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 639
    const v1, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 640
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaI:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 641
    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 642
    const v3, 0x7f100063

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 643
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 647
    return-void
.end method

.method private iz()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 481
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 484
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 489
    const-class v1, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090517

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 491
    return-void
.end method

.method private ji()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 700
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 727
    :goto_0
    return-void

    :cond_1
    move v0, v5

    .line 704
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 705
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 704
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    .line 710
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 713
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    .line 714
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 722
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Gd:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 710
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private jw()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 379
    const-string v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 380
    const-string v0, "percent"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 381
    const-string v0, "gauge"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 382
    const-string v0, "since"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaF:I

    .line 383
    const-string v0, "uid"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 384
    const-string v0, "drainType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaK:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 385
    const-string v0, "noCoverage"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaM:D

    .line 386
    const-string v0, "iconPackage"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    const-string v5, "iconId"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 388
    const-string v6, "showLocationButton"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaO:Z

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 392
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaL:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaL:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaL:Landroid/graphics/drawable/Drawable;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v5, 0x1020010

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 408
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->pw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    const-string v0, "types"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaG:[I

    .line 412
    const-string v0, "values"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    .line 414
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->In:Landroid/widget/TextView;

    .line 415
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->In:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 418
    invoke-static {v4}, Lcom/android/settings/hl;->ai(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f100193

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Io:Landroid/view/ViewGroup;

    .line 421
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f1002bd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    .line 422
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f1002be

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ip:Landroid/widget/Button;

    .line 423
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x102000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 428
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 430
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f100194

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Iq:Landroid/view/ViewGroup;

    .line 434
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f100195

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaI:Landroid/view/ViewGroup;

    .line 435
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v3, 0x7f100197

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaJ:Landroid/view/ViewGroup;

    .line 437
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->jx()V

    .line 438
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->bO(I)V

    .line 439
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->bL(I)V

    .line 440
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->bM(I)V

    .line 442
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_6

    .line 443
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    const v3, 0x7f090521

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ip:Landroid/widget/Button;

    const v3, 0x1107003f

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ip:Landroid/widget/Button;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ip:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_action_app_error"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 455
    if-eqz v0, :cond_5

    .line 456
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 458
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaP:Landroid/content/pm/ApplicationInfo;

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaP:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v3, v4}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ki:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ip:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ki:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 472
    :goto_3
    return-void

    .line 399
    :cond_3
    if-eqz v5, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaL:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 465
    goto :goto_2

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Io:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Io:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 462
    :catch_0
    move-exception v0

    goto :goto_1

    .line 396
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private jx()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 536
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaG:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    if-eqz v0, :cond_1

    move v2, v3

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    aget-wide v0, v0, v2

    const-wide/16 v6, 0x0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_0

    .line 537
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaG:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 542
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaG:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    aget-wide v8, v1, v2

    invoke-static {v0, v8, v9, v10}, Lcom/android/settings/hl;->a(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 565
    :goto_3
    const v0, 0x7f0400a1

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 567
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Iq:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 568
    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    const v7, 0x7f100192

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 570
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    aget-wide v0, v0, v2

    double-to-long v0, v0

    .line 548
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 549
    goto :goto_3

    .line 551
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 552
    invoke-static {v0}, Lcom/android/settings/hl;->ai(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 553
    goto :goto_3

    .line 557
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0906f6

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaH:[D

    aget-wide v8, v7, v2

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 558
    goto :goto_3

    .line 560
    :pswitch_4
    iput-boolean v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaN:Z

    goto :goto_2

    .line 574
    :cond_1
    return-void

    .line 542
    :pswitch_data_0
    .packed-switch 0x7f0906cd
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private jz()V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 685
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 686
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->ji()V

    goto :goto_0
.end method

.method private pu()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 673
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f100199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f10019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_1
    return-void
.end method

.method private pv()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 730
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 753
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 733
    const/4 v3, 0x3

    iput v3, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 734
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 735
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ki:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 736
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 738
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaP:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 741
    new-instance v3, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v3}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 742
    const-string v4, "percent"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 743
    const-string v1, "duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 744
    const-string v1, "report_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 745
    const-string v1, "report_checkin_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 746
    iput-object v3, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->Ki:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 750
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 751
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private pw()Ljava/lang/String;
    .locals 3

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaE:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aaK:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    const v0, 0x7f0400a2

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 358
    invoke-static {p2, v0, v0, v1}, Lcom/android/settings/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 360
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 361
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->jw()V

    .line 362
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->aJ(I)V

    .line 476
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->i:Landroid/content/pm/PackageManager;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 350
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 375
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 368
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 369
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->ji()V

    .line 370
    return-void
.end method
