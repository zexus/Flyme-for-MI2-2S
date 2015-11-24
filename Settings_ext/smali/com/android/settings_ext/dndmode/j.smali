.class Lcom/android/settings_ext/dndmode/j;
.super Landroid/database/ContentObserver;
.source "AutoTimeSettingsFragment.java"


# instance fields
.field final synthetic WI:Lcom/android/settings_ext/dndmode/h;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/h;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/j;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/j;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/h;->g(Lcom/android/settings_ext/dndmode/h;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/j;->WI:Lcom/android/settings_ext/dndmode/h;

    invoke-static {v1}, Lcom/android/settings_ext/dndmode/h;->b(Lcom/android/settings_ext/dndmode/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQueitWristband(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    return-void
.end method
