.class Lcom/android/settings_ext/deviceinfo/UsbSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# instance fields
.field final synthetic Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$2;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$2;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090a30

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$2;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->b(Lcom/android/settings_ext/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 162
    :cond_2
    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/UsbSettings$2;->Uj:Lcom/android/settings_ext/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090a31

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
