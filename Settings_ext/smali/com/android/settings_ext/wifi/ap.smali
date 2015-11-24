.class Lcom/android/settings_ext/wifi/ap;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# instance fields
.field private awa:I

.field private awb:Lcom/android/settings_ext/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiSettings;)V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/ap;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    .line 228
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ap;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ap;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/WifiSettings;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iput v2, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    .line 259
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings_ext/wifi/ap;->sendEmptyMessageDelayed(IJ)Z

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget v0, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 252
    iput v2, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    .line 253
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ap;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    const v1, 0x7f09029b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/android/settings_ext/wifi/ap;->awa:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/ap;->removeMessages(I)V

    .line 245
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/ap;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/ap;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    return-void
.end method

.method vq()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/ap;->removeMessages(I)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/ap;->sendEmptyMessage(I)Z

    .line 240
    return-void
.end method
