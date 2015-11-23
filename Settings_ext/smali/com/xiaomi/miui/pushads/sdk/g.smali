.class public Lcom/xiaomi/miui/pushads/sdk/g;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static Ak()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 104
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 106
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 110
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "get ip address failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static cQ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cp(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 2

    .prologue
    .line 34
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGk:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    .line 55
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    :cond_1
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGk:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGl:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 55
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->dT(I)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v0

    goto :goto_0
.end method

.method public static cq(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/g;->cp(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v1

    .line 85
    const/4 v0, 0x1

    .line 88
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGk:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    if-ne v2, v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :cond_0
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGl:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    if-eq v1, v2, :cond_1

    .line 94
    :cond_1
    return v0
.end method

.method public static cr(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 131
    if-nez v0, :cond_1

    const-string v0, ""

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v0, ""

    goto :goto_0
.end method

.method public static final cs(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    if-nez v2, :cond_0

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v0, "ads-notify-fd5dfce4"

    const-string v2, "get user account failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 148
    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 156
    aget-object v3, v2, v0

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    aget-object v0, v2, v0

    .line 159
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v0, ""

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 165
    goto :goto_0
.end method

.method private static dT(I)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    .locals 1

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 79
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGk:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGm:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGn:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->aGo:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
