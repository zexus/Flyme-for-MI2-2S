.class Lcom/android/settings_ext/wifi/t;
.super Landroid/os/AsyncTask;
.source "MiuiWifiDetailFragment.java"


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings_ext/wifi/t;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/t;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/wifi/t;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    iget-object v0, v0, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings_ext/wifi/openwifi/l;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/settings_ext/wifi/t;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/t;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    iget-object v1, v1, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings_ext/wifi/openwifi/l;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/openwifi/l;->uv()I

    move-result v1

    iput v1, v0, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->ata:I

    .line 348
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/wifi/t;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings_ext/wifi/t;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->e(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)V

    .line 354
    return-void
.end method
