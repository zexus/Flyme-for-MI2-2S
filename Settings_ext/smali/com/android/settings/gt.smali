.class Lcom/android/settings/gt;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# instance fields
.field final synthetic xu:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/gt;->xu:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/gt;->xu:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->gV()V

    .line 85
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/gt;->xu:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->gV()V

    .line 90
    return-void
.end method
