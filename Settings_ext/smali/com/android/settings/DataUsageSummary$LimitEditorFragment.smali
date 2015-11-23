.class public Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2051
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static y(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    :goto_0
    return-void

    .line 2057
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2058
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings_ext/DataUsageSummary;->w(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2060
    new-instance v1, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 2061
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2062
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2063
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "limitEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2069
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ext/DataUsageSummary;

    .line 2070
    invoke-static {v5}, Lcom/android/settings_ext/DataUsageSummary;->x(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/f;

    move-result-object v3

    .line 2072
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2073
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2075
    const v1, 0x7f04003e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2076
    const v1, 0x7f100085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2078
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2079
    invoke-virtual {v3, v4}, Lcom/android/settings_ext/b/f;->f(Landroid/net/NetworkTemplate;)J

    move-result-wide v8

    .line 2080
    invoke-virtual {v3, v4}, Lcom/android/settings_ext/b/f;->g(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2082
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2083
    const-wide/16 v12, -0x1

    cmp-long v1, v8, v12

    if-eqz v1, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_0

    .line 2084
    const-wide/32 v12, 0x100000

    div-long/2addr v8, v12

    long-to-int v1, v8

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2088
    :goto_0
    const-wide/32 v8, 0x100000

    div-long v8, v10, v8

    long-to-int v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2089
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2091
    const v1, 0x7f090882

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2092
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2094
    const v7, 0x7f090880

    new-instance v0, Lcom/android/settings_ext/bt;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/bt;-><init>(Lcom/android/settings_ext/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings_ext/b/f;Landroid/net/NetworkTemplate;Lcom/android/settings_ext/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2107
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2086
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0
.end method
