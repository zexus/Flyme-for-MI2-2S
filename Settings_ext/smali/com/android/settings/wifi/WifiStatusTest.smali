.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Lmiui/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field private awV:Landroid/widget/Button;

.field private awW:Landroid/widget/TextView;

.field private awX:Landroid/widget/TextView;

.field private awY:Landroid/widget/TextView;

.field private awZ:Landroid/widget/TextView;

.field private axa:Landroid/widget/TextView;

.field private axb:Landroid/widget/TextView;

.field private axc:Landroid/widget/TextView;

.field private axd:Landroid/widget/TextView;

.field private axe:Landroid/widget/TextView;

.field private axf:Landroid/widget/TextView;

.field private axg:Landroid/widget/TextView;

.field private axh:Landroid/widget/TextView;

.field private axi:Landroid/content/IntentFilter;

.field private final axj:Landroid/content/BroadcastReceiver;

.field axk:Landroid/view/View$OnClickListener;

.field private hD:Landroid/net/wifi/WifiManager;

.field vQ:Landroid/view/View$OnClickListener;

.field private vh:Landroid/widget/TextView;

.field private vi:Landroid/widget/TextView;

.field private vj:Landroid/widget/TextView;

.field private vp:Landroid/widget/Button;

.field private vu:Ljava/lang/String;

.field private vv:Ljava/lang/String;

.field private vw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/wifi/aJ;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aJ;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axj:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Lcom/android/settings/wifi/aK;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aK;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vQ:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/android/settings/wifi/aL;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/aL;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axk:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/wifi/J;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->awX:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    return-void
.end method

.method private a(Landroid/net/wifi/SupplicantState;)V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 223
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2

    .prologue
    .line 289
    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->vM()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->cU(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->a(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gm()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dn(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->hD:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dm(I)V

    return-void
.end method

.method private cU(I)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->dm(I)V

    .line 264
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axa:Landroid/widget/TextView;

    return-object v0
.end method

.method private dm(I)V
    .locals 3

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 250
    const-string v0, "BAD"

    .line 251
    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->awW:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void

    .line 235
    :pswitch_0
    const v0, 0x7f090357

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_1
    const v0, 0x7f090358

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_2
    const v0, 0x7f090359

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_3
    const v0, 0x7f09035a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :pswitch_4
    const v0, 0x7f09035b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private dn(I)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awZ:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axg:Landroid/widget/TextView;

    return-object v0
.end method

.method private final gi()V
    .locals 4

    .prologue
    .line 357
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 358
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 -w 100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 360
    if-nez v0, :cond_0

    .line 361
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    .line 370
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    goto :goto_0
.end method

.method private final gj()V
    .locals 2

    .prologue
    .line 375
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 377
    if-nez v0, :cond_0

    .line 378
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    .line 389
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    goto :goto_0

    .line 384
    :catch_1
    move-exception v0

    .line 385
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    goto :goto_0

    .line 386
    :catch_2
    move-exception v0

    .line 387
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    goto :goto_0
.end method

.method private gk()V
    .locals 4

    .prologue
    .line 392
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 395
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 398
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;

    .line 402
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 406
    :goto_1
    return-void

    .line 400
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;

    goto :goto_1
.end method

.method private final gm()V
    .locals 3

    .prologue
    const v2, 0x7f09009b

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vh:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vi:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    new-instance v1, Lcom/android/settings/wifi/aM;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/aM;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 322
    new-instance v2, Lcom/android/settings/wifi/aN;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aN;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 331
    new-instance v2, Lcom/android/settings/wifi/aO;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aO;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 340
    new-instance v2, Lcom/android/settings/wifi/aP;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/aP;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method static synthetic h(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axe:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awZ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axb:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gi()V

    return-void
.end method

.method static synthetic s(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gj()V

    return-void
.end method

.method static synthetic t(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->gk()V

    return-void
.end method

.method private vM()V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    if-eqz v2, :cond_2

    .line 271
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 272
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 274
    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_1
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axh:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->hD:Landroid/net/wifi/WifiManager;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axj:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    const v0, 0x7f040142

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    .line 133
    const v0, 0x7f100330

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awV:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awV:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->axk:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f100331

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awW:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100332

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awX:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100333

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awY:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->awZ:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f100334

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axa:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f1001e4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axb:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f100335

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axc:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f100336

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axd:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f100337

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axe:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f100338

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axf:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f100339

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axg:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f10033a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axh:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vh:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vi:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vj:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f10022d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vp:Landroid/widget/Button;

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->vp:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->vQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axj:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->axj:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->axi:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method
