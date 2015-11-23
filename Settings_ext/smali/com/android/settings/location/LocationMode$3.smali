.class Lcom/android/settings/location/LocationMode$3;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic acC:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/location/LocationMode$3;->acC:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 222
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 223
    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$3;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$3;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/a/a/a;->showDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 233
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$3;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$3;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/a/a/a;->disable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
