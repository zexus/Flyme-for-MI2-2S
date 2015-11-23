.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private acj:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    return-void
.end method

.method private ph()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->b(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 157
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    return-void
.end method


# virtual methods
.method public W()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 110
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->W()V

    .line 111
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 74
    const v0, 0x7f040120

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0905c6

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 68
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    .line 116
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onCancel()V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x1

    const v1, 0x7f090804

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_delete_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 101
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 174
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->pZ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 176
    new-instance v1, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gh;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->pY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aO(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aO(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->finish()V

    .line 196
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aO(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->aca:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aU(Landroid/content/Context;)V

    .line 136
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->finish()V

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onPause()V

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->acj:Z

    if-nez v0, :cond_0

    .line 168
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->ph()V

    .line 150
    return-void
.end method
