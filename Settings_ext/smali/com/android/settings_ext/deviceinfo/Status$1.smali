.class Lcom/android/settings_ext/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# instance fields
.field final synthetic Tj:Lcom/android/settings_ext/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings_ext/deviceinfo/Status$1;->Tj:Lcom/android/settings_ext/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status$1;->Tj:Lcom/android/settings_ext/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Status;->b(Lcom/android/settings_ext/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    invoke-static {p2}, Lcom/android/settings_ext/hl;->n(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/deviceinfo/Status$1;->Tj:Lcom/android/settings_ext/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings_ext/deviceinfo/Status;->c(Lcom/android/settings_ext/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings_ext/deviceinfo/Status$1;->Tj:Lcom/android/settings_ext/deviceinfo/Status;

    invoke-virtual {v1}, Lcom/android/settings_ext/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings_ext/hl;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method