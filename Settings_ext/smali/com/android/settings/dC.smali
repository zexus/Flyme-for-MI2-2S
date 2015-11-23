.class public Lcom/android/settings_ext/dC;
.super Landroid/os/AsyncTask;
.source "MiuiDeviceInfoSettings.java"


# instance fields
.field final synthetic pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

.field private po:Ljava/lang/String;

.field private pp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/settings_ext/dC;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 778
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dC;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/settings_ext/dC;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->f(Lcom/android/settings_ext/MiuiDeviceInfoSettings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dC;->po:Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/settings_ext/dC;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->a(Lcom/android/settings_ext/MiuiDeviceInfoSettings;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dC;->pp:Ljava/lang/String;

    .line 786
    invoke-static {}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->eE()J

    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 778
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dC;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/settings_ext/dC;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    const-string v1, "device_cpu"

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 793
    iget-object v1, p0, Lcom/android/settings_ext/dC;->po:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/settings_ext/dC;->pn:Lcom/android/settings_ext/MiuiDeviceInfoSettings;

    const-string v1, "device_memory"

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 796
    iget-object v1, p0, Lcom/android/settings_ext/dC;->pp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 797
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 798
    return-void
.end method
