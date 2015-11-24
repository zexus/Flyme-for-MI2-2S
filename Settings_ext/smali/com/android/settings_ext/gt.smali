.class Lcom/android/settings_ext/gt;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# instance fields
.field final synthetic xu:Lcom/android/settings_ext/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ext/gt;->xu:Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/gt;->xu:Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gV()V

    .line 85
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/gt;->xu:Lcom/android/settings_ext/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->gV()V

    .line 90
    return-void
.end method
