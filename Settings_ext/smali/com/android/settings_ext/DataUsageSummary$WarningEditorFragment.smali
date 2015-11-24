.class public Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1988
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static y(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2001
    :goto_0
    return-void

    .line 1994
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1995
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings_ext/DataUsageSummary;->w(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1997
    new-instance v1, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 1998
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1999
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "warningEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2006
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/DataUsageSummary;

    .line 2007
    invoke-static {v5}, Lcom/android/settings_ext/DataUsageSummary;->x(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/f;

    move-result-object v3

    .line 2009
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2010
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2012
    const v1, 0x7f04003e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2013
    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2015
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2016
    invoke-virtual {v3, v4}, Lcom/android/settings_ext/b/f;->f(Landroid/net/NetworkTemplate;)J

    move-result-wide v8

    .line 2017
    invoke-virtual {v3, v4}, Lcom/android/settings_ext/b/f;->g(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2019
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2020
    const-wide/16 v12, -0x1

    cmp-long v1, v10, v12

    if-eqz v1, :cond_0

    .line 2021
    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v1, v10

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2025
    :goto_0
    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    long-to-int v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2026
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2028
    const v1, 0x7f090881

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2029
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2031
    const v7, 0x7f090880

    new-instance v0, Lcom/android/settings_ext/bv;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/bv;-><init>(Lcom/android/settings_ext/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ext/b/f;Landroid/net/NetworkTemplate;Lcom/android/settings_ext/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2044
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2023
    :cond_0
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
