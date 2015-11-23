.class public Lcom/android/settings/cz;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# static fields
.field private static lC:Ljava/util/HashMap;

.field private static lD:Ljava/util/HashMap;

.field private static lE:Ljava/util/ArrayList;

.field private static lF:Ljava/util/ArrayList;

.field private static lG:Ljava/util/ArrayList;

.field private static lH:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x7f090ab2

    const v8, 0x7f090ab1

    const v7, 0x7f090aad

    const v6, 0x7f090aa6

    const/4 v5, 0x1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lC:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lD:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lF:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lG:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    .line 34
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    const v1, 0x7f090ab3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    const v1, 0x7f090ab5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    const v1, 0x7f090abb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f06000c

    const v2, 0x7f100350

    const v3, 0x7f090173

    const v4, 0x7f090aa5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 43
    const-string v0, "mobile_network_settings"

    const v1, 0x7f06004e

    const v2, 0x7f100377

    const v3, 0x7f0904a5

    invoke-static {v0, v1, v2, v3, v6}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 44
    const-string v0, "wifi_settings"

    const v1, 0x7f0600a5

    const v2, 0x7f100357

    const v3, 0x7f090293

    const v4, 0x7f090aa7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 45
    const-string v0, "bluetooth_settings"

    const v1, 0x7f060019

    const v2, 0x7f100353

    const v3, 0x7f090208

    const v4, 0x7f090aa8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 46
    const-string v0, "android_beam_settings"

    const v1, 0x7f06000d

    const v2, 0x7f100351

    const v3, 0x7f090287

    const v4, 0x7f090aa9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "vpn_settings"

    const v1, 0x7f06009c

    const v2, 0x7f100391

    const v3, 0x7f09076d

    const v4, 0x7f090aaa

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 48
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 49
    const-string v0, "tether_settings"

    const v1, 0x7f060090

    const v2, 0x7f10038f

    const v3, 0x7f090492

    const v4, 0x7f090aab

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 51
    :cond_0
    const-string v0, "brightness"

    const v1, 0x7f06001b

    const v2, 0x7f100354

    const v3, 0x7f090393

    const v4, 0x7f090aac

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 52
    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    :goto_0
    const-string v0, "accelerometer"

    const v1, 0x7f060001

    const v2, 0x7f10034c

    const v3, 0x7f090390

    const v4, 0x7f090aae

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 58
    const-string v0, "screen_timeout"

    const v1, 0x7f06006a

    const v2, 0x7f10037b

    const v3, 0x7f090399

    const v4, 0x7f090aaf

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 59
    const-string v0, "ring_volume"

    const v1, 0x7f060065

    const v2, 0x7f100379

    const v3, 0x7f090364

    const v4, 0x7f090ab0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 60
    const-string v0, "ringtone"

    const v1, 0x7f060066

    const v2, 0x7f10037a

    const v3, 0x7f0909c6

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 61
    const-string v0, "sms_received_sound"

    const v1, 0x7f060082

    const v2, 0x7f10038e

    const v3, 0x7f090ad5

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 62
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f060096

    const v2, 0x7f100390

    const v3, 0x7f0901cd

    const v4, 0x7f090ab4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 63
    const-string v0, "access_control_settings"

    const v1, 0x7f060003

    const v2, 0x7f10034d

    const v3, 0x7f090adc

    const v4, 0x7f090ab5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 64
    const-string v0, "location_gps"

    const v1, 0x7f06003a

    const v2, 0x7f100372

    const v3, 0x7f0904c5

    const v4, 0x7f090ab6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 65
    const-string v0, "status_bar_settings"

    const v1, 0x7f060086

    const v2, 0x7f10037e

    const v3, 0x7f090b30

    const v4, 0x7f090ab7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 66
    const-string v0, "micloud_settings"

    const v1, 0x7f06004b

    const v2, 0x7f100375

    const v3, 0x7f090c85

    const v4, 0x7f090ab8

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 67
    const-string v0, "mimoney_settings"

    const v1, 0x7f06004c

    const v2, 0x7f100376

    const v3, 0x7f090c86

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 68
    invoke-static {}, Lcom/android/settings/fc;->fL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    :goto_1
    const-string v0, "key_settings"

    const v1, 0x7f06003f

    const v2, 0x7f100373

    const v3, 0x7f090b0d

    const v4, 0x7f090aba

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 74
    const-string v0, "led_settings"

    const v1, 0x7f060043

    const v2, 0x7f100374

    const v3, 0x7f090b56

    const v4, 0x7f090abb

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 75
    const-string v0, "date_time_settings"

    const v1, 0x7f060020

    const v2, 0x7f10036c

    const v3, 0x7f090186

    const v4, 0x7f090abc

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 76
    const-string v0, "language_settings"

    const v1, 0x7f060041

    const v2, 0x7f100369

    const v3, 0x7f0905a6

    const v4, 0x7f090abd

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 77
    const-string v0, "about_settings"

    const/high16 v1, 0x7f060000

    const v2, 0x7f10034b

    const v3, 0x7f0904cf

    const v4, 0x7f090abe

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    .line 78
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    const-string v0, "power_mode"

    const v1, 0x7f06005c

    const v2, 0x7f100378

    const v3, 0x7f090bf6

    const v4, 0x7f090abf

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 82
    :cond_2
    return-void

    .line 55
    :cond_3
    const-string v0, "wallpaper"

    const v1, 0x7f06009e

    const v2, 0x7f10037f

    const v3, 0x7f09039b

    move v4, v7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    goto/16 :goto_0

    .line 71
    :cond_4
    const-string v0, "battery_indicator_style"

    const v1, 0x7f060015

    const v2, 0x7f100352

    const v3, 0x7f090b38

    const v4, 0x7f090ab9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIII)V

    goto/16 :goto_1
