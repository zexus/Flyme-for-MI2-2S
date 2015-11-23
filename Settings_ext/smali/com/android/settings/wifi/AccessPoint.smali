.class public Lcom/android/settings_ext/wifi/AccessPoint;
.super Lmiui/preference/RadioButtonPreference;
.source "AccessPoint.java"


# static fields
.field private static final arW:[I

.field private static final arX:[I

.field private static arY:[I


# instance fields
.field public arV:Landroid/util/LruCache;

.field arZ:I

.field asa:Z

.field asb:Z

.field asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

.field protected asd:Landroid/net/wifi/WifiConfiguration;

.field ase:Landroid/net/wifi/ScanResult;

.field protected asf:I

.field private asg:J

.field private ash:Landroid/net/wifi/WifiInfo;

.field protected asi:Landroid/net/NetworkInfo$DetailedState;

.field asj:Z

.field bssid:Ljava/lang/String;

.field private mIsConnected:Z

.field networkId:I

.field ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint;->arW:[I

    .line 90
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint;->arX:[I

    .line 92
    new-array v0, v3, [I

    const v1, 0x7f010026

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint;->arY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asa:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    .line 122
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 131
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    .line 255
    invoke-direct {p0, p2}, Lcom/android/settings_ext/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->refresh()V

    .line 257
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asa:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    .line 122
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 131
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    .line 249
    invoke-direct {p0, p2}, Lcom/android/settings_ext/wifi/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->refresh()V

    .line 251
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asa:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    .line 122
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 131
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    .line 262
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)V

    .line 266
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    .line 267
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 270
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    .line 271
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 281
    const-string v0, "key_show_password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asj:Z

    .line 282
    return-void
.end method

.method public static a(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x4

    .line 190
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x5

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    const/4 v0, 0x3

    goto :goto_0

    .line 190
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 160
    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 164
    goto :goto_0

    .line 166
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 167
    const/4 v0, 0x5

    goto :goto_0

    .line 170
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ext/wifi/AccessPoint$PskType;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 234
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 235
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->aso:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    if-eqz v1, :cond_1

    .line 238
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asn:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 239
    :cond_1
    if-eqz v0, :cond_2

    .line 240
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asm:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 242
    :cond_2
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received abnormal flag string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private b(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 297
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    .line 299
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    .line 300
    iput-object p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 301
    return-void

    .line 296
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static bH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/net/wifi/ScanResult;)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 305
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 306
    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    .line 307
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asa:Z

    .line 308
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 309
    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 310
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 311
    iput-object p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    .line 312
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 313
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    .line 315
    :cond_1
    return-void

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 11

    .prologue
    const v5, 0x7f0902e9

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 669
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {p0, v10}, Lcom/android/settings_ext/wifi/AccessPoint;->bc(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->b(ILandroid/content/Context;)V

    .line 677
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v2, :cond_5

    .line 683
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v2}, Lcom/android/settings_ext/wifi/J;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/wifi/AccessPoint;->bc(Z)V

    .line 720
    :cond_0
    :goto_0
    sget v0, Lcom/android/settings_ext/wifi/WifiSettings;->avX:I

    if-lez v0, :cond_4

    .line 723
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_1

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (f="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->tQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v0, :cond_4

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-wide v2, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 731
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 732
    rem-long v4, v2, v8

    .line 733
    div-long/2addr v2, v8

    rem-long/2addr v2, v8

    .line 734
    div-long v6, v2, v8

    rem-long/2addr v6, v8

    .line 735
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "h "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_3
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    :goto_1
    return-void

    .line 686
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lt v2, v4, :cond_a

    .line 690
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lt v2, v4, :cond_9

    .line 692
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 693
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 695
    :cond_8
    const v2, 0x7f0902ea

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 698
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 708
    :pswitch_0
    const v2, 0x7f0902e8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 700
    :pswitch_1
    const v2, 0x7f0902ea

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 704
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 712
    :cond_a
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_b

    .line 713
    const v2, 0x7f0902eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 715
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 716
    const v2, 0x7f0902e7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 747
    :cond_c
    iput-boolean v10, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    goto/16 :goto_1

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 496
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 498
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 500
    :cond_0
    return-object p0
.end method

.method private tQ()Ljava/lang/String;
    .locals 23

    .prologue
    .line 527
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    const/4 v11, 0x0

    .line 529
    const/4 v10, 0x0

    .line 530
    const/4 v2, 0x0

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_19

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 536
    if-eqz v2, :cond_0

    .line 537
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_0
    const-string v3, " score="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget v4, v4, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, "tx=%.1f,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v3, "%.1f,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v3, "%.1f "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v3, "rx=%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    .line 547
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->arV:Landroid/util/LruCache;

    if-eqz v2, :cond_17

    .line 548
    sget v9, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 549
    sget v8, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 550
    const/4 v7, 0x0

    .line 551
    const/4 v6, 0x0

    .line 552
    const/4 v2, 0x0

    .line 553
    const/4 v5, 0x0

    .line 554
    const/4 v4, 0x0

    .line 555
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ext/wifi/AccessPoint;->arV:Landroid/util/LruCache;

    invoke-virtual {v12}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v12

    .line 557
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v12, v7

    move v7, v9

    move-object v9, v11

    move v11, v6

    move v6, v8

    move-object v8, v10

    move v10, v2

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 558
    iget-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_1

    .line 561
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 563
    :cond_2
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x1324

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x170c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    .line 567
    add-int/lit8 v12, v12, 0x1

    .line 576
    :cond_3
    :goto_2
    iget-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v14, v18

    const-wide/16 v20, 0x4e20

    cmp-long v17, v18, v20

    if-gtz v17, :cond_1

    .line 578
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x1324

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x170c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    .line 580
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v7, :cond_4

    .line 581
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 583
    :cond_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v4, v0, :cond_18

    .line 584
    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    :cond_5
    const-string v17, " {"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    if-eqz v3, :cond_6

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_6
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 590
    const-string v17, ",st="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    :cond_7
    iget v0, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 593
    const-string v17, ",ipf="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v2, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    :cond_8
    const-string v2, "}"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    add-int/lit8 v2, v4, 0x1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_3
    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    .line 619
    goto/16 :goto_1

    .line 568
    :cond_9
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x960

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x9c4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 572
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 598
    :cond_a
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x960

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_18

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x9c4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    .line 600
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v6, :cond_b

    .line 601
    iget v6, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 603
    :cond_b
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v5, v0, :cond_18

    .line 604
    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    :cond_c
    const-string v17, " {"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    if-eqz v3, :cond_d

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_d
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 610
    const-string v17, ",st="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    :cond_e
    iget v0, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 613
    const-string v17, ",ipf="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v2, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    :cond_f
    const-string v2, "}"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    add-int/lit8 v2, v5, 0x1

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v22, v4

    move v4, v2

    move/from16 v2, v22

    goto/16 :goto_3

    .line 620
    :cond_10
    const-string v2, " ["

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    if-lez v11, :cond_11

    .line 622
    const-string v2, "("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const/4 v2, 0x4

    if-gt v5, v2, :cond_15

    .line 624
    if-eqz v9, :cond_11

    .line 625
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_11
    :goto_4
    const-string v2, ";"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    if-lez v12, :cond_12

    .line 636
    const-string v2, "("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/4 v2, 0x4

    if-gt v4, v2, :cond_16

    .line 638
    if-eqz v8, :cond_12

    .line 639
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_12
    :goto_5
    if-lez v10, :cond_13

    .line 649
    const-string v2, "!"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    :cond_13
    const-string v2, "]"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_14
    :goto_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 628
    :cond_15
    const-string v2, "max="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    if-eqz v9, :cond_11

    .line 630
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 642
    :cond_16
    const-string v2, "max="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    if-eqz v8, :cond_12

    .line 644
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 652
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_14

    .line 653
    const-string v2, " rssi="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_14

    .line 656
    const-string v2, ", f="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_18
    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_3

    :cond_19
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    .line 448
    if-eqz p1, :cond_3

    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 450
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    .line 451
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 454
    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    const/16 v2, -0x64

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    .line 458
    iput-object p2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    .line 459
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->refresh()V

    .line 466
    :goto_1
    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 469
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 450
    goto :goto_0

    .line 460
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_4

    .line 462
    iput-object v4, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    .line 463
    iput-object v4, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    .line 464
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->refresh()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected b(ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 331
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    if-nez v1, :cond_3

    .line 342
    const v0, 0x7f0202a1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 345
    if-eqz v0, :cond_3

    .line 346
    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint;->arW:[I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 347
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :goto_2
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 346
    :cond_2
    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint;->arX:[I

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public bc(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->mIsConnected:Z

    .line 145
    return-void
.end method

.method public bd(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    packed-switch v1, :pswitch_data_0

    .line 228
    if-eqz p1, :cond_8

    const-string v0, ""

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0902f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f0902fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_1
    sget-object v1, Lcom/android/settings_ext/wifi/a;->ask:[I

    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 212
    if-eqz p1, :cond_4

    const v1, 0x7f0902f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0902f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f0902f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0902f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0902f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0902f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_4
    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0902ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_6
    if-eqz p1, :cond_6

    const v1, 0x7f090b76

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f090b78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :pswitch_7
    if-eqz p1, :cond_7

    const v1, 0x7f090b77

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f090b79

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_8
    const v1, 0x7f0902f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public be(Z)V
    .locals 0

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    .line 516
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const v3, 0x7fffffff

    const/4 v1, -0x1

    .line 360
    instance-of v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v2, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    check-cast p1, Lcom/android/settings_ext/wifi/AccessPoint;

    .line 365
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    .line 369
    :cond_3
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-eq v2, v3, :cond_4

    iget v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 370
    :cond_4
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-ne v2, v3, :cond_5

    iget v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-ne v2, v3, :cond_0

    .line 371
    :cond_5
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-ne v2, v3, :cond_6

    iget v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    if-ne v2, v3, :cond_0

    .line 374
    :cond_6
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-eq v2, v1, :cond_7

    iget v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-ne v2, v1, :cond_7

    move v0, v1

    .line 375
    goto :goto_0

    .line 376
    :cond_7
    iget v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-ne v2, v1, :cond_8

    iget v2, p1, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    if-ne v2, v1, :cond_0

    .line 380
    :cond_8
    iget v0, p1, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 381
    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 388
    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method d(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    .line 412
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 413
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asg:J

    .line 415
    :cond_0
    sget v0, Lcom/android/settings_ext/wifi/WifiSettings;->avX:I

    if-lez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arV:Landroid/util/LruCache;

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arV:Landroid/util/LruCache;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arV:Landroid/util/LruCache;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 425
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->mIsConnected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->mIsConnected:Z

    if-nez v0, :cond_5

    .line 426
    :cond_4
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_5

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 428
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->notifyChanged()V

    .line 435
    :cond_5
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 436
    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asc:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 438
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->refresh()V

    .line 440
    iput-object p1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 397
    instance-of v1, p1, Lcom/android/settings_ext/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/android/settings_ext/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 473
    const/4 v0, -0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 405
    :cond_0
    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asf:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 406
    iget v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 407
    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 408
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->mIsConnected:Z

    return v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 285
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 286
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ase:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    const-string v0, "key_show_password"

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/wifi/AccessPoint;->b(ILandroid/content/Context;)V

    .line 322
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asb:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    return-void

    .line 324
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method tN()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method tO()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ash:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method tP()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asi:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected tR()V
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    if-eqz v0, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 764
    :goto_0
    return-void

    .line 761
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 762
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/AccessPoint;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/settings_ext/wifi/AccessPoint;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method
