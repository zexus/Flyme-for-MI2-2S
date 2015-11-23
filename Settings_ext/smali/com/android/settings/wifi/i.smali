.class public Lcom/android/settings/wifi/i;
.super Lcom/android/settings/wifi/T;
.source "MiuiWifiConfigController.java"


# instance fields
.field private final asR:Lcom/android/settings/wifi/AccessPoint;

.field private final asU:Lcom/android/settings/wifi/j;

.field private asV:Z

.field private asW:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/j;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/T;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/i;->mActivity:Landroid/app/Activity;

    .line 58
    iput-object p5, p0, Lcom/android/settings/wifi/i;->asU:Lcom/android/settings/wifi/j;

    .line 60
    iput-object p2, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    .line 61
    iput-object p3, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    .line 62
    if-nez p3, :cond_1

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/i;->auq:I

    .line 64
    iput-boolean p4, p0, Lcom/android/settings/wifi/i;->asV:Z

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->aup:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/i;->aup:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->arZ:I

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f1001e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tP()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    const v5, 0x7f0902d7

    invoke-static {p1, v1}, Lcom/android/settings/wifi/J;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 84
    if-eq v1, v7, :cond_5

    .line 85
    const v5, 0x7f0b001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 86
    array-length v5, v4

    if-lt v1, v5, :cond_4

    .line 87
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    .line 89
    :cond_4
    const v5, 0x7f0902d6

    aget-object v1, v4, v1

    invoke-direct {p0, v0, v5, v1}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tO()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 94
    const v4, 0x7f0902d8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "Mbps"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 97
    :cond_6
    const v1, 0x7f0902d5

    iget-object v4, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/AccessPoint;->bd(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_7

    .line 101
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v5, :cond_8

    .line 102
    iget-object v4, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 103
    iput-boolean v6, p0, Lcom/android/settings/wifi/i;->asW:Z

    .line 107
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_9

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 109
    iput-boolean v6, p0, Lcom/android/settings/wifi/i;->asW:Z

    .line 116
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_7

    .line 118
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v5, :cond_b

    .line 120
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_c

    iget-object v4, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_c

    .line 122
    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v3, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/i;->cT(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 136
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 138
    const v5, 0x7f0902da

    invoke-direct {p0, v0, v5, v4}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 141
    const v4, 0x7f090d83

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 144
    const v3, 0x7f090322

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/wifi/i;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 149
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/i;->asV:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f10020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auM:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auM:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f10020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auN:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auN:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mView:Landroid/view/View;

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auO:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wifi/i;->uX()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/i;->uW()V

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1

    .line 105
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 110
    :cond_9
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_a

    .line 111
    iget-object v4, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    iput-boolean v6, p0, Lcom/android/settings/wifi/i;->asW:Z

    goto/16 :goto_3

    .line 114
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 127
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/i;->mActivity:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 128
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_c

    .line 130
    iget v3, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 131
    iget v3, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget v1, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_c
    move-object v1, v3

    move-object v4, v3

    goto/16 :goto_4
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/i;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 204
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method private cT(I)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const/4 v0, 0x4

    .line 172
    const/16 v1, 0x20

    if-le p1, v1, :cond_0

    .line 173
    const/16 v0, 0x10

    .line 176
    :cond_0
    const/16 v3, 0x8

    move v6, v4

    move v2, p1

    .line 177
    :goto_0
    if-ge v6, v0, :cond_5

    .line 178
    if-ge v2, v3, :cond_1

    move v1, v2

    .line 179
    :goto_1
    sub-int v8, v3, v1

    .line 180
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    move v1, v4

    .line 182
    :goto_2
    if-ltz v5, :cond_2

    .line 183
    const/4 v9, 0x1

    shl-int/2addr v9, v5

    add-int/2addr v1, v9

    .line 184
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    move v1, v3

    .line 178
    goto :goto_1

    .line 186
    :cond_2
    if-lez v8, :cond_3

    .line 187
    shl-int/2addr v1, v8

    .line 190
    :cond_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-lt v2, v3, :cond_4

    .line 193
    sub-int v1, v2, v3

    .line 177
    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v4

    .line 195
    goto :goto_3

    .line 199
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method tN()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/i;->asR:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 233
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/i;->asV:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/i;->bm(Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method uf()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/i;->aup:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/i;->aup:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/i;->aup:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_5

    move v0, v2

    .line 217
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/i;->aur:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/i;->auq:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/i;->aur:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/i;->auq:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/i;->aur:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge v2, v4, :cond_2

    :cond_1
    move v0, v1

    .line 223
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/i;->asV:Z

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/wifi/i;->ug()Z

    move-result v0

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asU:Lcom/android/settings/wifi/j;

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/android/settings/wifi/i;->asU:Lcom/android/settings/wifi/j;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/j;->bf(Z)V

    .line 229
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method protected ug()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/i;->auF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/i;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auQ:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v3, :cond_7

    .line 244
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auT:Landroid/net/StaticIpConfiguration;

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auT:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/i;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 246
    if-eqz v0, :cond_2

    .line 290
    :cond_0
    :goto_1
    return v2

    .line 239
    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 252
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/i;->auL:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 253
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, p0, Lcom/android/settings/wifi/i;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 254
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/i;->auS:Landroid/net/ProxyInfo;

    .line 255
    if-ne v3, v1, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/i;->auM:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 256
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auM:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 268
    :goto_3
    if-nez v0, :cond_3

    .line 269
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auS:Landroid/net/ProxyInfo;

    move v2, v1

    :cond_3
    move v0, v2

    .line 287
    :cond_4
    :goto_4
    iget-boolean v2, p0, Lcom/android/settings/wifi/i;->asW:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/i;->auR:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v3, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v3, :cond_5

    move v0, v1

    :cond_5
    move v2, v0

    .line 290
    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    move v0, v2

    .line 266
    :goto_5
    const v3, 0x7f090128

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    .line 274
    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/i;->auP:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 275
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/i;->auR:Landroid/net/IpConfiguration$ProxySettings;

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/i;->auP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 284
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/i;->auS:Landroid/net/ProxyInfo;

    move v0, v1

    .line 285
    goto :goto_4

    .line 265
    :catch_1
    move-exception v3

    goto :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method