.end method

.method public static A(I)I
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/android/settings/cz;->lD:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 138
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static B(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 156
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings/cz;->lG:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 157
    sget-object v0, Lcom/android/settings/cz;->lG:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    :cond_0
    return v0
.end method

.method public static C(I)I
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/settings/cz;->B(I)I

    move-result v0

    .line 164
    sget-object v1, Lcom/android/settings/cz;->lD:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 165
    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cA;

    iget v0, v0, Lcom/android/settings/cA;->lK:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IIII)V
    .locals 6

    .prologue
    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/cz;->a(Ljava/lang/String;IIIIZ)V

    .line 86
    return-void
.end method

.method private static a(Ljava/lang/String;IIIIZ)V
    .locals 9

    .prologue
    .line 89
    sget-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 90
    sget-object v0, Lcom/android/settings/cz;->lC:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/settings/cz;->lD:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v8, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/cA;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/cA;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/settings/cz;->y(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/settings/cz;->lF:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/cz;->lG:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method

.method private static dH()Z
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "android.hardware.nfc"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dI()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cA;

    .line 144
    iget-boolean v3, v0, Lcom/android/settings/cA;->lM:Z

    if-eqz v3, :cond_0

    .line 145
    iget-object v0, v0, Lcom/android/settings/cA;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    return-object v1
.end method

.method public static dJ()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/settings/cz;->lF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static dK()[I
    .locals 4

    .prologue
    .line 169
    sget-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 170
    new-array v3, v2, [I

    .line 171
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 172
    sget-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cA;

    iget v0, v0, Lcom/android/settings/cA;->lI:I

    aput v0, v3, v1

    .line 171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_0
    return-object v3
.end method

.method public static x(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/settings/cz;->lC:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static y(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    const v2, 0x7f090aa9

    if-ne v2, p0, :cond_2

    .line 102
    invoke-static {}, Lcom/android/settings/cz;->dH()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    sget-object v2, Lcom/android/settings/cz;->lH:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public static z(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    sget-object v1, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/android/settings/cz;->lE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cA;

    iget-object v0, v0, Lcom/android/settings/cA;->key:Ljava/lang/String;

    .line 133
    :cond_0
    return-object v0
.end method
