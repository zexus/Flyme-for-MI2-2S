.class Lcom/android/settings_ext/display/w;
.super Landroid/database/ContentObserver;
.source "PaperModeFragment.java"


# instance fields
.field final synthetic VE:Landroid/preference/CheckBoxPreference;

.field final synthetic VF:Lcom/android/settings_ext/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/PaperModeFragment;Landroid/os/Handler;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ext/display/w;->VF:Lcom/android/settings_ext/display/PaperModeFragment;

    iput-object p3, p0, Lcom/android/settings_ext/display/w;->VE:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/display/w;->VE:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ext/display/w;->VF:Lcom/android/settings_ext/display/PaperModeFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/display/PaperModeFragment;->aI(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    return-void
.end method
