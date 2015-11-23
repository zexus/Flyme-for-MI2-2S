.class Lcom/android/settings/location/MiuiLocationSettings$5;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic acW:Lcom/android/settings/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/MiuiLocationSettings;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-static {}, Lcom/android/settings/eK;->fB()Lcom/android/settings/eK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v1}, Lcom/android/settings/location/MiuiLocationSettings;->d(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/eK;->a(Landroid/location/LocationManager;I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings$5;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/settings/location/MiuiLocationSettings;->e(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    return-void
.end method
