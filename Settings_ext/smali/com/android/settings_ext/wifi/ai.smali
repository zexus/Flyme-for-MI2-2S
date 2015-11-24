.class Lcom/android/settings_ext/wifi/ai;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field final synthetic avY:Lcom/android/settings_ext/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings_ext/wifi/ai;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings_ext/wifi/ai;->avY:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    const v1, 0x7f090304

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
