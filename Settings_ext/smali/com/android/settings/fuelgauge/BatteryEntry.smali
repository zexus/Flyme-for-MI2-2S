.class public Lcom/android/settings/fuelgauge/BatteryEntry;
.super Ljava/lang/Object;
.source "BatteryEntry.java"


# static fields
.field static final Yk:Ljava/util/HashMap;

.field static final Yl:Ljava/util/ArrayList;

.field static Ym:Landroid/os/Handler;

.field private static Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;


# instance fields
.field public final Yo:Lcom/android/internal/os/BatterySipper;

.field public Yp:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconId:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yk:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f02012d

    const v3, 0x7f020115

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sput-object p2, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    .line 133
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    .line 134
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry$1;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v2, p4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    :goto_0
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->a(Landroid/os/BatteryStats$Uid;)V

    .line 197
    :cond_2
    return-void

    .line 136
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 137
    const v0, 0x7f020139

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 141
    const v0, 0x7f020129

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 145
    const v0, 0x7f02013f

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 148
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 149
    const v0, 0x7f020140

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto :goto_0

    .line 152
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 153
    const v0, 0x7f020127

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 156
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 157
    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 160
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 161
    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 164
    :pswitch_7
    iget-object v0, p4, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 167
    :pswitch_8
    iget v1, p4, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {p3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_5

    .line 169
    invoke-static {p1, p3, v1}, Lcom/android/settings/hl;->a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 170
    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :cond_3
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 172
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 174
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090589

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 177
    :cond_5
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09058a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 183
    :pswitch_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 184
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 187
    :pswitch_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 188
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    goto/16 :goto_0

    .line 134
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static pj()V
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 88
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 93
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 94
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->setPriority(I)V

    .line 95
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->start()V

    .line 96
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 98
    :cond_1
    monitor-exit v1

    .line 100
    :cond_2
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static pk()V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;->abort()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yn:Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIconLoader;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static pl()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    return-void
.end method


# virtual methods
.method a(Landroid/os/BatteryStats$Uid;)V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->Yk:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yk:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    .line 215
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yp:Ljava/lang/String;

    .line 216
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 217
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 223
    if-nez v2, :cond_4

    .line 225
    if-nez v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 230
    :cond_2
    :goto_1
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    .line 231
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 227
    :cond_3
    const-string v0, "mediaserver"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0906fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_4
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 237
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yl:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public pm()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 252
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 253
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 254
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    new-array v5, v2, [Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 265
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move v0, v1

    .line 266
    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 268
    :try_start_0
    aget-object v2, v5, v0

    const/4 v8, 0x0

    invoke-interface {v6, v2, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 270
    if-nez v2, :cond_4

    .line 271
    const-string v2, "PowerUsageSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retrieving null app info for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_4
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 276
    if-eqz v8, :cond_5

    .line 277
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v0

    .line 279
    :cond_5
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_3

    .line 280
    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v8, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v0

    iput-object v8, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yp:Ljava/lang/String;

    .line 281
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    .line 290
    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 293
    :cond_7
    array-length v0, v5

    if-ne v0, v11, :cond_9

    .line 294
    aget-object v0, v5, v1

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 323
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->name:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yp:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry$UidToDetail;->packageName:Ljava/lang/String;

    .line 328
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryEntry;->Yk:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    sget-object v1, Lcom/android/settings/fuelgauge/BatteryEntry;->Ym:Landroid/os/Handler;

    invoke-virtual {v1, v11, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    const-string v8, "PowerUsageSummary"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while retrieving app info for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yo:Lcom/android/internal/os/BatterySipper;

    iget-object v2, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v4, v2

    :goto_4
    if-ge v1, v4, :cond_8

    aget-object v5, v2, v1

    .line 299
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v5, v0, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 300
    if-nez v0, :cond_b

    .line 301
    const-string v0, "PowerUsageSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Retrieving null package info for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 305
    :cond_b
    iget v8, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_a

    .line 306
    iget v8, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 308
    if-eqz v8, :cond_a

    .line 309
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    .line 310
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_8

    .line 311
    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->Yp:Ljava/lang/String;

    .line 312
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 317
    :catch_1
    move-exception v0

    .line 318
    const-string v8, "PowerUsageSummary"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while retrieving package info for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", user "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
