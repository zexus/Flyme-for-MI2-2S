.class public Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1929
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static y(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    :goto_0
    return-void

    .line 1935
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1936
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings_ext/DataUsageSummary;->w(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1938
    new-instance v1, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 1939
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1940
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "cycleEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1946
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1947
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/DataUsageSummary;

    .line 1948
    invoke-static {v5}, Lcom/android/settings_ext/DataUsageSummary;->x(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/f;

    move-result-object v3

    .line 1950
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1951
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1953
    const v1, 0x7f040040

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1954
    const v1, 0x7f10008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 1956
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 1957
    invoke-virtual {v3, v4}, Lcom/android/settings_ext/b/f;->e(Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 1959
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1960
    const/16 v7, 0x1f

    invoke-virtual {v2, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1961
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 1962
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1964
    const v1, 0x7f09087e

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1965
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1967
    const v7, 0x7f090880

    new-instance v0, Lcom/android/settings_ext/bq;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/bq;-><init>(Lcom/android/settings_ext/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ext/b/f;Landroid/net/NetworkTemplate;Lcom/android/settings_ext/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1981
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
