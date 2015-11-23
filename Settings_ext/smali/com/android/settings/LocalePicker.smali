.class public Lcom/android/settings_ext/LocalePicker;
.super Lcom/android/settings_ext/BaseListFragment;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settings_ext/bP;


# instance fields
.field private bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

.field private nn:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ext/BaseListFragment;-><init>()V

    .line 52
    invoke-virtual {p0, p0}, Lcom/android/settings_ext/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/LocalePicker;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->nn:Ljava/util/Locale;

    return-object v0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/LocalePicker;->nn:Ljava/util/Locale;

    .line 69
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ext/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090924

    new-instance v2, Lcom/android/settings_ext/cP;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ext/cP;-><init>(Lcom/android/settings_ext/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/BaseListFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 79
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 81
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ext/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/android/settings_ext/LocalePicker;->nn:Ljava/util/Locale;

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/LocalePicker;->showDialog(I)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/LocalePicker;->finish()V

    .line 106
    invoke-static {p1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->nn:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings_ext/LocalePicker;->nn:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->gY()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 151
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ext/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 87
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    new-instance v0, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ext/bP;I)V

    iput-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/LocalePicker;->bX:Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ext/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    return-void
.end method
